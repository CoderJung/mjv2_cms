<?php if (empty($T['mode'])) :?>
<p><a class="btn btn-default btn-lg" href="<?=$T['current_url']?>&amp;mode=add" role="button">추가</a></p>	
<?php endif ?>
<?php if ($T['mode']=='add') :?>
<form class="form-horizontal" method="post">
	<div class="form-group">
		<label class="col-sm-2 col-lg-2 control-label">접속기기</label>
		<div class="col-sm-4">
			<select class="form-control" name="pu_device">
				<option value="both" selected="selected">PC와 모바일</option>
				<option value="pc">PC</option>
				<option value="mobile">모바일</option> 
			</select>
		</div>
		<label class="col-sm-2 control-label">시간</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_disable_hours">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">시작일시</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_begin_time">
		</div>
		<label class="col-sm-2 control-label">종료일시</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_end_time"> 
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">좌측 위치</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_left">
		</div>
		<label class="col-sm-2 control-label">상단 위치</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_top">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">넓이</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_width">
		</div>
		<label class="col-sm-2 control-label">높이</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_height">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">제목</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="pu_subject">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">내용</label>
		<div class="col-sm-10">
			<textarea class="form-control" rows="10" name="pu_content"></textarea>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary btn-lg">확인</button>
			<a href="<?=$T['current_url']?>" class="btn btn-default btn-lg">취소</a>
		</div>
	</div>
</form>
<?php else :?>
<table class="table table-bordered">
	<thead>
		<tr class="active">
			<th>번호</th>
			<th>제목</th>
			<th>접속기기</th>
			<th>시작일시</th>
			<th>종료일시</th>
			<th>시간</th>
			<th>Left</th>
			<th>Top</th>
			<th>Width</th>
			<th>Height</th>
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
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>	
<?php endif?>