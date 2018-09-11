<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录页面</title>
    <link href="/assets/css/style.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>

<div class="message warning">
<div class="inset">

	<div class="login-head">
		<h1>小型服装企业仓储信息管理系统</h1>		
	</div>

        <form id="form1" runat="server">
        <div align="center">
        <table border="0" cellpadding="0" cellspacing="0" bgcolor="" style=" width: 432px; height: 200px; font-family: 黑体;">
        
        <tr>                 
            <td colspan="2"><div align="left">
            <li><asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox><a href="#" class=" icon user"></a></div></td></li>
        </tr>  

        <tr>                         
            <td colspan="2"><div align="left">
            <li><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px"></asp:TextBox><a class="icon lock"></a></div></td></li>             
        </tr>
        <tr>
            <td colspan="2"><div align="center">

                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" Width="415px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem Value="系统管理员">系统管理员</asp:ListItem>
                                <asp:ListItem Value="仓储管理员">仓储管理员</asp:ListItem>
                                <asp:ListItem Value="任务管理员">任务管理员</asp:ListItem>
                                <asp:ListItem Value="生产线员工">生产线员工</asp:ListItem>
                            </asp:RadioButtonList></div></td>
        </tr>
               
        <tr>
            <td><div align="left" class="submit">
            <asp:Button ID="Button1" runat="server" OnClick="Button_login" Text="登  陆" Height="60px" Width="160px"/></div></td> 
            <td><div align="right" class="submit">
            <asp:Button ID="Button2" runat="server" OnClick="Button_reset" Text="重  置" Height="60px" Width="160px"/></div></td>           
        </tr>

    </table>
    </div>
    </form>
    </div>
    </div>


</body>
</html>
