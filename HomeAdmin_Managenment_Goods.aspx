<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeAdmin_Managenment_Goods.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>管理中心-产品信息</title>

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

                    <div class="col-md-4">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">进入添加产品信息模块</h4>
                                <p class="category">增加数据库内产品的信息，更新所有与产品有关联的数据表</p>
                            </div>
                            <div class="content">
                                <div id="chartPreferences" class="ct-chart ct-perfect-fourth">
                                    <div>.</div><div align="center" style="color: #FF0000; font-family: 黑体;">请点击下列加号进入产品增加模块</div><div>.</div>
                                    <div align="center">
                                        <asp:ImageButton ID="ImageButtonAdd" runat="server" ImageUrl="~/assets/img/add.png" OnClick="ImageButtonAdd_Click" Height="100px" Width="100px" />
                                    </div>
                                </div>

                                <div class="footer">
                                    <div class="legend">
                                        &nbsp;</div>
                                    <hr>
                                    <div class="stats">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">产品列表</h4>
                                <p class="category">显示数据库内的全部产品信息</p>
                            </div>
                            <div class="content">
                                <div id="chartHours" class="ct-chart">
        <asp:GridView ID="GridViewGoods" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TableID" DataSourceID="SqlDataSourceGoods" Width="650px" CellPadding="4" Height="320px" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                
                <asp:BoundField DataField="GoodsID" HeaderText="产品编号" SortExpression="GoodsID" />
                <asp:BoundField DataField="GoodsName" HeaderText="产品名称" SortExpression="GoodsName" />
                <asp:BoundField DataField="GoodsColour" HeaderText="产品颜色" SortExpression="GoodsColour" />
                <asp:BoundField DataField="GoodsUrl" HeaderText="图片链接" SortExpression="GoodsUrl" />
                <asp:BoundField DataField="FactoryID" HeaderText="生产厂编号" SortExpression="FactoryID" />
                <asp:BoundField DataField="Cost" HeaderText="成本" SortExpression="Cost" />
                <asp:BoundField DataField="Price" HeaderText="售价" SortExpression="Price" />
                <asp:CommandField HeaderText="操作选项" ShowDeleteButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSourceGoods" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT * FROM [Table_Goods]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Table_Goods] WHERE [TableID] = @original_TableID AND [GoodsID] = @original_GoodsID AND (([GoodsName] = @original_GoodsName) OR ([GoodsName] IS NULL AND @original_GoodsName IS NULL)) AND (([GoodsColour] = @original_GoodsColour) OR ([GoodsColour] IS NULL AND @original_GoodsColour IS NULL)) AND (([GoodsUrl] = @original_GoodsUrl) OR ([GoodsUrl] IS NULL AND @original_GoodsUrl IS NULL)) AND (([FactoryID] = @original_FactoryID) OR ([FactoryID] IS NULL AND @original_FactoryID IS NULL)) AND (([Cost] = @original_Cost) OR ([Cost] IS NULL AND @original_Cost IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [Table_Goods] ([GoodsID], [GoodsName], [GoodsColour], [GoodsUrl], [FactoryID], [Cost], [Price]) VALUES (@GoodsID, @GoodsName, @GoodsColour, @GoodsUrl, @FactoryID, @Cost, @Price)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Table_Goods] SET [GoodsID] = @GoodsID, [GoodsName] = @GoodsName, [GoodsColour] = @GoodsColour, [GoodsUrl] = @GoodsUrl, [FactoryID] = @FactoryID, [Cost] = @Cost, [Price] = @Price WHERE [TableID] = @original_TableID AND [GoodsID] = @original_GoodsID AND (([GoodsName] = @original_GoodsName) OR ([GoodsName] IS NULL AND @original_GoodsName IS NULL)) AND (([GoodsColour] = @original_GoodsColour) OR ([GoodsColour] IS NULL AND @original_GoodsColour IS NULL)) AND (([GoodsUrl] = @original_GoodsUrl) OR ([GoodsUrl] IS NULL AND @original_GoodsUrl IS NULL)) AND (([FactoryID] = @original_FactoryID) OR ([FactoryID] IS NULL AND @original_FactoryID IS NULL)) AND (([Cost] = @original_Cost) OR ([Cost] IS NULL AND @original_Cost IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_TableID" Type="Int32" />
                <asp:Parameter Name="original_GoodsID" Type="Int32" />
                <asp:Parameter Name="original_GoodsName" Type="String" />
                <asp:Parameter Name="original_GoodsColour" Type="String" />
                <asp:Parameter Name="original_GoodsUrl" Type="String" />
                <asp:Parameter Name="original_FactoryID" Type="Int32" />
                <asp:Parameter Name="original_Cost" Type="Double" />
                <asp:Parameter Name="original_Price" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GoodsID" Type="Int32" />
                <asp:Parameter Name="GoodsName" Type="String" />
                <asp:Parameter Name="GoodsColour" Type="String" />
                <asp:Parameter Name="GoodsUrl" Type="String" />
                <asp:Parameter Name="FactoryID" Type="Int32" />
                <asp:Parameter Name="Cost" Type="Double" />
                <asp:Parameter Name="Price" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="GoodsID" Type="Int32" />
                <asp:Parameter Name="GoodsName" Type="String" />
                <asp:Parameter Name="GoodsColour" Type="String" />
                <asp:Parameter Name="GoodsUrl" Type="String" />
                <asp:Parameter Name="FactoryID" Type="Int32" />
                <asp:Parameter Name="Cost" Type="Double" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="original_TableID" Type="Int32" />
                <asp:Parameter Name="original_GoodsID" Type="Int32" />
                <asp:Parameter Name="original_GoodsName" Type="String" />
                <asp:Parameter Name="original_GoodsColour" Type="String" />
                <asp:Parameter Name="original_GoodsUrl" Type="String" />
                <asp:Parameter Name="original_FactoryID" Type="Int32" />
                <asp:Parameter Name="original_Cost" Type="Double" />
                <asp:Parameter Name="original_Price" Type="Double" />
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



    </div>
    </form>
</body>
</html>
