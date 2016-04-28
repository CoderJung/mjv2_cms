<?php if (empty($T['mode'])) :?>
<p><a class="btn btn-default btn-lg" href="<?=$T['current_url']?>&amp;mode=add" role="button">추가</a></p>	
<?php endif ?>
<?php if ($T['mode']=='add') :?>
<form class="form-horizontal" method="post">
	<div class="form-group">
		<label class="col-sm-2 col-lg-2 control-label">게시판 아이디</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="bo_id">
		</div>
		<label class="col-sm-2 col-lg-2 control-label">게시판 유형</label>
		<div class="col-sm-2">
			<select name="bo_use_secret" id="bo_use_secret" class="form-control">
				<option selected="selected" value="0">일반</option>
				<option value="1">갤러리</option>
       	</select>
		</div>
		<label class="col-sm-2 control-label">비밀글 사용</label>
		<div class="col-sm-2">
			<select name="bo_use_secret" id="bo_use_secret" class="form-control">
				<option selected="selected" value="0">사용안함</option>
				<option value="1">체크박스</option>
				<option value="2">무조건</option>
       	</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">게시판 제목</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="bo_subject">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">분류</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" name="bo_category_list">
		</div>
		<div class="col-sm-2 checkbox">
			<label>
				<input type="checkbox" name="bo_use_category">사용하기
			</label>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">파일 개수</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_upload_count">
		</div>
		<label class="col-sm-2 control-label">파일 용량</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_upload_size">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">제목 길이</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_subject_len">
		</div>
		<label class="col-sm-2 control-label">목록 수</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_page_rows">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">새글 아이콘</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_new">
		</div>
		<label class="col-sm-2 control-label">이미지 목록 수</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_gallery_cols">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">썸네일 폭</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_gallery_width">
		</div>
		<label class="col-sm-2 control-label">썸네일 높이</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_gallery_height">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary btn-lg">확인</button>
			<a href="?mod=Admin&amp;act=Popup" class="btn btn-default btn-lg">취소</a>
		</div>
	</div>
</form>
<?php else :?>
<table class="table table-bordered">
	<thead>
		<tr class="active">
			<th>게시판ID</th>
			<th>게시판제목</th>
			<th>유형</th>
			<th>비밀글 사용</th>
			<th>관리</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>
<?php endif ?>