<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeUser.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>用户主页</title>

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
        .auto-style1 {
            width: 324px;
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

                <li class="active">
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
                   <h4>个人信息</h4>
        <table border="0"   cellspacing="0" style="width: 508px; font-family: 黑体; color: #000000;" align="center">


            <tr><td height="35" align="right">姓名：</td>
                <td height="35" align="center" class="auto-style1" >
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            </tr>
            
            <tr><td height="35" align="right">工号：</td>
                <td height="35" align="center" class="auto-style1" >
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            </tr>

            <tr>
                <td height="35" align="right">权限：</td>
                <td height="35" align="center" class="auto-style1" >
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
            </tr>

            <tr>
                <td height="35" align="right">手机：</td>
                <td height="35" align="center" class="auto-style1" >
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            </tr>

            <tr>
                <td height="35" align="right">性别：</td>
                <td height="35" align="center" class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
            </tr>

            <tr>
                <td height="35" align="right">注册时间：</td>
                <td height="35" align="center" class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
            </tr>

            <tr>
                <td height="35" align="right">修改密码：</td>
                <td height="35" align="center" class="auto-style1">
                    <asp:TextBox ID="newpsw" runat="server" OnTextChanged="TextBox_TextChanged" TextMode="Password" Width="220px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认更改" Width="68px" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                    </td>
            </tr>


  </table>
                </div>



            </div>
        </div>



    </div>
    </form>
</body>
</html>
