<?php
require_once('Admin.class.php');
/**
 * 대쉬보드 액션
 */
class DashBoard extends Admin
{
  /**
  * [execute POST 요청시 실헹되는 function]
  * @return [const] [View 클래스 파일 불러오는 상수]
  */
	public function execute (&$controller, &$request, &$user)
  {
    print_r($this->request->getParameters());die;
		//return VIEW_SUCCESS;
	}

	/**
	 * [getDefaultView GET 요청시 실행됨]
	 * @return [const] [View 클래스 파일 불러오는 상수]
	 */
	public function getDefaultView (&$controller, &$request, &$user)
  { 
    
    
    return VIEW_INDEX;
  }
}