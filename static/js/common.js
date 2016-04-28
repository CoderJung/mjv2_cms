$(function(){
    
  $("#captcha").click( function(){
	  this.src = "./index.php?c=captcha&"+Math.random();
	});

	$(".pre_btn").click(function(){
    // 원래 값 얻기
    var t_area = $("textarea[name='content']").val();
    // 태그 설정
    var html = t_area + "\n[code=" + $(this).data('tag') + "]\n###\n[/code]";
    // textarea 값 넣기
    $('textarea').append(function(){
      $(this).val(html);
    });
  })

  var url = window.location;
  $('#g-btn').click(function(){
    $.post(
      url,
      { vbtn: "good",token: $(this).data('token') },
      function(data){
        if(data.state==true){
          $('#g-btn > i').toggleClass('fa-thumbs-up');
          _disabled();
        }else{
          alert(data.state);
        }
      },"json"
    );
  })

  $('#n-btn').click(function(){
    $.post(
      url,
      { vbtn: "nogood",token: $(this).data('token') },
      function(data){
        if(data.state==true){
          $('#n-btn > i').toggleClass('fa-thumbs-up');
          _disabled();
        }else{
          alert(data.state);
        }
      },"json"
    );
  })
  
  function _disabled(){
      $('#g-btn,#n-btn').addClass('disabled');
  }


  $("#cate1").change(function(){
    $("#cate2").empty();
    $.post(
      "./ajax.php",
      {'cgroup':$(this).val()},
      function(data){
        if(data){
           $("#cate2").removeAttr("disabled");
          for(var i=0;i<data.length;i++){
            $("#cate2").append("<option value="+data[i].code+">"+data[i].name+"</option>");
          }
        }else{
          alert('하위 카테고리가 없습니다.');
        }
        
      },'json'
    );
  })
     
});

