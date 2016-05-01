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
        # code...
        break;
    }
    // $result = $this->Select('dt_config');
    // $this->request->setAttribute('data',$result->fetch_assoc());
    return VIEW_INDEX;
  }

  public function validate(&$controller, &$request, &$user)
  {
    return TRUE;
  }

  public function registerValidators(&$validatorManager,&$controller,&$request,&$user)
  {
    $validatorManager->setRequired('bo_id',TRUE,'게시판 아이디는 필수 입니다.');
    require_once(VALIDATOR_DIR.'RegexValidator.class.php');
    $validator = new RegexValidator($controller);
    $criteria = array(
                    'pattern'         => '/^([A-Za-z0-9_]{1,20})$/',
                    'match'           => TRUE,
                    'pattern_error'   => "게시판 TABLE명은 공백없이 영문자, 숫자, _ 만 사용 가능합니다. (20자 이내)"
                );
    $validator->initialize($criteria);
    $validatorManager->register('bo_id', $validator, TRUE);

    $validatorManager->setRequired('bo_subject',TRUE,'게시판 제목은 필수 입니다.');
  }  

  public function handleError(&$controller, &$request, &$user)
  {
    return $this->getDefaultView($controller,$request,$user);
  }
}







 ?>