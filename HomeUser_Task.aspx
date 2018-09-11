<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeUser_Task.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>用户-今日任务</title>

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
                <li class="active">
                    <a href="HomeUser_Task.aspx">
                        <i class="pe-7s-note2"></i>
                        <p>任务</p>
                    </a>
                </li>
                <li>
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
                    <h4>今日任务</h4>
                    <div aligin="center">
                        <asp:GridView ID="GridViewUserTask" runat="server" AutoGenerateColumns="False" DataKeyNames="TableID" DataSourceID="SqlDataSourceUserTask" Width="500px">
                            <Columns>
                                <asp:BoundField DataField="TableID" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="TableID" />
                                <asp:BoundField DataField="GoodsID" HeaderText="产品编号" SortExpression="GoodsID" />
                                <asp:BoundField DataField="GoodsColour" HeaderText="产品颜色" SortExpression="GoodsColour" />
                                <asp:BoundField DataField="GoodsSize" HeaderText="产品尺寸" SortExpression="GoodsSize" />
                                <asp:BoundField DataField="Num" HeaderText="数量" SortExpression="Num" />
                                <asp:BoundField DataField="UserID" HeaderText="工号" SortExpression="UserID" />
                                <asp:BoundField DataField="TaskDate" HeaderText="日期" SortExpression="TaskDate" />
                                <asp:BoundField DataField="Wages" HeaderText="工资" SortExpression="Wages" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceUserTask" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT * FROM [Table_Task] WHERE (([UserID] = @UserID) AND ([TaskDate] = @TaskDate))">
                            <SelectParameters>
                                <asp:SessionParameter Name="UserID" SessionField="UserID" Type="String" />
                                <asp:SessionParameter DbType="Date" Name="TaskDate" SessionField="Date" />
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
