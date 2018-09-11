<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeAdmin_Managenment_Goods_Add.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>管理中心-增加产品</title>

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

                <li>
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
                <li class="active">
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
            <div class="col-md-6">
                        <div class="card ">
                            <div class="header">
                                <div align="right"><asp:ImageButton ID="ImageButtonReturn" runat="server" Height="23px" ImageUrl="~/assets/img/return.png" Width="24px" OnClick="ImageButtonReturn_Click" />返回</div>
                                <h4 class="title">增加产品模块
                                    </h4>
                                <p class="category">请按照按钮顺序依次进行以下操作</p>
                            </div>
                            <div class="content">
                                <div id="chartActivity" class="ct-chart">
        <div align="left" style="font-family: 黑体; color: #000000">
    
        产品编号：<asp:TextBox ID="TextBoxGoodsID" runat="server" Width="84px" ForeColor="Gray"></asp:TextBox>
        <asp:Button ID="ButtonCheck" runat="server" Text="检测" OnClick="ButtonCheck_Click" Width="50px" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" />
            &nbsp;<asp:Label ID="LabelGoodsID" runat="server" ForeColor="Red"></asp:Label>
            <br />
        <br />
        产品尺寸：
        <asp:TextBox ID="TextBoxSize1" runat="server" Width="50px" ForeColor="Gray"></asp:TextBox>
        <asp:TextBox ID="TextBoxSize2" runat="server" Width="50px" ForeColor="Gray"></asp:TextBox>
        <asp:TextBox ID="TextBoxSize3" runat="server" Width="50px" ForeColor="Gray"></asp:TextBox>
        <asp:TextBox ID="TextBoxSize4" runat="server" Width="50px" ForeColor="Gray"></asp:TextBox>
        <asp:TextBox ID="TextBoxSize5" runat="server" Width="50px" ForeColor="Gray"></asp:TextBox>
        <asp:Button ID="Buttonyijian" runat="server" Text="一键填写尺寸" OnClick="Buttonyijian_Click" Width="100px" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" />
        <br />
        <br />
        尺寸数目：<asp:DropDownList ID="DropDownListSizenum" runat="server" ForeColor="Gray">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        产品颜色：<asp:TextBox ID="TextBoxGoodsColour" runat="server" Width="76px" ForeColor="Gray"></asp:TextBox>
        &nbsp;
        产品类别：<asp:DropDownList ID="DropDownListClass" runat="server" DataSourceID="SqlDataSourceGoodsClass" DataTextField="ClassName" DataValueField="ClassID" ForeColor="Gray">
        </asp:DropDownList>
        &nbsp;
        产品名字：<asp:TextBox ID="TextBoxGoodsName" runat="server" Width="111px" ForeColor="Gray"></asp:TextBox>
        <br />
            <br />
        生产工厂：<asp:DropDownList ID="DropDownListFatory" runat="server" DataSourceID="SqlDataSourceFactory" DataTextField="FactoryName" DataValueField="FactoryID" ForeColor="Gray">
        </asp:DropDownList>
        <br />
        <br />
              成本：<asp:TextBox ID="TextBoxCost" runat="server" Width="120px" ForeColor="Gray"></asp:TextBox>
        &nbsp;售价：<asp:TextBox ID="TextBoxPrice" runat="server" Width="120px" ForeColor="Gray"></asp:TextBox>
        &nbsp;加工费：<asp:TextBox ID="TextBoxWages" runat="server" Width="120px" ForeColor="Gray"></asp:TextBox>
        <br />
        <br />
            1.<asp:Button ID="ButtonSize" runat="server" Text="添加到尺寸" OnClick="ButtonSize_Click" Width="140px" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" />
        &nbsp;
            2.<asp:Button ID="ButtonStorage" runat="server" Text="新产品添加仓库" OnClick="ButtonStorage_Click" Width="140px" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" />
        &nbsp;3.<asp:Button ID="ButtonMoney" runat="server" Text="添加到价格表" OnClick="ButtonMoney_Click" style="margin-top: 15px; " Width="140px" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" />
        &nbsp;4.<asp:Button ID="ButtonGoods" runat="server" Text="添加到产品表" OnClick="ButtonGoods_Click" Width="140px" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceFactory" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT * FROM [Table_Factory]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceGoodsClass" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT * FROM [Table_Class]"></asp:SqlDataSource>
        <br />
    
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
