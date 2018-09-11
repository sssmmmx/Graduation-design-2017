<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeAdmin_Managenment_Storage.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>管理中心-仓储管理</title>

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
                <li  class="active">
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
                                <h4 class="title">查询条件</h4>
                                <p class="category">请输入查询条件编号进行查询</p>
                            </div>
                            <div class="content">
                                <div id="chartPreferences" class="ct-chart ct-perfect-fourth">
                                 <div>.</div><div align="center" style="font-family: 黑体; color: #FF0000">请在下方框中输入产品编号</div><div>.</div>
                                        <div class="form-control"><asp:TextBox ID="TextBoxGoodsID" runat="server" BorderStyle="None" Height="20px" Width="214px"></asp:TextBox></div>
                                        <div>.</div><div align="center" style="font-family: 黑体; color: #FF0000">请点击下方查询图标进行查询</div><div>.</div>
                                        <div align="center"><asp:ImageButton ID="ImageButtonGoodsQuery" runat="server" Height="37px" ImageUrl="~/assets/img/query.png" OnClick="ImageButtonGoodsQuery_Click" Width="38px"/> </div>
                                </div>

                                <div class="footer">
                                    <div class="legend">
                                        &nbsp;</div>
                                    <hr>
                                    <div class="stats">
                                        &nbsp;</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">查询结果</h4>
                                <p class="category">显示查询的库存信息</p>
                            </div>
                            <div class="content">
                                <div id="chartHours" class="ct-chart">
    
        <asp:GridView ID="GridViewGoodsStorageOne" runat="server" AutoGenerateColumns="False" DataKeyNames="StorageID" DataSourceID="SqlDataSourceGoodsStorageOne" Width="600px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="GoodsID" HeaderText="产品编号" SortExpression="GoodsID" />
                <asp:BoundField DataField="GoodsColour" HeaderText="颜色类别" SortExpression="GoodsColour" />
                <asp:BoundField DataField="GoodsSize" HeaderText="尺寸大小" SortExpression="GoodsSize" />
                <asp:BoundField DataField="Num" HeaderText="数量（条）" SortExpression="Num" />
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
        <asp:SqlDataSource ID="SqlDataSourceGoodsStorageOne" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:130806117 %>" DeleteCommand="DELETE FROM [Table_Storage] WHERE [StorageID] = @original_StorageID AND (([GoodsID] = @original_GoodsID) OR ([GoodsID] IS NULL AND @original_GoodsID IS NULL)) AND (([GoodsColour] = @original_GoodsColour) OR ([GoodsColour] IS NULL AND @original_GoodsColour IS NULL)) AND (([GoodsSize] = @original_GoodsSize) OR ([GoodsSize] IS NULL AND @original_GoodsSize IS NULL)) AND (([Num] = @original_Num) OR ([Num] IS NULL AND @original_Num IS NULL)) AND (([GoodsDate] = @original_GoodsDate) OR ([GoodsDate] IS NULL AND @original_GoodsDate IS NULL)) AND [sign] = @original_sign" InsertCommand="INSERT INTO [Table_Storage] ([GoodsID], [GoodsColour], [GoodsSize], [Num], [GoodsDate], [sign]) VALUES (@GoodsID, @GoodsColour, @GoodsSize, @Num, @GoodsDate, @sign)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_Storage] WHERE ([GoodsID] = @GoodsID)" UpdateCommand="UPDATE [Table_Storage] SET [GoodsID] = @GoodsID, [GoodsColour] = @GoodsColour, [GoodsSize] = @GoodsSize, [Num] = @Num, [GoodsDate] = @GoodsDate, [sign] = @sign WHERE [StorageID] = @original_StorageID AND (([GoodsID] = @original_GoodsID) OR ([GoodsID] IS NULL AND @original_GoodsID IS NULL)) AND (([GoodsColour] = @original_GoodsColour) OR ([GoodsColour] IS NULL AND @original_GoodsColour IS NULL)) AND (([GoodsSize] = @original_GoodsSize) OR ([GoodsSize] IS NULL AND @original_GoodsSize IS NULL)) AND (([Num] = @original_Num) OR ([Num] IS NULL AND @original_Num IS NULL)) AND (([GoodsDate] = @original_GoodsDate) OR ([GoodsDate] IS NULL AND @original_GoodsDate IS NULL)) AND [sign] = @original_sign">
            <DeleteParameters>
                <asp:Parameter Name="original_StorageID" Type="Int32" />
                <asp:Parameter Name="original_GoodsID" Type="Int32" />
                <asp:Parameter Name="original_GoodsColour" Type="String" />
                <asp:Parameter Name="original_GoodsSize" Type="Int32" />
                <asp:Parameter Name="original_Num" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_GoodsDate" />
                <asp:Parameter Name="original_sign" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GoodsID" Type="Int32" />
                <asp:Parameter Name="GoodsColour" Type="String" />
                <asp:Parameter Name="GoodsSize" Type="Int32" />
                <asp:Parameter Name="Num" Type="Int32" />
                <asp:Parameter DbType="Date" Name="GoodsDate" />
                <asp:Parameter Name="sign" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="GoodsID" SessionField="GoodsID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="GoodsID" Type="Int32" />
                <asp:Parameter Name="GoodsColour" Type="String" />
                <asp:Parameter Name="GoodsSize" Type="Int32" />
                <asp:Parameter Name="Num" Type="Int32" />
                <asp:Parameter DbType="Date" Name="GoodsDate" />
                <asp:Parameter Name="sign" Type="Int32" />
                <asp:Parameter Name="original_StorageID" Type="Int32" />
                <asp:Parameter Name="original_GoodsID" Type="Int32" />
                <asp:Parameter Name="original_GoodsColour" Type="String" />
                <asp:Parameter Name="original_GoodsSize" Type="Int32" />
                <asp:Parameter Name="original_Num" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_GoodsDate" />
                <asp:Parameter Name="original_sign" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
                                </div>
                                <div class="footer">
                                    <div class="legend">
                                        &nbsp;</div>
                                    <hr>
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
