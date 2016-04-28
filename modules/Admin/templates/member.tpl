<?php if (empty($T['mode'])) :?>
<p><a class="btn btn-default btn-lg" href="<?=$T['current_url']?>&amp;mode=modify" role="button">수정</a></p>	
<?php endif ?>
<?php if ($T['mode']=='modify') :?>
<form class="form-horizontal" method="post">
	<div class="form-group">
		<label class="col-sm-2 col-lg-2 control-label">아이디</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_disable_hours">
		</div>
		<label class="col-sm-2 control-label">비밀번호</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_disable_hours">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">닉넴</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_begin_time">
		</div>
		<label class="col-sm-2 control-label">E-mail</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_end_time"> 
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">레벨</label>
		<div class="col-sm-4">
			<select class="form-control">
				<option value="1">일반</option>
				<option value="2">운영자</option>
				<option value="3">관리자</option>
			</select>
		</div>
		<label class="col-sm-2 control-label">휴대폰</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_top">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">메일수신</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_width">
		</div>
		<label class="col-sm-2 control-label">IP</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" value="192.168.1.1" disabled>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">가입일</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="pu_width">
		</div>
		<label class="col-sm-2 control-label">탈퇴일자</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" value="192.168.1.1" disabled>
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
			<th>아이디</th>
			<th>닉네임</th>
			<th>메일수신</th>
			<th>휴대폰</th>
			<th>레벨</th>
			<th>최종접속</th>
			<th>가입일</th>
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
		</tr>
	</tbody>
</table>
<?php endif ?>
