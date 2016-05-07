<?php
require_once('Admin_index.class.php');
class Board_index extends Admin_index
{
   function & execute (&$controller, &$request, &$user)
   {	
      $this->body_var['mode'] = $request->getAttribute('mode');
      
      /* 템플릿 파일은 필수라고 봐야됨... 없으면 대쉬보드 템플릿 출력함. */
      # 페이지 템플릿
      $this->body_tpl = 'board.tpl';

      # 리스트 데이터
      if(!empty($request->getAttribute('data')))
      {
         $this->body_var['data'] = $request->getAttribute('data');
      }

      # 수정 데이터      
      if(!empty($request->getAttribute('Row')))
      {
         $Row = $request->getAttribute('Row');
         # 게시판 아이디
         $this->body_var['id'] = $Row['bo_id'];
         # 게시판 비밀글 사용여부
         $selected_str = "selected='selected'";
         switch ($Row['bo_use_secret'])   
         {
            case '1': # 체크박스
               $this->body_var['use_secret1'] = $selected_str;
               break;
            case '2': # 무조건
               $this->body_var['use_secret2'] = $selected_str;
               break;
            default:  # 사용안함
               $this->body_var['use_secret0'] = $selected_str;
               break;
         }
         # 게시판 타입
         if ($Row['bo_type']==0) $this->body_var['type0'] = $selected_str; # 일반
         else $this->body_var['type1'] = $selected_str;                    # 갤러리
         # 게시판 제목
         $this->body_var['subject'] = $Row['bo_subject'];
         # 게시판 카테고리 사용여부
         if ($Row['bo_use_category']==1) $this->body_var['use_category'] = "checked";
         # 게시판 카테고리 리스트
         $this->body_var['category_list'] = $Row['bo_category_list'];
         # 게시판 업로드 파일 개수
         $this->body_var['upload_count'] = $Row['bo_upload_count'];
         # 게시판 업로드 파일 용량
         $this->body_var['upload_size'] = $Row['bo_upload_size'];
         # 게시판 제목길이
         $this->body_var['subject_len'] = $Row['bo_subject_len'];
         # 게시판 목록수
         $this->body_var['page_rows'] = $Row['bo_page_rows'];
         # 게시판 새글 아이콘
         $this->body_var['new'] = $Row['bo_new'];
         # 게시판 이미지 목록수
         $this->body_var['gallery_cols'] = $Row['bo_gallery_cols'];
         # 게시판 썸네일 폭
         $this->body_var['gallery_width'] = $Row['bo_gallery_width'];
         # 게시판 썸네일 높이
         $this->body_var['gallery_height'] = $Row['bo_gallery_height'];
      }
      
      # 혹시 더 필요한 공용 변수 추가 할땐...
      $this->common_var['page_title'] = '게시판관리';
      switch ($request->getAttribute('mode')) {
         case 'add':
            $this->common_var['sub_title'] = '[ 추가 ]';
            break;
      }
      
      parent::execute($controller, $request, $user);
      return $this->renderer;
   }
}

?>