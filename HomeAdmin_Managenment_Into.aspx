<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeAdmin_Managenment_Into.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>管理中心-仓储操作</title>

    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

    <style type="text/css">
        .table-full-width {
            width: 214px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
    <div class="sidebar" data-color="blue" data-image="../images/login_bg.jpg">

<!--导航栏部分-->
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                    导航栏
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="HomeAdmin.aspx">
                        <i class="pe-7s-graph"></i>
                        <p>主页</p>
                    </a>
                </li>

                <li  class="active">
                    <a href="HomeAdmin_Managenment_Into.aspx">
                        <i class="pe-7s-bell"></i>
                        <p>进入仓储操作模式</p>
                    </a>
                </li>

                <li>
                    <a href="HomeAdmin_Managenment_UserandCustomer.aspx">
                        <i class="pe-7s-user"></i>
                        <p>用户和客户管理</p>
                    </a>
                </li>
                <li>
                    <a href="HomeAdmin_Managenment_Order.aspx">
                        <i class="pe-7s-note2"></i>
                        <p>订单信息管理</p>
                    </a>
                </li>
                <li>
                    <a href="HomeAdmin_Managenment_Storage.aspx">
                        <i class="pe-7s-news-paper"></i>
                        <p>库存信息管理</p>
                    </a>
                </li>
                <li>
                    <a href="HomeAdmin_Managenment_Goods.aspx">
                        <i class="pe-7s-science"></i>
                        <p>产品信息管理</p>
                    </a>
                </li>
                <li>
                    <a href="HomeAdmin_Managenment_Task.aspx">
                        <i class="pe-7s-map-marker"></i>
                        <p>任务清单管理</p>
                    </a>
                </li>

            </ul>
    	</div>
    </div>

<!--主体顶端部分-->
     <div class="main-panel">
<!--主体顶端部分-->
     <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">小型服装企业仓储信息管理系统</a>
                </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="">
                               当前日期:<asp:Label ID="LabelDate" runat="server" ForeColor="Black"></asp:Label>
                            </a>
                        </li>
                        <li>
                           <a href="">
                               当前账号:<asp:Label ID="LabelUserID" runat="server" ForeColor="Black"></asp:Label>
                            </a>
                        </li>
                        <li>
                            <a href="Login.aspx">
                                退出登录
                            </a>
                        </li>
                    </ul>
                </div>
        </nav>
        

<!--主体详细部分--> 
<div class="content">
            <div class="container-fluid">

            <div class="row">

                    <div class="col-md-4">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">进入任务发布模块</h4>
                                <p class="category">点击下方图片进入增添任务的模块</p>
                            </div>
                            <div class="content">
                                
                                <div id="chartPreferences1" class="ct-chart ct-perfect-fourth" align="center">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/assets/img/task.png" Height="150px" Width="150px" OnClick="ImageButton1_Click" />
                                </div>

                            </div>
                            <div class="footer">
                                    <div class="legend">
                                        &nbsp;</div>
                                    <hr/>
                                    <div class="stats">
                                        &nbsp;</div>
                                </div>
                        </div>
                    </div>

                <div class="col-md-4">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">进入产品入库模块</h4>
                                <p class="category">点击下方图片进入增加库存的模块</p>
                            </div>
                            <div class="content">
                                <div id="chartPreferences2" class="ct-chart ct-perfect-fourth" align="center">
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/assets/img/ruku.png" Height="150px" Width="150px" OnClick="ImageButton2_Click" />
                                </div>

                            </div>
                           <div class="footer">
                                    <div class="legend">
                                        &nbsp;</div>
                                    <hr/>
                                    <div class="stats">
                                        &nbsp;
                                    </div>
                                </div>
                        </div>
                    </div>

                <div class="col-md-4">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">进入订单销售模块</h4>
                                <p class="category">点击下方图片进入减少库存的模块</p>
                            </div>
                            <div class="content">
                                <div id="chartPreferences3" class="ct-chart ct-perfect-fourth" align="center">
                                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/assets/img/chuku.png" Height="150px" Width="150px" OnClick="ImageButton3_Click" />
                                </div>

                            </div>
                            <div class="footer">
                                    <div class="legend">
                                        &nbsp;</div>
                                    <hr/>
                                    <div class="stats">
                                        &nbsp;</div>
                                </div>
                        </div>
                    </div>
                   
        </div>
        </div>
         </div>
         </div>



    </div>
    </form>
</body>
</html>
