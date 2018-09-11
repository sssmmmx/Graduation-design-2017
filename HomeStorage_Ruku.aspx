<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeStorage_Ruku.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>仓储操作-入库</title>

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
            <li class="active">
                    <a href="HomeStorage_Ruku.aspx">
                        <i class="pe-7s-news-paper"></i>
                        <p>入库操作</p>
                    </a>
                </li>
                <li >
                    <a href="HomeSstorage_Chuku.aspx">
                        <i class="pe-7s-note2"></i>
                        <p>出库操作</p>
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
                                <h4 class="title">Step1：查询阶段</h4>
                                <p class="category">请在下方输入工号进行查询，并将下方的数据添加到核对区域</p>
                            </div>
                                <div><table border="0" cellpadding="0" cellspacing="0" bgcolor="" style=" width: 393px; height: 38px; font-family: 黑体;">
                                    <tr>
                                        <td>工号：</td>
                                        <td><div style="width: 273px"><div class="form-control">
                                            <asp:TextBox ID="TextBoxUserID" runat="server" BorderStyle="None" Height="18px" ForeColor="Gray" Width="187px"></asp:TextBox>
                                            </div></div></td>
                                        <td>
                                            <asp:ImageButton ID="ImageButtonQuery" runat="server" Height="27px" ImageUrl="~/assets/img/query.png" Width="35px" OnClick="ImageButtonQuery_Click" />
                                        </td></tr>                                
                                </table></div>
                            <div class="content">
                                <div id="chartActivity1" class="ct-chart">
                    <asp:GridView ID="GridViewTask" runat="server" AutoGenerateColumns="False" DataKeyNames="TableID" DataSourceID="SqlDataSourceTask" OnRowCommand="GridViewTask_RowCommand" Width="1000px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="TableID" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="TableID" />
                            <asp:BoundField DataField="UserID" HeaderText="工号" SortExpression="UserID" />
                            <asp:BoundField DataField="GoodsID" HeaderText="产品编号" SortExpression="GoodsID" />
                            <asp:BoundField DataField="GoodsColour" HeaderText="产品颜色" SortExpression="GoodsColour" />
                            <asp:BoundField DataField="GoodsSize" HeaderText="产品尺寸" SortExpression="GoodsSize" />
                            <asp:BoundField DataField="Num" HeaderText="数量" SortExpression="Num" />
                            <asp:BoundField DataField="TaskDate" HeaderText="日期" SortExpression="TaskDate" />
                            <asp:BoundField DataField="Wages" HeaderText="工钱" SortExpression="Wages" />
                            <asp:ButtonField CommandName="getid" Text="点击添加到审核区域" />
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
                    <asp:SqlDataSource ID="SqlDataSourceTask" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:130806117 %>" DeleteCommand="DELETE FROM [Table_Task] WHERE [TableID] = @original_TableID AND [GoodsID] = @original_GoodsID AND (([GoodsColour] = @original_GoodsColour) OR ([GoodsColour] IS NULL AND @original_GoodsColour IS NULL)) AND [GoodsSize] = @original_GoodsSize AND (([Num] = @original_Num) OR ([Num] IS NULL AND @original_Num IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([TaskDate] = @original_TaskDate) OR ([TaskDate] IS NULL AND @original_TaskDate IS NULL)) AND (([Sign] = @original_Sign) OR ([Sign] IS NULL AND @original_Sign IS NULL)) AND (([Wages] = @original_Wages) OR ([Wages] IS NULL AND @original_Wages IS NULL))" InsertCommand="INSERT INTO [Table_Task] ([GoodsID], [GoodsColour], [GoodsSize], [Num], [UserID], [TaskDate], [Sign], [Wages]) VALUES (@GoodsID, @GoodsColour, @GoodsSize, @Num, @UserID, @TaskDate, @Sign, @Wages)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_Task] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [Table_Task] SET [GoodsID] = @GoodsID, [GoodsColour] = @GoodsColour, [GoodsSize] = @GoodsSize, [Num] = @Num, [UserID] = @UserID, [TaskDate] = @TaskDate, [Sign] = @Sign, [Wages] = @Wages WHERE [TableID] = @original_TableID AND [GoodsID] = @original_GoodsID AND (([GoodsColour] = @original_GoodsColour) OR ([GoodsColour] IS NULL AND @original_GoodsColour IS NULL)) AND [GoodsSize] = @original_GoodsSize AND (([Num] = @original_Num) OR ([Num] IS NULL AND @original_Num IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([TaskDate] = @original_TaskDate) OR ([TaskDate] IS NULL AND @original_TaskDate IS NULL)) AND (([Sign] = @original_Sign) OR ([Sign] IS NULL AND @original_Sign IS NULL)) AND (([Wages] = @original_Wages) OR ([Wages] IS NULL AND @original_Wages IS NULL))">
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
                            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="String" />
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
                            <asp:Parameter Name="original_TaskDate" DbType="Date" />
                            <asp:Parameter Name="original_Sign" Type="String" />
                            <asp:Parameter Name="original_Wages" Type="Decimal" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                                </div>

                                <div class="footer">
                                    <div class="legend">
                                        &nbsp;<li style="width: 453px"><asp:ImageButton ID="ImageButton" runat="server" Height="16px" ImageUrl="~/assets/img/refresh.png" Width="16px" OnClick="ImageButton_Click" />
                                        &nbsp; <a href="HomeStorage_Ruku.aspx">将待审核任务添加到审核区域，点击此处刷新列表.</a></li>
</div>
                                    <hr/>
                                    <div class="stats">
                                        &nbsp;</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>


                    <div class="row">
                    <div class="col-md-6">
                        <div class="card ">
                            <div class="header">
                                <h4 class="title">Step2：审核阶段</h4>
                                <p class="category">审核区域，进行任务的审核入库.</p>
                            </div>
                            <div class="content" id="IntoRukuTip2">
                                <div id="chartActivity2" class="ct-chart" style="font-family: 黑体; color: #FF0000">

            <asp:GridView ID="GridViewTaskComplet" runat="server" AutoGenerateColumns="False" DataKeyNames="TableID" DataSourceID="SqlDataSourceTaskComplet" OnRowCommand="GridViewTaskComplet_RowCommand" Width="1000px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="TableID" HeaderText="编号" ReadOnly="True" SortExpression="TableID" />
                    <asp:BoundField DataField="GoodsID" HeaderText="产品编号" SortExpression="GoodsID" />
                    <asp:BoundField DataField="GoodsColour" HeaderText="产品颜色" SortExpression="GoodsColour" />
                    <asp:BoundField DataField="GoodsSize" HeaderText="产品尺寸" SortExpression="GoodsSize" />
                    <asp:BoundField DataField="UserID" HeaderText="工号" SortExpression="UserID" />
                    <asp:BoundField DataField="Num" HeaderText="数量" SortExpression="Num" />
                    <asp:BoundField DataField="TaskDate" HeaderText="完成时间" SortExpression="TaskDate" />
                    <asp:BoundField DataField="Wages" HeaderText="工钱" SortExpression="Wages" />
                    <asp:ButtonField CommandName="getid" Text="确认入库" />
                    <asp:CommandField DeleteText="取消入库" ShowDeleteButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSourceTaskComplet" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:130806117 %>" DeleteCommand="DELETE FROM [Table_TaskComplete] WHERE [TableID] = @original_TableID AND (([GoodsID] = @original_GoodsID) OR ([GoodsID] IS NULL AND @original_GoodsID IS NULL)) AND (([GoodsColour] = @original_GoodsColour) OR ([GoodsColour] IS NULL AND @original_GoodsColour IS NULL)) AND (([GoodsSize] = @original_GoodsSize) OR ([GoodsSize] IS NULL AND @original_GoodsSize IS NULL)) AND (([Num] = @original_Num) OR ([Num] IS NULL AND @original_Num IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([TaskDate] = @original_TaskDate) OR ([TaskDate] IS NULL AND @original_TaskDate IS NULL)) AND (([Wages] = @original_Wages) OR ([Wages] IS NULL AND @original_Wages IS NULL))" InsertCommand="INSERT INTO [Table_TaskComplete] ([TableID], [GoodsID], [GoodsColour], [GoodsSize], [Num], [UserID], [TaskDate], [Wages]) VALUES (@TableID, @GoodsID, @GoodsColour, @GoodsSize, @Num, @UserID, @TaskDate, @Wages)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_TaskComplete] WHERE (([TaskDate] = @TaskDate) AND ([UserID] = @UserID))" UpdateCommand="UPDATE [Table_TaskComplete] SET [GoodsID] = @GoodsID, [GoodsColour] = @GoodsColour, [GoodsSize] = @GoodsSize, [Num] = @Num, [UserID] = @UserID, [TaskDate] = @TaskDate, [Wages] = @Wages WHERE [TableID] = @original_TableID AND (([GoodsID] = @original_GoodsID) OR ([GoodsID] IS NULL AND @original_GoodsID IS NULL)) AND (([GoodsColour] = @original_GoodsColour) OR ([GoodsColour] IS NULL AND @original_GoodsColour IS NULL)) AND (([GoodsSize] = @original_GoodsSize) OR ([GoodsSize] IS NULL AND @original_GoodsSize IS NULL)) AND (([Num] = @original_Num) OR ([Num] IS NULL AND @original_Num IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([TaskDate] = @original_TaskDate) OR ([TaskDate] IS NULL AND @original_TaskDate IS NULL)) AND (([Wages] = @original_Wages) OR ([Wages] IS NULL AND @original_Wages IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_TableID" Type="Int32" />
                    <asp:Parameter Name="original_GoodsID" Type="Int32" />
                    <asp:Parameter Name="original_GoodsColour" Type="String" />
                    <asp:Parameter Name="original_GoodsSize" Type="Int32" />
                    <asp:Parameter Name="original_Num" Type="Int32" />
                    <asp:Parameter Name="original_UserID" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_TaskDate" />
                    <asp:Parameter Name="original_Wages" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TableID" Type="Int32" />
                    <asp:Parameter Name="GoodsID" Type="Int32" />
                    <asp:Parameter Name="GoodsColour" Type="String" />
                    <asp:Parameter Name="GoodsSize" Type="Int32" />
                    <asp:Parameter Name="Num" Type="Int32" />
                    <asp:Parameter Name="UserID" Type="String" />
                    <asp:Parameter DbType="Date" Name="TaskDate" />
                    <asp:Parameter Name="Wages" Type="Decimal" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="TaskDate" SessionField="Date" DbType="Date" />
                    <asp:SessionParameter Name="UserID" SessionField="UserID" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="GoodsID" Type="Int32" />
                    <asp:Parameter Name="GoodsColour" Type="String" />
                    <asp:Parameter Name="GoodsSize" Type="Int32" />
                    <asp:Parameter Name="Num" Type="Int32" />
                    <asp:Parameter Name="UserID" Type="String" />
                    <asp:Parameter DbType="Date" Name="TaskDate" />
                    <asp:Parameter Name="Wages" Type="Decimal" />
                    <asp:Parameter Name="original_TableID" Type="Int32" />
                    <asp:Parameter Name="original_GoodsID" Type="Int32" />
                    <asp:Parameter Name="original_GoodsColour" Type="String" />
                    <asp:Parameter Name="original_GoodsSize" Type="Int32" />
                    <asp:Parameter Name="original_Num" Type="Int32" />
                    <asp:Parameter Name="original_UserID" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_TaskDate" />
                    <asp:Parameter Name="original_Wages" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>

                                </div>

                                <div class="footer">
                                    <div class="legend" style="font-family: 黑体; color: #FF0000">
                                        &nbsp;（一个工号一天只能审核一次）点击确认入库后点击：<asp:Button ID="ButtonTaskComplet" runat="server" Text="完成审核" OnClick="ButtonTaskComplet_Click" ForeColor="White" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" />

                                &nbsp;<asp:Label ID="LabelShenhe" runat="server" ForeColor="Red"></asp:Label>

                                    </div>
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



    </div>
    </form>
</body>
</html>
