<!DOCTYPE html>
<html lang="en">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta charset="utf-8">
   <title>Coder J Administor</title>
   <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">


   <link rel="stylesheet" href="<?php echo $T['STATIC_DIR']?>/css/bootstrap.css">
   <link rel="stylesheet" href="<?php echo $T['STATIC_DIR']?>/css/font-awesome.css">

   <script src="<?php echo $T['STATIC_DIR']?>/js/jquery-1.11.2.min.js" type="text/javascript"></script>
   <script src="<?php echo $T['STATIC_DIR']?>/js/jquery.knob.js" type="text/javascript"></script>
   <script type="text/javascript">
     $(function() {
         $(".knob").knob();
     });
   </script>
   <link rel="stylesheet" href="<?php echo $T['STATIC_DIR']?>/css/theme.css">
   <link rel="stylesheet" href="<?php echo $T['STATIC_DIR']?>/css/premium.css">
</head>
<body class="theme-2">
   <!-- Demo page code -->
   <script type="text/javascript">
      $(function() {
         var match = document.cookie.match(new RegExp('color=([^;]+)'));
         if(match) var color = match[1];
         if(color) {
            $('body').removeClass(function (index, css) {
              return (css.match (/\btheme-\S+/g) || []).join(' ')
            })
            $('body').addClass('theme-' + color);
         }

         $('[data-popover="true"]').popover({html: true});
      });
   </script>
   <style type="text/css">
      #line-chart {
         height:300px;
         width:800px;
         margin: 0px auto;
         margin-top: 1em;
      }
      .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover { 
         color: #fff;
      }
   </style>

   <script type="text/javascript">
      $(function() {
         var uls = $('.sidebar-nav > ul > *').clone();
         uls.addClass('visible-xs');
         $('#main-menu').append(uls.clone());
      });
   </script>

   <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
   <!--[if lt IE 9]>
   <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
   <![endif]-->
   <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
   <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
   <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
   <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
   <!--[if (gt IE 9)|!(IE)]><!--> 
   
  <!--<![endif]-->
   <!-- http://www.portnine.com/bootstrap-themes -->
   <div class="navbar navbar-default" role="navigation">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
         </button>
         <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span> Coder J Administor</span></a>
      </div>

      <div class="navbar-collapse collapse" style="height: 1px;">
         <ul id="main-menu" class="nav navbar-nav navbar-right">
            <li class="dropdown hidden-xs">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                 <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> Jack Smith
                 <i class="fa fa-caret-down"></i>
               </a>
               <ul class="dropdown-menu">
                  <li><a href="#">My Account</a></li>
                  <li class="divider"></li>
                  <li class="dropdown-header">Admin Panel</li>
                  <li><a tabindex="-1" href="?mod=Default&amp;act=Login">Logout</a></li>
               </ul>
            </li>
            <li class="visible-xs">
               <a href="#" data-target=".dashboard-menu" class="nav-header" data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i> Dashboard<i class="fa fa-collapse"></i>
               </a>
            </li>
            <li class="visible-xs">
               <ul class="dashboard-menu nav nav-list collapse in">
                  <li><a href="index.html"><span class="fa fa-caret-right"></span> Main</a></li>
               </ul>
            </li>
         </ul>
      </div>
   </div>
   <?=$T['LEFT']?>

   <div class="content">
      <div class="header">
         <!-- <div class="stats">
            <p class="stat"><span class="label label-info">5</span> Tickets</p>
            <p class="stat"><span class="label label-success">27</span> Tasks</p>
            <p class="stat"><span class="label label-danger">15</span> Overdue</p>
         </div> -->
         <h1 class="page-title" style="float:left;"><?=$T['page_title']?></h1>
         <ul class="breadcrumb" style="float:right;">
            <li><a href="index.html">Home</a> </li>
            <li class="active"><?=$T['action_name']?> Config</li>

         </ul>
         <div style="clear:both;"></div>
      </div>

      <div class="main-content">
         <div class="row">
            <div class="col-sm-12 col-md-12">
            <?=$T['BODY']?>
            </div>
         </div>
         <footer>
            <hr>
            <p class="pull-right">Coder J</p>
            <div style="clear:both;"></div>
         </footer>
      </div>
   </div>
   <div class="modal-backdrop fade in"></div>
   <script src="<?php echo $T['STATIC_DIR']?>/js/bootstrap.js"></script>
   <script type="text/javascript">
      $("[rel=tooltip]").tooltip();
      $(function() {
         $('.demo-cancel-click').click(function(){return false;});
      });
   </script>
</body>
</html>