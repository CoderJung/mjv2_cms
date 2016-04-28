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
	function execute (&$controller, &$request, &$user)
  {
 
    $data['title']            = $request->getParameter('cf_title');
    $data['admin_email']      = $request->getParameter('cf_admin_email');
    $data['admin_email_name'] = $request->getParameter('cf_admin_email_name');
    $data['new_del']          = $request->getParameter('cf_new_del');
    $data['intercept_ip']     = $request->getParameter('cf_intercept_ip');
    $data['image_extension']  = $request->getParameter('cf_image_extension');
    $data['flash_extension']  = $request->getParameter('cf_flash_extension');
    $data['movie_extension']  = $request->getParameter('cf_movie_extension');
    $data['file_extension']   = $request->getParameter('cf_file_extension');
    $data['filter']           = $request->getParameter('cf_filter');
    
    $this->update($data);
   
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

  function registerValidators (&$validatorManager, &$controller, &$request, &$user)
  {
    //$validatorManager->setRequired('cf_title', TRUE, '필수 입니다.');
  }

  // function handleError (&$controller, &$request, &$user)
  // { 
  //   return VIEW_ALERT;
  // }

  private function update($data)
  {
    $sql = "UPDATE dt_config
            SET cf_title = '{$data['title']}',
                cf_admin_email = '{$data['admin_email']}',
                cf_admin_email_name = '{$data['admin_email_name']}',
                cf_new_del = '{$data['new_del']}',
                cf_intercept_ip = '{$data['intercept_ip']}',
                cf_image_extension = '{$data['image_extension']}',
                cf_flash_extension = '{$data['flash_extension']}',
                cf_movie_extension = '{$data['movie_extension']}',
                cf_file_extension  = '{$data['file_extension']}',
                cf_filter = '{$data['filter']}'
            ";    
    $this->Query($sql);
  }
}







 ?>