<?php
require_once('Admin.class.php');
/**
 * 팝업 액션
 */
final class Popup extends Admin
{
 /**
  * [execute POST 요청시 실해되는 function]
  * @return [const] [View 클래스 파일 불러오는 상수]
  */
	public function execute (&$controller, &$request, &$use)
  {
  echo 11;    
		//return VIEW_SUCCESS;
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

      case 'show':
        # code...
        break;
    }
    return VIEW_INDEX;	
  }

}







 ?>