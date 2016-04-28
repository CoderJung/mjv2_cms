

   <div id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" class="modal fade bs-example-modal-sm" style="display: none;">
      <div class="modal-dialog modal-sm">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" data-dismiss="modal" aria-hidden="true" class="close">×</button>
               <h4 id="myModalLabel" class="modal-title">ERROR!!!</h4>
            </div>
            <div class="modal-body text-danger"><?php echo $msg ?></div>
            <div class="modal-footer">
               <button type="button" data-dismiss="modal" class="btn btn-default">닫기</button>
            </div>
         </div>
      </div>
   </div>

<script type="text/javascript">
  $('#myModal').modal('show');
   $('#myModal').on('hide.bs.modal',function(){
      <?php if($url) : ?>
      window.location=<?php echo $url ?>;
      <?php else : ?>
      history.go(-1);
      <?php endif ?>
   })
</script>