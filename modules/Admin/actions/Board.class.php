<?php
require_once('Admin.class.php');
/**
 * 게시판설정 액션
 */
final class Board extends Admin
{

  /**
  * [execute POST 요청시 실해되는 function]
  * @return [const] [View 클래스 파일 불러오는 상수]
  */
	public function execute (&$controller, &$request, &$user)
  {
    // 데이타 받기
    $data            = $request->getParameters();
    // 게시판 폴더 경로
    $board_path = DATA_DIR.'file/'.$data['bo_id'];
    // 폴더 생성 및 권한 설정
    mkdir($board_path,DIR_PERMISSION);
    chmod($board_path,DIR_PERMISSION);
    // index.html 만듬... 및 권한 설정
    $file = $board_path . '/index.html';
    file_put_contents($file,'',FILE_APPEND|LOCK_EX);
    chmod($file, FILE_PERMISSION);

    // dt_board 테이블에서 추가 되는 게시판 아이디가 있는지 ... 검색
    $table_name = "dt_board";
    $where = "bo_id = '{$data['bo_id']}'";
    $columns='count(*) as cnt';
    $result = $this->Select($table_name,$where,NULL,NULL,$columns);
    // 있으면 경고창!
    if($result->fetch_assoc()['cnt'])
    {
      $param = 'bo_id';
      $message = $data['bo_id'].'은(는) 이미 존재하는 TABLE 입니다.';
      $request->setError($param, $message);
      return $this->handleError($controller,$request,$user);
    }
    // 없으면 dt_board insert
    $this->Insert($table_name,$data);
    
    // 새 게시판 sql 불러오기
    $sql_file = BASE_DIR.'modules/'.$controller->currentModule.'/sql/sql_write.sql';
    $sql = file_get_contents($sql_file);
    // 테이블명 변경
    $source = array('/__TABLE_NAME__/', '/;/');
    $target = array(DB_PREFIX.$data['bo_id'], '');
    $sql = preg_replace($source, $target, $sql);
    
    // 쿼리 실행
    $this->Query($sql);
    
    // 해당 액셕으로 리다이렉트~ go!
		return $controller->redirect("?mod={$controller->currentModule}&act={$controller->currentAction}");
	}

	/**
	 * [getDefaultView GET 요청시 실행됨]
	 * @return [const] [View 클래스 파일 불러오는 상수]
	 */
	public function getDefaultView (&$controller, &$request, &$user)
  {
    $mode            = $request->getParameter('mode');
    $request->setAttribute('mode',$mode);
    switch ($mode) {
      case 'add':
        # code...
        break;
      
      default:
        $sort = ["bo_id DESC"];
        $columns = ["bo_id","bo_type","bo_use_secret","bo_subject"];
        $data = $this->Get_All('dt_board',$sort,NULL,NULL,$columns);
        $request->setAttribute('data',$data);
        break;
    }

    return VIEW_INDEX;
  }

  public function registerValidators(&$validatorManager,&$controller,&$request,&$user)
  {
    $validatorManager->setRequired('bo_id',TRUE,'게시판 아이디는 필수 입니다.');
    require_once(VALIDATOR_DIR.'RegexValidator.class.php');
    $validator = new RegexValidator($controller);
    $criteria = array(
                    'pattern'         => '/^([A-Za-z0-9_]{1,20})$/',
                    'match'           => TRUE,
                    'pattern_error'   => "게시판 아이디는 공백없이 영문자, 숫자, _ 만 사용 가능합니다. (20자 이내)"
                );
    $validator->initialize($criteria);
    $validatorManager->register('bo_id', $validator, TRUE);

    $validatorManager->setRequired('bo_subject',TRUE,'게시판 제목은 필수 입니다.');
  }  

  
}







 ?>