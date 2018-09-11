<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeAdmin_Managenment_UserandCustomer.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>管理中心—用户和客户</title>

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
            width: 200px;
        }
        .auto-style1 {
            width: 89px;
        }
        .auto-style2 {
            width: 89px;
            height: 30px;
        }
        .auto-style3 {
            height: 30px;
            width: 228px;
        }
        .auto-style4 {
            width: 89px;
            height: 42px;
        }
        .auto-style5 {
            display: block;
            width: 228px;
            height: 42px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #565656;
            border-radius: 4px;
            -webkit-box-shadow: none;
            box-shadow: none;
            -webkit-transition: all 300ms linear;
            -o-transition: all 300ms linear;
            transition: all 300ms linear;
            -moz-transition: all 300ms linear;
            -ms-transition: all 300ms linear;
            border: 1px solid #E3E3E3;
            padding: 8px 12px;
            background-color: #FFFFFF;
            background-image: none;
        }
        .auto-style6 {
            display: block;
            width: 228px;
            height: 40px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #565656;
            border-radius: 4px;
            -webkit-box-shadow: none;
            box-shadow: none;
            -webkit-transition: all 300ms linear;
            -o-transition: all 300ms linear;
            transition: all 300ms linear;
            -moz-transition: all 300ms linear;
            -ms-transition: all 300ms linear;
            border: 1px solid #E3E3E3;
            padding: 8px 12px;
            background-color: #FFFFFF;
            background-image: none;
        }
        .auto-style7 {
            width: 228px;
        }
        .auto-style8 {
            width: 89px;
            height: 40px;
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
                <li class="active">
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
                                <h4 class="title">注册企业用户</h4>
                                <p class="category">用于注册企业用户账号</p>
                            </div>
                            <div class="content">
                                <div id="chartPreferences" class="ct-chart ct-perfect-fourth" style="font-family: 黑体; color: #000000">
                                    <table   align="center" border="0" cellspacing="0" cellpadding="0" style="height: 268px; width: 294px; color: #000000;">
        
        <tr>
            <td align="right" class="auto-style8">工 号：<br />
            </td>
            <td class="auto-style6"><asp:TextBox ID="UserId" runat="server" Width="200px" OnTextChanged="UserID_TextChanged" BorderStyle="None" ForeColor="Gray"></asp:TextBox>
                <br />
            </td>
        </tr>
  
        <tr>
            <td align="right" class="auto-style4">密 码：<br />
            </td>
            <td class="auto-style5"><asp:TextBox ID="UserPassword" runat="server" TextMode="Password" Width="200px" OnTextChanged="UserPassword_TextChanged" BorderStyle="None" ForeColor="Gray"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" ForeColor="Red" runat="server" ErrorMessage="6位以上包含大小写字母和数字" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z\d]{6,}$" ControlToValidate="UserPassword"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td align="right" class="auto-style2">权 限：</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White">
                    <asp:ListItem Value="1">系统管理员</asp:ListItem>
                    <asp:ListItem Value="2">仓储管理员</asp:ListItem>
                    <asp:ListItem Value="3">任务管理员</asp:ListItem>
                    <asp:ListItem Value="4">生产线员工</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td align="right" class="auto-style1">姓 名：<br />
            </td>
            <td height="30" class="auto-style6"><asp:TextBox ID="UserName" runat="server" Width="200px" OnTextChanged="UserName_TextChanged" MaxLength="6" BorderStyle="None" ForeColor="Gray"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorName" ForeColor="Red" runat="server" ErrorMessage="只能输入汉字和字母" ValidationExpression="^[\u4e00-\u9fa5|a-zA-Z]+$" ControlToValidate="UserName"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td align="right" class="auto-style1">性 别：</td>
            <td height="30" class="auto-style7">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Value="男">女</asp:ListItem>
                    <asp:ListItem>男</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td align="right" class="auto-style1">手 机：<br />
            </td>
            <td height="30" class ="auto-style6"><asp:TextBox ID="UserPhone" runat="server" Width="200px" OnTextChanged="UserPhone_TextChanged" BorderStyle="None" ForeColor="Gray"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidatoPhone" ForeColor="Red" runat="server" ErrorMessage="请输入11位手机号" ValidationExpression="1\d{10}" ControlToValidate="UserPhone"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td height="30" colspan="2" align="left">
                <asp:Button ID="Button1" runat="server" OnClick="Button_submit" Text="提  交" BackColor="#5BC0DE" ForeColor="White" Height="24px" Width="81px" BorderStyle="None" Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelRegister" runat="server" ForeColor="Red"></asp:Label>
                </td>
        </tr>

    </table>
                                </div>

                            </div>
                        </div>
                    </div>
            

                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">企业用户信息</h4>
                            <li><a href="HomeAdmin_Managenment_UserandCustomer.aspx">刷新用户信息表</a></li>
                            </div>
                            <div class="content">
                                <div id="chartHours" class="ct-chart">
                                    <asp:GridView ID="GridViewUserAdminInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="User_id" DataSourceID="SqlDataSourceUserAdminInfo" PageSize="6" Width="650px" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="User_id" HeaderText="账号" ReadOnly="True" SortExpression="User_id" />
                                            <asp:BoundField DataField="User_name" HeaderText="用户名" SortExpression="User_name" />
                                            <asp:BoundField DataField="User_password" HeaderText="密码" SortExpression="User_password" />
                                            <asp:CommandField HeaderText="操作选项" ShowDeleteButton="True" ShowEditButton="True" />
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceUserAdminInfo" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:130806117 %>" DeleteCommand="DELETE FROM [Table_User] WHERE [User_id] = @original_User_id AND (([User_name] = @original_User_name) OR ([User_name] IS NULL AND @original_User_name IS NULL)) AND [User_password] = @original_User_password" InsertCommand="INSERT INTO [Table_User] ([User_id], [User_name], [User_password]) VALUES (@User_id, @User_name, @User_password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [User_id], [User_name], [User_password] FROM [Table_User] ORDER BY [User_type]" UpdateCommand="UPDATE [Table_User] SET [User_name] = @User_name, [User_password] = @User_password WHERE [User_id] = @original_User_id AND (([User_name] = @original_User_name) OR ([User_name] IS NULL AND @original_User_name IS NULL)) AND [User_password] = @original_User_password">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_User_id" Type="String" />
                                            <asp:Parameter Name="original_User_name" Type="String" />
                                            <asp:Parameter Name="original_User_password" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="User_id" Type="String" />
                                            <asp:Parameter Name="User_name" Type="String" />
                                            <asp:Parameter Name="User_password" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="User_name" Type="String" />
                                            <asp:Parameter Name="User_password" Type="String" />
                                            <asp:Parameter Name="original_User_id" Type="String" />
                                            <asp:Parameter Name="original_User_name" Type="String" />
                                            <asp:Parameter Name="original_User_password" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

             <div class="row">

                    <div class="col-md-6">
                        <div class="card ">
                            <div class="header">
                                <h4 class="title">客户信息管理</h4>
                                <li><a href="HomeAdmin_Managenment_UserandCustomer.aspx">刷新客户信息表</a></li>
                            </div>
                            <div class="content">
        <div align="center" style="font-family: 黑体; color: #000000;">
            <table><tr><td>客户姓名</td><td><asp:TextBox ID="TextBoxName" runat="server" Width="77px" ForeColor="Gray"></asp:TextBox></td>
                       <td>客户手机</td><td><asp:TextBox ID="TextBoxPhone" runat="server" Width="105px" OnTextChanged="TextBoxPhone_TextChanged" ForeColor="Gray"></asp:TextBox></td>
                       <td>地区</td><td><asp:TextBox ID="TextBoxArea" runat="server" Width="76px" ForeColor="Gray"></asp:TextBox></td>
                       <td>详细地址</td><td><asp:TextBox ID="TextBoxAddress" runat="server" ForeColor="Gray"></asp:TextBox></td>
                       <td>&nbsp;&nbsp;&nbsp; <asp:Button ID="ButtonAdd" runat="server" Text="添加" OnClick="ButtonAdd_Click" BackColor="#5BC0DE" ForeColor="White" Height="24px" BorderStyle="None" Font-Bold="True"/></td><td> &nbsp;&nbsp;&nbsp; <asp:Label ID="LabelCustomer" runat="server" ForeColor="Red"></asp:Label></td></tr>

            </table>
           
        </div>
                                <div id="chartActivity" class="ct-chart">
    
                                <asp:GridView ID="GridViewCustomer" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSourceCustomer" Width="1000px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="CustomerID" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID"/>
                                            <asp:BoundField DataField="CustomerName" HeaderText="客户姓名" SortExpression="CustomerName" />
                                            <asp:BoundField DataField="CustomerPhone" HeaderText="手机号" SortExpression="CustomerPhone" />
                                            <asp:BoundField DataField="CustomerArea" HeaderText="地区" SortExpression="CustomerArea" />
                                            <asp:BoundField DataField="CustomerAddress" HeaderText="地址" SortExpression="CustomerAddress" />
                                            <asp:CommandField HeaderText="操作选项" ShowDeleteButton="True" ShowEditButton="True" />
                                        </Columns>

                                        <EditRowStyle BackColor="#2461BF" />

                                        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />

                                        <HeaderStyle HorizontalAlign="Center" BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:130806117 %>" DeleteCommand="DELETE FROM [Table_Customer] WHERE [CustomerID] = @original_CustomerID AND [CustomerName] = @original_CustomerName AND (([CustomerPhone] = @original_CustomerPhone) OR ([CustomerPhone] IS NULL AND @original_CustomerPhone IS NULL)) AND (([CustomerArea] = @original_CustomerArea) OR ([CustomerArea] IS NULL AND @original_CustomerArea IS NULL)) AND (([CustomerAddress] = @original_CustomerAddress) OR ([CustomerAddress] IS NULL AND @original_CustomerAddress IS NULL))" InsertCommand="INSERT INTO [Table_Customer] ([CustomerName], [CustomerPhone], [CustomerArea], [CustomerAddress]) VALUES (@CustomerName, @CustomerPhone, @CustomerArea, @CustomerAddress)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_Customer]" UpdateCommand="UPDATE [Table_Customer] SET [CustomerName] = @CustomerName, [CustomerPhone] = @CustomerPhone, [CustomerArea] = @CustomerArea, [CustomerAddress] = @CustomerAddress WHERE [CustomerID] = @original_CustomerID AND [CustomerName] = @original_CustomerName AND (([CustomerPhone] = @original_CustomerPhone) OR ([CustomerPhone] IS NULL AND @original_CustomerPhone IS NULL)) AND (([CustomerArea] = @original_CustomerArea) OR ([CustomerArea] IS NULL AND @original_CustomerArea IS NULL)) AND (([CustomerAddress] = @original_CustomerAddress) OR ([CustomerAddress] IS NULL AND @original_CustomerAddress IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_CustomerID" Type="Int32" />
                                            <asp:Parameter Name="original_CustomerName" Type="String" />
                                            <asp:Parameter Name="original_CustomerPhone" Type="String" />
                                            <asp:Parameter Name="original_CustomerArea" Type="String" />
                                            <asp:Parameter Name="original_CustomerAddress" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="CustomerName" Type="String" />
                                            <asp:Parameter Name="CustomerPhone" Type="String" />
                                            <asp:Parameter Name="CustomerArea" Type="String" />
                                            <asp:Parameter Name="CustomerAddress" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="CustomerName" Type="String" />
                                            <asp:Parameter Name="CustomerPhone" Type="String" />
                                            <asp:Parameter Name="CustomerArea" Type="String" />
                                            <asp:Parameter Name="CustomerAddress" Type="String" />
                                            <asp:Parameter Name="original_CustomerID" Type="Int32" />
                                            <asp:Parameter Name="original_CustomerName" Type="String" />
                                            <asp:Parameter Name="original_CustomerPhone" Type="String" />
                                            <asp:Parameter Name="original_CustomerArea" Type="String" />
                                            <asp:Parameter Name="original_CustomerAddress" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
    
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

    </form>
</body>
</html>
