<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeAdmin.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>管理员主页</title>

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
                                <h4 class="title">选择数据分析的时间</h4>
                                <p class="category">
                                    &nbsp;</p>
                            </div>
                            <div class="content">
                                <div id="chartActivity0" align="center">
                                   <table border="0" cellpadding="0" cellspacing="0" bgcolor="" style=" width: 686px; height: 200px; font-family: 黑体;">
                                       <tr>
                                           <td><div align="center">开始时间：<asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                           </div></td>
                                           <td><div align="center">结束时间：<asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                                           </div></td>
                                       </tr>
                                       <tr>
                                           <td>
                                               <div align="center"><asp:Calendar ID="Calendar1" runat="server"></asp:Calendar></div>
                                           </td>
                                           <td>
                                               <div align="center"><asp:Calendar ID="Calendar2" runat="server"></asp:Calendar></div>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td colspan="2">
                                               <div align="center"><asp:Button ID="Button1" runat="server" Text="确认时间" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" /></div>
                                           </td>

                                       </tr>
                                   </table>
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




                <div class="row">
                    <div class="col-md-6">
                        <div class="card ">
                            <div class="header">
                                <h4 class="title">单个客户每日金额趋势图</h4>
                                <p class="category">
                                                        <asp:DropDownList ID="DropDownListCustomerName" runat="server" DataSourceID="SqlDataSourceCustomer" DataTextField="CustomerName" DataValueField="CustomerName" Height="30px" Width="148px">
                                                        </asp:DropDownList>
                                                    <asp:ImageButton ID="ImageButtonName" runat="server" Height="16px" ImageUrl="~/assets/img/query.png" OnClick="ImageButtonName_Click" />
                                    <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=Data;Persist Security Info=True;User ID=sa;Password=good6565" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [CustomerName] FROM [Table_Customer]"></asp:SqlDataSource>
                                    </p>
                            </div>
                            <div class="content">
                                <div id="chartActivity" class="ct-chart">
                                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource" Width="1000px">
                                        <Series>
                                            <asp:Series Name="Series1" XValueMember="OrderDate" YValueMembers="GoodsFee" ChartType="Spline">
                                            </asp:Series>
                                        </Series>
                                        <ChartAreas>
                                            <asp:ChartArea Name="ChartArea1">
                                            </asp:ChartArea>
                                        </ChartAreas>
                                    </asp:Chart>
                                    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT [OrderDate], [GoodsFee] FROM [Table_OrderInfo] WHERE (([ReceiverName] = @ReceiverName) AND ([OrderDate] &lt;= @OrderDate) AND ([OrderDate] &gt;= @OrderDate2))">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="ReceiverName" SessionField="Name" Type="String" />
                                            <asp:SessionParameter DbType="Date" Name="OrderDate" SessionField="Calendar2" />
                                            <asp:SessionParameter DbType="Date" Name="OrderDate2" SessionField="Calendar1" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>

                                <div class="footer">
                                    <div class="legend">
                                        <i class="fa fa-circle text-info"></i> 
                                        <i class="fa fa-circle text-danger"></i> 
                                    </div>
                                    <hr/>
                                    <div class="stats">
                                        <i class="fa fa-check"></i> 
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
                                <h4 class="title">月最佳产品销售排名</h4>
                                <p class="category"><span name="postion" id="HomeAdminTip"></span>
                                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="121px">
                                                            <asp:ListItem Value="2017-05">2017年5月</asp:ListItem>
                                                            <asp:ListItem Value="2017-04">2017年4月</asp:ListItem>
                                                            <asp:ListItem Value="2017-03">2017年3月</asp:ListItem>
                                                            <asp:ListItem Value="2017-02">2017年2月</asp:ListItem>
                                                            <asp:ListItem Value="2017-01">2017年1月</asp:ListItem>
                                                        </asp:DropDownList>
                                                        &nbsp;&nbsp;
                                                        <asp:Button ID="ButtonGoodsRank" runat="server" Text="查询历史排行" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="21px" OnClick="ButtonGoodsRank_Click" />
                                &nbsp;
                                                        <asp:Label ID="LabelGoodsRank" runat="server" ForeColor="Red" Text=""></asp:Label>
                                                        <asp:Label ID="LabelGoodsRank2" runat="server" ForeColor="Red" Text=""></asp:Label>
                                &nbsp;</p>
                                <li><a href="HomeAdmin.aspx">刷新排行榜</a></li>
                            </div>
                            <div class="content">
                                <div id="chartActivity2" class="ct-chart">
                                    <div align="center">
                                    <asp:GridView ID="GridViewGoodsRank" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceGoodsRank" AllowPaging="True" Width="600px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="GoodsID" HeaderText="产品编号" SortExpression="GoodsID" />
                                            <asp:BoundField DataField="GoodsName" HeaderText="产品名称" SortExpression="GoodsName" />
                                            <asp:BoundField DataField="GoodsColour" HeaderText="产品颜色" SortExpression="GoodsColour" />
                                            <asp:BoundField DataField="RankNum" HeaderText="销售数目" SortExpression="RankNum" />
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
                                        </div>
                                    <asp:SqlDataSource ID="SqlDataSourceGoodsRank" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT [GoodsID], [GoodsName], [GoodsColour], [GoodsUrl], [RankNum], [RankMoney] FROM [Table_Goods] ORDER BY [RankNum] DESC"></asp:SqlDataSource>
                                </div>

                                <div class="footer">
                                    <div class="legend">
                                        <i class="fa fa-circle text-info"></i> 
                                        <i class="fa fa-circle text-danger"></i> 
                                    </div>
                                    <hr/>
                                    <div class="stats">
                                        <i class="fa fa-check"></i> 
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
                                <h4 class="title">产品销售线图<asp:SqlDataSource ID="SqlDataSourceGoodsID" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT * FROM [Table_Goods]"></asp:SqlDataSource>
                                </h4>
                                <p class="category">
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceGoodsID" DataTextField="GoodsID" DataValueField="GoodsID">
                                    </asp:DropDownList>
                                    <asp:Button ID="ButtonGoodsID" runat="server" Text="查询" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" OnClick="ButtonGoodsID_Click" Width="49px" />
                                </p>
                            </div>
                            <div class="content">
                                <div id="chartActivity3" class="ct-chart" align="center">
                                    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSourceGoodsXiantu" Width="1000px">
                                        <Series>
                                            <asp:Series ChartType="Spline" Name="Series1" XValueMember="OrderID" YValueMembers="Num" YValuesPerPoint="4">
                                            </asp:Series>
                                        </Series>
                                        <ChartAreas>
                                            <asp:ChartArea Name="ChartArea1">
                                            </asp:ChartArea>
                                        </ChartAreas>
                                    </asp:Chart>
                                    <asp:SqlDataSource ID="SqlDataSourceGoodsXiantu" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT * FROM [Table_Order] WHERE ([GoodsID] = @GoodsID)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="GoodsID" SessionField="GoodsID" Type="Int32" />
                                        </SelectParameters>
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
