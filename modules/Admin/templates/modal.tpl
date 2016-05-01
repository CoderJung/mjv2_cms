<div id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" class="modal small fade">
   <div class="modal-dialog modal-sm">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" data-dismiss="modal" aria-hidden="true" class="close">×</button>
            <h3 id="myModalLabel" class="modal-title">ERROR!!!</h3>
         </div>
         <div class="modal-body text-danger"><?=$T['errors']?></div>
         <div class="modal-footer">
            <button type="button" data-dismiss="modal" class="btn btn-default">닫기</button>
         </div>
      </div>
   </div>
</div>

<script type="text/javascript">
   $('#myModal').modal('show');
</script>