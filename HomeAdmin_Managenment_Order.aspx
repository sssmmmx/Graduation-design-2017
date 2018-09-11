<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeAdmin_Managenment_Order.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>管理中心-订单管理</title>

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
        .textbox {
            	border: 2px ridge rgba(187, 185, 189, 0.11);
	            border-radius: 0.3em;
	            -webkit-border-radius:0.3em;
	            -moz-border-radius:0.3em;
	            -o-border-radius:0.3em;
	            list-style:none;
	            margin-bottom:12px;
	            background:#F0EEF0;
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
                <li class="active">
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
                                <h4 class="title">查询条件</h4>
                                <p class="category">请输入查询条件编号进行查询</p>
                            </div>
                            <div class="content">
                                <div id="chartPreferences" class="ct-chart ct-perfect-fourth">
                                        <div>.</div><div align="center" style="font-family: 黑体; color: #FF0000">请在下方框中输入订单号</div><div>.</div>           
                                        <div class="form-control"><asp:TextBox ID="TextBoxOrderID" runat="server" BorderStyle="None" Height="21px" Width="214px"></asp:TextBox></div>                                       
                                        <div>.</div><div align="center" style="font-family: 黑体; color: #FF0000">请点击下方查询图标进行查询</div><div>.</div>
                                        <div align="center"><asp:ImageButton ID="ImageButtonQuery" runat="server" Height="37px" ImageUrl="~/assets/img/query.png" OnClick="ImageButtonQuery_Click" Width="38px"/> </div>

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
                                <h4 class="title">订单信息</h4>
                                <p class="category">显示所查询的订单信息</p>
                            </div>
                            <div class="content">
                                <div id="chartHours" class="ct-chart">
                                    <div>.</div><div>.</div>
                                    <asp:GridView ID="GridViewOrderInfo" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSourceOrderInfo" Width="627px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="OrderID" HeaderText="订单编号" ReadOnly="True" SortExpression="OrderID" />
                                            <asp:BoundField DataField="OrderDate" HeaderText="订单日期" SortExpression="OrderDate" />
                                            <asp:BoundField DataField="GoodsFee" HeaderText="货物金额" SortExpression="GoodsFee" />
                                            <asp:BoundField DataField="ShipFee" HeaderText="货运费用" SortExpression="ShipFee" />
                                            <asp:BoundField DataField="SumFee" HeaderText="总金额" SortExpression="SumFee" />
                                            <asp:BoundField DataField="ReceiverName" HeaderText="客户姓名" SortExpression="ReceiverName" />
                                            <asp:BoundField DataField="ReceiverArea" HeaderText="地区" SortExpression="ReceiverArea" />
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
                                    <asp:SqlDataSource ID="SqlDataSourceOrderInfo" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT * FROM [Table_OrderInfo] WHERE ([OrderID] = @OrderID)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="OrderID" SessionField="OrderID" Type="Int32" />
                                        </SelectParameters>
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

                             <div class="row">

                    <div class="col-md-6">
                        <div class="card ">
                            <div class="header">
                                <h4 class="title">订单管理</h4>
                                <p class="category">显示所有订单信息</p>
                            </div>
                            <div class="content">
                                <div id="chartActivity" class="ct-chart">
                                    <asp:GridView ID="GridViewOrders" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSourceOrders" PageSize="6" Width="1000px" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="OrderID" HeaderText="订单编号" ReadOnly="True" SortExpression="OrderID" />
                                            <asp:BoundField DataField="OrderDate" HeaderText="订单日期" SortExpression="OrderDate" />
                                            <asp:BoundField DataField="GoodsFee" HeaderText="货物金额" SortExpression="GoodsFee" />
                                            <asp:BoundField DataField="ShipFee" HeaderText="货运金额" SortExpression="ShipFee" />
                                            <asp:BoundField DataField="SumFee" HeaderText="订单总金额" SortExpression="SumFee" />
                                            <asp:BoundField DataField="ShipType" HeaderText="货运方式" SortExpression="ShipType" />
                                            <asp:BoundField DataField="ReceiverName" HeaderText="客户姓名" SortExpression="ReceiverName" />
                                            <asp:BoundField DataField="ReceiverPhone" HeaderText="客户手机号" SortExpression="ReceiverPhone" />
                                            <asp:BoundField DataField="ReceiverArea" HeaderText="地区" SortExpression="ReceiverArea" />
                                            <asp:BoundField DataField="ReceiverAddress" HeaderText="详细地址" SortExpression="ReceiverAddress" />
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
                                    <asp:SqlDataSource ID="SqlDataSourceOrders" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:130806117 %>" DeleteCommand="DELETE FROM [Table_OrderInfo] WHERE [OrderID] = @original_OrderID AND [OrderDate] = @original_OrderDate AND (([GoodsFee] = @original_GoodsFee) OR ([GoodsFee] IS NULL AND @original_GoodsFee IS NULL)) AND (([ShipFee] = @original_ShipFee) OR ([ShipFee] IS NULL AND @original_ShipFee IS NULL)) AND (([SumFee] = @original_SumFee) OR ([SumFee] IS NULL AND @original_SumFee IS NULL)) AND (([ShipType] = @original_ShipType) OR ([ShipType] IS NULL AND @original_ShipType IS NULL)) AND (([ReceiverName] = @original_ReceiverName) OR ([ReceiverName] IS NULL AND @original_ReceiverName IS NULL)) AND (([ReceiverPhone] = @original_ReceiverPhone) OR ([ReceiverPhone] IS NULL AND @original_ReceiverPhone IS NULL)) AND (([ReceiverArea] = @original_ReceiverArea) OR ([ReceiverArea] IS NULL AND @original_ReceiverArea IS NULL)) AND (([ReceiverAddress] = @original_ReceiverAddress) OR ([ReceiverAddress] IS NULL AND @original_ReceiverAddress IS NULL))" InsertCommand="INSERT INTO [Table_OrderInfo] ([OrderID], [OrderDate], [GoodsFee], [ShipFee], [SumFee], [ShipType], [ReceiverName], [ReceiverPhone], [ReceiverArea], [ReceiverAddress]) VALUES (@OrderID, @OrderDate, @GoodsFee, @ShipFee, @SumFee, @ShipType, @ReceiverName, @ReceiverPhone, @ReceiverArea, @ReceiverAddress)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_OrderInfo]" UpdateCommand="UPDATE [Table_OrderInfo] SET [OrderDate] = @OrderDate, [GoodsFee] = @GoodsFee, [ShipFee] = @ShipFee, [SumFee] = @SumFee, [ShipType] = @ShipType, [ReceiverName] = @ReceiverName, [ReceiverPhone] = @ReceiverPhone, [ReceiverArea] = @ReceiverArea, [ReceiverAddress] = @ReceiverAddress WHERE [OrderID] = @original_OrderID AND [OrderDate] = @original_OrderDate AND (([GoodsFee] = @original_GoodsFee) OR ([GoodsFee] IS NULL AND @original_GoodsFee IS NULL)) AND (([ShipFee] = @original_ShipFee) OR ([ShipFee] IS NULL AND @original_ShipFee IS NULL)) AND (([SumFee] = @original_SumFee) OR ([SumFee] IS NULL AND @original_SumFee IS NULL)) AND (([ShipType] = @original_ShipType) OR ([ShipType] IS NULL AND @original_ShipType IS NULL)) AND (([ReceiverName] = @original_ReceiverName) OR ([ReceiverName] IS NULL AND @original_ReceiverName IS NULL)) AND (([ReceiverPhone] = @original_ReceiverPhone) OR ([ReceiverPhone] IS NULL AND @original_ReceiverPhone IS NULL)) AND (([ReceiverArea] = @original_ReceiverArea) OR ([ReceiverArea] IS NULL AND @original_ReceiverArea IS NULL)) AND (([ReceiverAddress] = @original_ReceiverAddress) OR ([ReceiverAddress] IS NULL AND @original_ReceiverAddress IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_OrderID" Type="Int32" />
                                            <asp:Parameter DbType="Date" Name="original_OrderDate" />
                                            <asp:Parameter Name="original_GoodsFee" Type="Decimal" />
                                            <asp:Parameter Name="original_ShipFee" Type="Decimal" />
                                            <asp:Parameter Name="original_SumFee" Type="Decimal" />
                                            <asp:Parameter Name="original_ShipType" Type="String" />
                                            <asp:Parameter Name="original_ReceiverName" Type="String" />
                                            <asp:Parameter Name="original_ReceiverPhone" Type="String" />
                                            <asp:Parameter Name="original_ReceiverArea" Type="String" />
                                            <asp:Parameter Name="original_ReceiverAddress" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="OrderID" Type="Int32" />
                                            <asp:Parameter DbType="Date" Name="OrderDate" />
                                            <asp:Parameter Name="GoodsFee" Type="Decimal" />
                                            <asp:Parameter Name="ShipFee" Type="Decimal" />
                                            <asp:Parameter Name="SumFee" Type="Decimal" />
                                            <asp:Parameter Name="ShipType" Type="String" />
                                            <asp:Parameter Name="ReceiverName" Type="String" />
                                            <asp:Parameter Name="ReceiverPhone" Type="String" />
                                            <asp:Parameter Name="ReceiverArea" Type="String" />
                                            <asp:Parameter Name="ReceiverAddress" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter DbType="Date" Name="OrderDate" />
                                            <asp:Parameter Name="GoodsFee" Type="Decimal" />
                                            <asp:Parameter Name="ShipFee" Type="Decimal" />
                                            <asp:Parameter Name="SumFee" Type="Decimal" />
                                            <asp:Parameter Name="ShipType" Type="String" />
                                            <asp:Parameter Name="ReceiverName" Type="String" />
                                            <asp:Parameter Name="ReceiverPhone" Type="String" />
                                            <asp:Parameter Name="ReceiverArea" Type="String" />
                                            <asp:Parameter Name="ReceiverAddress" Type="String" />
                                            <asp:Parameter Name="original_OrderID" Type="Int32" />
                                            <asp:Parameter DbType="Date" Name="original_OrderDate" />
                                            <asp:Parameter Name="original_GoodsFee" Type="Decimal" />
                                            <asp:Parameter Name="original_ShipFee" Type="Decimal" />
                                            <asp:Parameter Name="original_SumFee" Type="Decimal" />
                                            <asp:Parameter Name="original_ShipType" Type="String" />
                                            <asp:Parameter Name="original_ReceiverName" Type="String" />
                                            <asp:Parameter Name="original_ReceiverPhone" Type="String" />
                                            <asp:Parameter Name="original_ReceiverArea" Type="String" />
                                            <asp:Parameter Name="original_ReceiverAddress" Type="String" />
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
