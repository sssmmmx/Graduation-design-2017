<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeAdmin_Managenment_Into_Task.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>仓储操作-任务</title>

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
            width: 240px;
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
                    <div class="col-md-6">
                        <div class="card ">
                            <div class="header">
                                <h4 class="title">任务中心</h4>
                                 <li><a href="HomeAdmin_Managenment_Into_Task.aspx">刷新任务信息表</a></li>
                                <p class="category">请将下列工号补充完成</p>
                            </div>
                            <div class="content">
                                <div id="chartActivity2" class="ct-chart">
                                    <asp:GridView ID="GridViewTask" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="TableID" DataSourceID="SqlDataSourceTask" Width="1000px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="TableID" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="TableID" />
                                            <asp:BoundField DataField="TaskDate" HeaderText="发布时间" SortExpression="TaskDate" />
                                            <asp:BoundField DataField="GoodsID" HeaderText="产品编号" SortExpression="GoodsID" />
                                            <asp:BoundField DataField="GoodsColour" HeaderText="产品颜色" SortExpression="GoodsColour" />
                                            <asp:BoundField DataField="GoodsSize" HeaderText="产品尺寸" SortExpression="GoodsSize" />
                                            <asp:BoundField DataField="Num" HeaderText="数量" SortExpression="Num" />
                                            <asp:BoundField DataField="Wages" HeaderText="工钱" SortExpression="Wages" />
                                            <asp:BoundField DataField="UserID" HeaderText="工号" SortExpression="UserID" />
                                            <asp:CommandField ShowEditButton="True" />
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceTask" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:130806117 %>" DeleteCommand="DELETE FROM [Table_Task] WHERE [TableID] = @original_TableID AND [GoodsID] = @original_GoodsID AND (([GoodsColour] = @original_GoodsColour) OR ([GoodsColour] IS NULL AND @original_GoodsColour IS NULL)) AND [GoodsSize] = @original_GoodsSize AND (([Num] = @original_Num) OR ([Num] IS NULL AND @original_Num IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([TaskDate] = @original_TaskDate) OR ([TaskDate] IS NULL AND @original_TaskDate IS NULL)) AND (([Sign] = @original_Sign) OR ([Sign] IS NULL AND @original_Sign IS NULL)) AND (([Wages] = @original_Wages) OR ([Wages] IS NULL AND @original_Wages IS NULL))" InsertCommand="INSERT INTO [Table_Task] ([GoodsID], [GoodsColour], [GoodsSize], [Num], [UserID], [TaskDate], [Sign], [Wages]) VALUES (@GoodsID, @GoodsColour, @GoodsSize, @Num, @UserID, @TaskDate, @Sign, @Wages)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_Task] WHERE ([TaskDate] = @TaskDate)" UpdateCommand="UPDATE [Table_Task] SET [GoodsID] = @GoodsID, [GoodsColour] = @GoodsColour, [GoodsSize] = @GoodsSize, [Num] = @Num, [UserID] = @UserID, [TaskDate] = @TaskDate, [Sign] = @Sign, [Wages] = @Wages WHERE [TableID] = @original_TableID AND [GoodsID] = @original_GoodsID AND (([GoodsColour] = @original_GoodsColour) OR ([GoodsColour] IS NULL AND @original_GoodsColour IS NULL)) AND [GoodsSize] = @original_GoodsSize AND (([Num] = @original_Num) OR ([Num] IS NULL AND @original_Num IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([TaskDate] = @original_TaskDate) OR ([TaskDate] IS NULL AND @original_TaskDate IS NULL)) AND (([Sign] = @original_Sign) OR ([Sign] IS NULL AND @original_Sign IS NULL)) AND (([Wages] = @original_Wages) OR ([Wages] IS NULL AND @original_Wages IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_TableID" Type="Int32" />
                                            <asp:Parameter Name="original_GoodsID" Type="Int32" />
                                            <asp:Parameter Name="original_GoodsColour" Type="String" />
                                            <asp:Parameter Name="original_GoodsSize" Type="Int32" />
                                            <asp:Parameter Name="original_Num" Type="Int32" />
                                            <asp:Parameter Name="original_UserID" Type="String" />
                                            <asp:Parameter DbType="Date" Name="original_TaskDate" />
                                            <asp:Parameter Name="original_Sign" Type="String" />
                                            <asp:Parameter Name="original_Wages" Type="Decimal" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="GoodsID" Type="Int32" />
                                            <asp:Parameter Name="GoodsColour" Type="String" />
                                            <asp:Parameter Name="GoodsSize" Type="Int32" />
                                            <asp:Parameter Name="Num" Type="Int32" />
                                            <asp:Parameter Name="UserID" Type="String" />
                                            <asp:Parameter DbType="Date" Name="TaskDate" />
                                            <asp:Parameter Name="Sign" Type="String" />
                                            <asp:Parameter Name="Wages" Type="Decimal" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:SessionParameter DbType="Date" Name="TaskDate" SessionField="Date" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="GoodsID" Type="Int32" />
                                            <asp:Parameter Name="GoodsColour" Type="String" />
                                            <asp:Parameter Name="GoodsSize" Type="Int32" />
                                            <asp:Parameter Name="Num" Type="Int32" />
                                            <asp:Parameter Name="UserID" Type="String" />
                                            <asp:Parameter DbType="Date" Name="TaskDate" />
                                            <asp:Parameter Name="Sign" Type="String" />
                                            <asp:Parameter Name="Wages" Type="Decimal" />
                                            <asp:Parameter Name="original_TableID" Type="Int32" />
                                            <asp:Parameter Name="original_GoodsID" Type="Int32" />
                                            <asp:Parameter Name="original_GoodsColour" Type="String" />
                                            <asp:Parameter Name="original_GoodsSize" Type="Int32" />
                                            <asp:Parameter Name="original_Num" Type="Int32" />
                                            <asp:Parameter Name="original_UserID" Type="String" />
                                            <asp:Parameter DbType="Date" Name="original_TaskDate" />
                                            <asp:Parameter Name="original_Sign" Type="String" />
                                            <asp:Parameter Name="original_Wages" Type="Decimal" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>

                                <div class="footer">
                                    <div class="legend">
                                        &nbsp;</div>
                                    <hr/>
                                    <div class="stats">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>


            <div class="row">
                    <div class="col-md-6">
                        <div class="card ">
                            <div class="header">
                                <div align="right"><asp:ImageButton ID="ImageButtonReturn" runat="server" Height="23px" ImageUrl="~/assets/img/return.png" Width="24px" OnClick="ImageButtonReturn_Click" />返回</div>
                                <h4 class="title">任务发布模块</h4>
                                <p class="category">请按照按钮顺序依次进行以下操作</p>
                            </div>
                            <div class="content">
                                <div id="chartActivity1" class="ct-chart" style="font-family: 黑体; color: #000000">


        <table>
            <tr>
                <td>
                        <div align="left" >
    
        产品编号：<asp:TextBox ID="TextBoxGoodsID" runat="server" Width="84px" ForeColor="Gray"></asp:TextBox>
        <asp:Button ID="ButtonCheck" runat="server" Text="检测" OnClick="ButtonCheck_Click" Width="63px" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="22px" />
                            <asp:Label ID="LabelGoodsID" runat="server" ForeColor="Red"></asp:Label>
        <br />
                            <br />
        根据产品尺寸填写：<asp:Button ID="Buttonyijian" runat="server" Text="一键填写尺寸" OnClick="Buttonyijian_Click" Width="98px" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                            <br />
&nbsp;<asp:TextBox ID="TextBoxSize1" runat="server" Width="50px" ForeColor="Gray"></asp:TextBox>
        <asp:TextBox ID="TextBoxSize2" runat="server" Width="50px" ForeColor="Gray"></asp:TextBox>
        <asp:TextBox ID="TextBoxSize3" runat="server" Width="50px" ForeColor="Gray"></asp:TextBox>
        <asp:TextBox ID="TextBoxSize4" runat="server" Width="50px" ForeColor="Gray"></asp:TextBox>
        <asp:TextBox ID="TextBoxSize5" runat="server" Width="50px" ForeColor="Gray"></asp:TextBox>
                            <br />
                            <br />
                            生产费用：<asp:Label ID="LabelWages" runat="server" ForeColor="Gray"></asp:Label>
                            （元/件）<br />
                            <br />
        产品颜色：<asp:DropDownList ID="DropDownListGoodsColour" runat="server" DataSourceID="SqlDataSourceGoodsColour" DataTextField="GoodsColour" DataValueField="GoodsColour" ForeColor="Gray">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceGoodsColour" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT * FROM [Table_Goods] WHERE ([GoodsID] = @GoodsID)">
            <SelectParameters>
                <asp:SessionParameter Name="GoodsID" SessionField="GoodsID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        层数（单位：层）<asp:TextBox ID="TextBoxGoodsNum" runat="server" Width="74px" ForeColor="Gray"></asp:TextBox>
        (0-100)<br />
        <br />
        <asp:Button ID="ButtonTask" runat="server" Text="生成任务清单" OnClick="ButtonTask_Click" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" />
    
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
                </td>
                <td class="auto-style1">

                    <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSourceGoodsSize" DataTextField="GoodsSize" DataValueField="GoodsSize" ForeColor="#999999">
                    </asp:BulletedList>
        <asp:SqlDataSource ID="SqlDataSourceGoodsSize" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT * FROM [Table_Size] WHERE ([GoodsID] = @GoodsID)">
            <SelectParameters>
                <asp:SessionParameter Name="GoodsID" SessionField="GoodsID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/assets/img/task.png" />
                </td>
            </tr>
        </table>
                                </div>

                                <div class="footer">
                                    <div class="legend">
                                        &nbsp;</div>
                                    <hr/>
                                    <div class="stats">
                                    </div>
                                </div>
                            </div>
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
