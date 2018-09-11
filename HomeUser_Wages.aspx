<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeUser_Wages.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>用户-工资图表</title>

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
    <div class="sidebar" data-color="purple" data-image="../images/login_bg.jpg">

<!--导航栏部分-->
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                    导航栏
                </a>
            </div>

            <ul class="nav">
            <li>
                    <a href="HomeUser.aspx">
                        <i class="pe-7s-user"></i>
                        <p>主页</p>
                    </a>
                </li>
                <li>
                    <a href="HomeUser_Task.aspx">
                        <i class="pe-7s-note2"></i>
                        <p>任务</p>
                    </a>
                </li>
                <li class="active">
                    <a href="HomeUser_Wages.aspx">
                        <i class="pe-7s-science"></i>
                        <p>工资</p>
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
                    <h4>工资图表</h4>
                    <div aligin="center">

                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourceWages" Width="1000px">
                            <Series>
                                <asp:Series ChartType="Line" Name="Series1" XValueMember="TaskDate" YValueMembers="Wages">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                        <asp:SqlDataSource ID="SqlDataSourceWages" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT [TaskDate], [Wages] FROM [Table_TaskComplete] WHERE ([UserID] = @UserID)">
                            <SelectParameters>
                                <asp:SessionParameter Name="UserID" SessionField="UserID" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div>
                </div>

            </div>
        </div>



    </div>
    </form>
</body>
</html>
