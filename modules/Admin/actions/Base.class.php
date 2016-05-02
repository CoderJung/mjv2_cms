<?php
require_once('Admin.class.php');
/**
 * 환경설정 액션
 */
final class Base extends Admin
{
  /**
  * [execute POST 요청시 실해되는 function]
  * @return [const] [View 클래스 파일 불러오는 상수]
  */
	public function execute (&$controller, &$request, &$user)
  {
    $data = $request->getParameters();

    $this->Update('dt_config',$data);
   
		return $controller->redirect("?mod={$controller->currentModule}&act={$controller->currentAction}");
	}

	/**
	 * [getDefaultView GET 요청시 실행됨]
	 * @return [const] [View 클래스 파일 불러오는 상수]
	 */
	public function getDefaultView (&$controller, &$request, &$user)
  {
    
    $result = $this->Select('dt_config');
    $request->setAttribute('data',$result->fetch_assoc());
    return VIEW_INDEX;
  }
  
  public function registerValidators(&$validatorManager,&$controller,&$request,&$user)
  {
    $validatorManager->setRequired('cf_title',TRUE,'홈페이지 제목은 필수 입니다.');
    $validatorManager->setRequired('cf_admin_email',TRUE,'관리자 메일주소는 필수 입니다.');
  }  
}







 ?>