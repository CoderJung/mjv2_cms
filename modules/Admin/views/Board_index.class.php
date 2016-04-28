<?php
require_once('Admin_index.class.php');
class Board_index extends Admin_index
{
   function & execute (&$controller, &$request, &$user)
   {	
   	  /* 데이터 하고 템플릿 파일은 필수라고 봐야됨. */
      // body 데이터
      $this->body_var['mode'] = $request->getAttribute('mode');
      // body 템플릿 파일
      $this->body_tpl = 'board.tpl';
      
      // 혹시 더 필요한 공용 변수 추가 할땐...
      $this->common_var['page_title'] = '게시판관리';

      parent::execute($controller, $request, $user);
      return $this->renderer;
   }
}

?>