<?php if (empty($T['mode'])) :?>
<p>
	<a class="btn btn-default btn-lg" href="<?=$T['current_url']?>&amp;mode=add" role="button">생성</a>
</p>	
<?php endif ?>
<?php if ($T['mode']=='add' || $T['mode']=='modify') :?>
<form class="form-horizontal" method="post">
	<div class="form-group">
		<label class="col-sm-2 col-lg-2 control-label">게시판 아이디</label>
		<div class="col-sm-4">
		<?php if (!empty($T['id'])) :?>
			<input type="text" class="form-control" name="bo_id" value="<?=$T['id']?>" readonly>
		<?php else :?>
			<input type="text" class="form-control" name="bo_id" maxlength="20">
		<?php endif?>
		</div>
		<div class="col-sm-6">
			<small class="text-muted">영문자, 숫자, _ 만 가능 (공백없이 20자 이내)</small>			
		</div>	
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">비밀글 사용</label>
		<div class="col-sm-4">
			<select name="bo_use_secret" id="bo_use_secret" class="form-control">
				<option <?=$T['use_secret0']?> value="0">사용안함</option>
				<option <?=$T['use_secret1']?> value="1">체크박스</option>
				<option <?=$T['use_secret2']?> value="2">무조건</option>
       		</select>
		</div>
		<div class="col-sm-6">
			<small class="text-muted">"체크박스"는 글작성시 비밀글 체크가 가능합니다. "무조건"은 작성되는 모든글을 비밀글로 작성합니다. (관리자는 체크박스로 출력합니다.)</small> 
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 col-lg-2 control-label">게시판 유형</label>
		<div class="col-sm-4">
			<select name="bo_type" id="bo_use_secret" class="form-control">
				<option <?=$T['type0']?> value="0">일반</option>
				<option <?=$T['type1']?> value="1">갤러리</option>
       		</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">게시판 제목</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" name="bo_subject" value="<?=$T['subject']?>">
		</div>
	</div>
	<div class="form-group">		
		<label class="col-sm-2 control-label">분류</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" name="bo_category_list" value="<?=$T['category_list']?>">
		</div>
		<div class="col-sm-2 checkbox">
			<label>
				<input type="checkbox" name="bo_use_category" value="1" <?=$T['use_category']?>>사용하기
			</label>
		</div>
		<div class="col-sm-offset-2 col-sm-10">
			<small class="text-muted">분류와 분류 사이는 | 로 구분하세요. (예: 질문|답변) 첫자로 #은 입력하지 마세요. (예: #질문|#답변 [X])</small>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">파일 개수</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_upload_count" maxlength="2" value="<?= !empty($T['upload_count']) ? $T['upload_count'] : '2' ?>">
		</div>
		<div class="col-sm-6">
			<small class="text-muted">게시물 한건당 업로드 할 수 있는 파일의 최대 개수 (0 은 파일첨부 사용하지 않음)</small>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">파일 용량</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_upload_size" maxlength="10" value="<?= !empty($T['upload_size']) ? $T['upload_size'] : '1048576' ?>">
		</div>
		<div class="col-sm-6">
			<small class="text-muted">최대 64M 이하 업로드 가능, 1 MB = 1,048,576 bytes</small>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">제목 길이</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_subject_len" maxlength="2" value="<?= !empty($T['subject_len']) ? $T['subject_len'] : '60' ?>">
		</div>
		<div class="col-sm-6">
			<small class="text-muted">목록에서의 제목 글자수. 잘리는 글은 … 로 표시</small>
		</div>	
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">목록 수</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_page_rows" maxlength="2" value="<?= !empty($T['page_rows']) ? $T['page_rows'] : '15' ?>">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">새글 아이콘</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_new" maxlength="2" value="<?= !empty($T['new']) ? $T['new'] : '24' ?>">
		</div>
		<div class="col-sm-6">
			<small class="text-muted">글 입력후 new 이미지를 출력하는 시간. 0을 입력하시면 아이콘을 출력하지 않습니다.</small>
		</div>	
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">이미지 목록 수</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_gallery_cols" maxlength="2" value="<?= !empty($T['gallery_cols']) ? $T['gallery_cols'] : '4' ?>">
		</div>
		<div class="col-sm-6">
			<small class="text-muted">갤러리 형식의 게시판 목록에서 이미지를 한줄에 몇장씩 보여 줄 것인지를 설정하는 값</small>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">썸네일 폭</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_gallery_width" maxlength="3" value="<?= !empty($T['gallery_width']) ? $T['gallery_width'] : '174' ?>">
		</div>
		<div class="col-sm-6">
			<small class="text-muted">갤러리 형식의 게시판 목록에서 썸네일 이미지의 폭을 설정하는 값</small>
		</div>
	</div>
	<div class="form-group">		
		<label class="col-sm-2 control-label">썸네일 높이</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="bo_gallery_height" maxlength="3" value="<?= !empty($T['gallery_height']) ? $T['gallery_height'] : '124' ?>">
		</div>
		<div class="col-sm-6">
			<small class="text-muted">갤러리 형식의 게시판 목록에서 썸네일 이미지의 높이를 설정하는 값</small>
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
	<colgroup>
		<col width="100">
		<col width="">
		<col width="60">
		<col width="75">
		<col width="115">
	</colgroup>
	<thead>
		<tr class="active">
			<th>게시판ID</th>
			<th>게시판제목</th>
			<th>유형</th>
			<th>비밀글</th>
			<th>관리</th>
		</tr>
	</thead>
	<tbody>
	<?php foreach ($T['data'] as $v) : ?>
		<tr>
			<td><?=$v['bo_id']?></td>
			<td><?=$v['bo_subject']?></td>
			<td>
				<?php if ($v['bo_type']==0) : ?>
					일반
				<?php else :?>
					갤러리
				<?php endif?>
			</td>
			<td>
				<?php if ($v['bo_use_secret']==0) : ?>
					사용안함
				<?php elseif ($v['bo_use_secret']==1) :?>
					체크박스
				<?php else :?>
					무조건
				<?php endif?>
			</td>
			<td>
				<div class="btn-group btn-group-xs" role="group">
					<a href="<?=$T['current_url']?>&amp;mode=modify&amp;id=<?=$v['bo_id']?>" class="btn btn-info"><i class="fa fa-pencil"></i> 수정</a>
					<a onclick="_del(this.id)" class="btn btn-danger" id="<?=$v['bo_id']?>"><i class="fa fa-trash-o"></i> 삭제</a>		
				</div>
			</td>
		</tr>
	<?php endforeach ?>
	</tbody>
</table>
<div id="myConfim" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" class="modal small fade">
   <div class="modal-dialog modal-sm">
      <div class="modal-content">
         <div class="modal-body text-danger">정말로 삭제 하시겠습니까?</div>
         <div class="modal-footer">
         	<button type="button" id="delyes" class="btn btn-danger">넵!</button>
            <button type="button" data-dismiss="modal" class="btn btn-default">닫기</button>
         </div>
      </div>
   </div>
</div>

<script type="text/javascript">
function _del(id){
	$('#myConfim').modal('show');
	$('#delyes').click(function(){
		var url = "<?=$T['current_url']?>";
		$.get(url,{mode:"delete",bo_id:id});
		$('#myConfim').modal('hide');
	})
}


</script>

<?php endif ?>
