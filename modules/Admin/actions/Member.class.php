<?php
require_once('Admin.class.php');
/**
 * 환경설정 액션
 */
class Member extends Admin
{
  /**
  * [execute POST 요청시 실해되는 function]
  * @return [const] [View 클래스 파일 불러오는 상수]
  */
	function execute (&$controller, &$request, &$user)
  {
      
		return VIEW_INDEX;
	}

	/**
	 * [getDefaultView GET 요청시 실행됨]
	 * @return [const] [View 클래스 파일 불러오는 상수]
	 */
	function getDefaultView (&$controller, &$request, &$user)
  {
    
    $mode            = $request->getParameter('mode');

    $request->setAttribute('mode',$mode);
    switch ($mode) {
      case 'modify':
        # code...
        break;
    }
    return VIEW_INDEX;
  }

  function update($data)
  {
  
  }
}
 ?>