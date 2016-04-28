<?php

class Login_input extends View
{
	function & execute (&$controller, &$request, &$user)
   {
   	$renderer = new Renderer($controller, $request, $user);
		$template = $request->getAttribute('StaticTemplate');
		$renderer->setTemplate('signin.tpl');
		return $renderer;
   }
}

?>