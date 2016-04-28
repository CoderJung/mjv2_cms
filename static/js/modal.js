function _alert(str,url){

	var html;
	html = "<div class=\"modal fade bs-example-modal-sm\" id=\"alert\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"mySmallModalLabel\" aria-hidden=\"true\">";
	html += "<div class=\"modal-dialog modal-sm\">";
	html += "<div class=\"modal-content\">";
	html += "<div class=\"modal-header\">";
	html += "<button type=\"button\" class=\"close\" data-dismiss=\"modal\">";
	html += "</button>";
	html += "<h4 class=\"modal-title\" id=\"myModalLabel3\">오류입니다.</h4>";
	html += "</div>";
	html += "<div class=\"modal-body\">";
	html += "<h5>"+str+"</h5>";
	html += "</div>";
	html += "<div class=\"modal-footer\">";
	html += "<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">닫기</button>";
	html += "<button type=\"button\" class=\"btn btn-primary\" id=\"check\">확인</button>";
	html += "</div>";
	html += "</div>";
	html += "</div>";
	html += "</div>";
	
	$('body').addClass('modal-open');
	$('body').append('<div class="modal-backdrop fade in"></div>');
	$('body').append(html);

	$('#alert').modal('show');

	$('#check').click(function(){
		location.href=url;
	});
}