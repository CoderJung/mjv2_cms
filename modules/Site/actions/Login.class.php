<?php 

class Login extends Action
{
	function execute (&$controller, &$request, &$user)
   {
   	$userid = $request->getParameter('userid');
   	$userpw = $request->getParameter('userpw');
   	
   	if($userpw=='1234')
   	{
   		$user->setAuthenticated(TRUE);
   		$user->addPrivilege(1,'Level');

   		$controller->redirect('?mod=Admin&act=DashBoard');
   	}
   	
	}

	function getDefaultView (&$controller, &$request, &$user)
   {	
   	if(isset($_GET['logout'])||$user->getPrivileges('Level'))
   	{
   		$user->setAuthenticated(FALSE);
   		$user->clearPrivileges();
   	}

      return VIEW_INPUT;
   }

   function getRequestMethods ()
  	{
   	return REQ_POST;
  	}
}





 ?>