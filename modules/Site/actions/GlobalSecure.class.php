<?php 
header('Content-Type:text/html;CharSet=utf8');

class GlobalSecure extends Action
{
	function execute (&$controller, &$request, &$user)
   {
   	
   	list($Level) = $user->getPrivileges();
   	echo '회원님 레벨: '.$Level;   	
	}
}








 ?>