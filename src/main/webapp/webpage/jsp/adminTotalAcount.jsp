<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

    <meta charset="utf-8" />
    <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

    <title>ShoesBox后台登陆</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <meta content="" name="description" />

    <meta content="" name="author" />

    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <link href="../webpage/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <link href="../webpage/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

    <link href="../webpage/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="../webpage/css/style-metro.css" rel="stylesheet" type="text/css"/>

    <link href="../webpage/css/style.css" rel="stylesheet" type="text/css"/>

    <link href="../webpage/css/style-responsive.css" rel="stylesheet" type="text/css"/>

    <link href="../webpage/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

    <link href="../webpage/css/uniform.default.css" rel="stylesheet" type="text/css"/>

    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL STYLES -->

    <link rel="stylesheet" type="text/css" href="../webpage/css/select2_metro.css" />

    <link rel="stylesheet" href="../webpage/css/DT_bootstrap.css" />

    <!-- END PAGE LEVEL STYLES -->

    <link rel="shortcut icon" href="../webpage/image/favicon.ico" />

</head>



<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

<!-- BEGIN HEADER -->
<!-- BEGIN HEADER -->

<div class="header navbar navbar-inverse navbar-fixed-top">

    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="header navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner ">

            <div class="container-fluid">
                <!-- BEGIN LOGO -->

                <a class="brand" href="index.html" style="color:white">

                    <strong>运动鞋销售系统后台</strong>

                </a>

                <!-- END LOGO -->
                <!-- BEGIN TOP NAVIGATION MENU -->

                <ul class="nav pull-right">
                    <li class="dropdown user">

                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                            <span class="username"><strong>Bob Nilson</strong></span>

                            <i class="icon-angle-down"></i>

                        </a>

                        <ul class="dropdown-menu">

                            <li><a href="#"><i class="icon-tasks"></i>查看营业额</a></li>

                            <li class="divider"></li>

                            <li><a href="login.html"><i class="icon-key"></i>退出</a></li>

                        </ul>

                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="page-container">
<div class="page-sidebar nav-collapse collapse">
    <ul class="page-sidebar-menu">

        <li>

            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

            <div class="sidebar-toggler hidden-phone"></div>

            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

        </li>

        <li class="start active ">

            <a href="index.html">

                <i class="icon-home"></i>

                <span class="title"></span>
                首页
                <span class="selected"></span>

            </a>

        </li>
        <li class="">

            <a href="javascript:;">

                <i class="icon-th"></i>

                <span class="title">货物管理</span>

                <span class="arrow "></span>

            </a>

            <ul class="sub-menu">

                <li >

                    <a href="layout_horizontal_sidebar_menu.html">
                        <i class="icon-plus"></i>

                        货物入库记录</a>

                </li>

            </ul>

        </li>
        <li class="last ">

            <a href="charts.html">

                <i class="icon-gift"></i>

                <span class="title">盈利情况总览</span>

            </a>

        </li>
    </ul>
</div>
<div class="page-content">
    <div class="container-fluid" >
        <div class="row-fluid">

            <div class="span12">
                <h3 class="page-title" style="color:orange;">

                    <strong>ShoesBox运动鞋管理系统 <small>-Nothing is impossible</small></strong>

                </h3>
                <ul class="breadcrumb" >

                    <li>

                        <i class="icon-home"></i>

                        <a href="index.html"><strong>首页</strong></a>

                        <i class="icon-angle-right"></i>

                    </li>

                    <li>
                        <i class="icon-pencil"></i>
                        <a href="#"><strong>货物入库记录</strong></a></li>

                </ul>
            </div>
            <div class="row-fluid">

                <div class="span12">

                    <!-- BEGIN EXAMPLE TABLE PORTLET-->

                    <div class="portlet box blue">

                    <div class="portlet-title">

                        <div class="caption"><i class="icon-globe"></i>盈利情况总览</div>

                        <div class="actions">

                            <div class="btn-group">

                                <a class="btn" href="#" data-toggle="dropdown">

                                    列名

                                    <i class="icon-angle-down"></i>

                                </a>

                                <div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">

                                    <label><input type="checkbox" checked data-column="0">ID</label>

                                    <label><input type="checkbox" checked data-column="1">已售物品名称</label>

                                    <label><input type="checkbox" checked data-column="2">价格</label>


                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="portlet-body">

                    <table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">

                    <thead>

                    <tr>

                        <th>ID</th>

                        <th>已售物品名称</th>

                        <th class="hidden-480">价格</th>

                    </tr>

                    </thead>

                    <tbody>

                    <tr>

                        <td>1</td>

                        <td>NIKE篮球鞋

                        </td>

                        <td class="hidden-480"><i class="icon-jpy"></i>1000.00 </td>

                    </tr>

                    </tbody>
                    <tfoot>
                    <tr>

                        <td><font color="red"><strong>总营业额：</strong></font></td>

                        <td>

                        </td>

                        <td class="hidden-480"><font color="red"><i class="icon-jpy"></i>1000.00</font></td>

                    </tr>
                    </tfoot>
                    </table>


                    </div>

                    </div>

                    <!-- END EXAMPLE TABLE PORTLET-->

                </div>

            </div>
        </div>
    </div>
</div>



</div>

<!-- END PAGE CONTAINER-->

</div>
</div>
<div class="footer" style="height:50px;">

    <div class="footer-inner">

        2013 &copy; ShoesBox For Sports Emarket.

    </div>

    <div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

    </div>

</div>

<!-- END FOOTER -->

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

<!-- BEGIN CORE PLUGINS -->

<script src="../webpage/js/jquery-1.10.1.min.js" type="text/javascript"></script>

<script src="../webpage/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

<script src="../webpage/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

<script src="../webpage/js/bootstrap.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>

<script src="../webpage/js/excanvas.min.js"></script>

<script src="../webpage/js/respond.min.js"></script>

<![endif]-->

<script src="../webpage/js/jquery.slimscroll.min.js" type="text/javascript"></script>

<script src="../webpage/js/jquery.blockui.min.js" type="text/javascript"></script>

<script src="../webpage/js/jquery.cookie.min.js" type="text/javascript"></script>

<script src="../webpage/js/jquery.uniform.min.js" type="text/javascript" ></script>

<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->

<script type="text/javascript" src="../webpage/js/select2.min.js"></script>

<script type="text/javascript" src="../webpage/js/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="../webpage/js/DT_bootstrap.js"></script>

<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="../webpage/js/app.js"></script>

<script src="../webpage/js/table-advanced.js"></script>


<script>

    jQuery(document).ready(function() {

        App.init();

        TableAdvanced.init();

    });

</script>

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->
</html>

