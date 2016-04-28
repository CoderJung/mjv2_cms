<form class="form-horizontal" method="post">
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 col-lg-2 control-label">홈페이지 제목</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="cf_title" value="<?=$T[data][cf_title]?>">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 col-lg-2 control-label">관리자 메일주소</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="cf_admin_email" value="<?=$T[data][cf_admin_email]?>">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 col-lg-2 control-label">관리자 메일 발송이름</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="cf_admin_email_name" value="<?=$T[data][cf_admin_email_name]?>">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 col-lg-2 control-label">최근게시물 삭제</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="cf_new_del" value="<?=$T[data][cf_new_del]?>"> 
		</div>
		<div style="padding-top:10px;">일</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 col-lg-2 control-label">접근차단 IP</label>
		<div class="col-sm-9">
			<textarea class="form-control" name="cf_intercept_ip"><?=$T[data][cf_intercept_ip]?></textarea>
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 col-lg-2 control-label">이미지 업로드 확장자</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" name="cf_image_extension" value="<?=$T[data][cf_image_extension]?>">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 col-lg-2 control-label">플래쉬 업로드 확장자</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" name="cf_flash_extension" value="<?=$T[data][cf_flash_extension]?>">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 col-lg-2 control-label">동영상 업로드 확장자</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" name="cf_movie_extension" value="<?=$T[data][cf_movie_extension]?>">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 col-lg-2 control-label">기타 업로드 확장자</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" name="cf_file_extension" value="<?=$T[data][cf_file_extension]?>">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-3 col-lg-2 control-label">단어 필터링</label>
		<div class="col-sm-9">
			<textarea class="form-control" rows="10" name="cf_filter"><?=$T[data][cf_filter]?></textarea>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-3 col-lg-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary btn-lg">확인</button>
		</div>
	</div>
</form>