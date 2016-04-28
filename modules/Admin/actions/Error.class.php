<?php
require_once('Admin.class.php');
/**
 * 환경설정 액션
 */
final class Error extends Admin
{
  /**
  * [execute POST 요청시 실해되는 function]
  * @return [const] [View 클래스 파일 불러오는 상수]
  */
	function execute (&$controller, &$request, &$user)
  {
    var_dump($request);die;
    
   
		return ;
	}

}







 ?>