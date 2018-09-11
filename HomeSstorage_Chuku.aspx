<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeSstorage_Chuku.aspx.cs" Inherits="HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>仓储操作-出库</title>

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
    <!--     Button-->
     <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

    <style type="text/css">
        .table-full-width {
            width: 214px;
        }
        .auto-style2 {
            height: 58px;
            width: 110px;
        }
        .auto-style6 {
            height: 20px;
            width: 205px;
        }
        .auto-style7 {
            height: 58px;
            width: 205px;
        }
        .auto-style10 {
            height: 58px;
            width: 128px;
        }
        .auto-style11 {
            width: 128px;
        }
        .auto-style12 {
            height: 26px;
            width: 119px;
        }
        .auto-style13 {
            width: 340px;
        }
        .auto-style14 {
            width: 109px;
        }
        .auto-style15 {
            height: 58px;
        }
        .auto-style16 {
            height: 26px;
            width: 128px;
        }
        .auto-style17 {
            width: 212px;
        }
        .auto-style18 {
            height: 35px;
            width: 110px;
        }
        .auto-style19 {
            height: 35px;
            width: 205px;
        }
        .auto-style20 {
            height: 35px;
            width: 128px;
        }
        .auto-style21 {
            height: 35px;
        }
        .auto-style24 {
            height: 20px;
        }
        .auto-style25 {
            height: 20px;
            width: 110px;
        }
        .auto-style27 {
            height: 20px;
            width: 128px;
        }
        .auto-style32 {
            width: 119px;
            height: 37px;
        }
        .auto-style33 {
            width: 128px;
            height: 37px;
        }
        .auto-style34 {
            height: 20px;
            width: 119px;
        }
        .auto-style35 {
            width: 119px;
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
                    <a href="HomeStorage_Ruku.aspx">
                        <i class="pe-7s-news-paper"></i>
                        <p>入库操作</p>
                    </a>
                </li>
                <li class="active" >
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
                               当前账号:<asp:Label ID="LabelUserID" runat="server" ForeColor="#333333"></asp:Label>
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
                                <h4 class="title">第一步：填写</h4>
                                <p class="category">Step 1：填写数据</p>
                            </div>
                            <div class="content">
                                <div id="chartActivity" class="ct-chart">
                                    <div align="left">
                                        <table bgcolor="" border="0" cellpadding="0" cellspacing="0" style="width: 1000px; height: 323px; font-family: 黑体;">

                                            <tr>
                                                <td class="auto-style18">
                                                    <div align="center" style="font-family: 黑体; color: #000000">
                                                        订单编号</div>
                                                </td>
                                                <td class="auto-style19">
                                                    <div align="left" class="form-control">
                                                        <asp:TextBox ID="TextBoxOrderID" runat="server" Height="23px" Width="140px" BorderStyle="None" ForeColor="Gray"></asp:TextBox>
                                                    </div>
                                                </td>
                                                <td class="auto-style20">
                                                    &nbsp;&nbsp;&nbsp; 1.<asp:Button ID="ButtonOrderID" runat="server" OnClick="ButtonOrderID_Click" Text="生成订单号" Height="24px" Width="100px" Font-Bold="True" BackColor="#5BC0DE" BorderStyle="None" ForeColor="White" />
                                                </td>
                                                <td class="auto-style21">
                                                    <div style="font-family: 黑体; color: #000000">
                                                        售价 <asp:TextBox ID="TextBoxPrice" runat="server" Width="73px" Height="30px" BorderStyle="None" ForeColor="Red"></asp:TextBox>
                                                        <br />
                                                        尺码数：<asp:Label ID="LabelSize" runat="server" Text="Size" ForeColor="Red"></asp:Label>
                                                    &nbsp;最小存货组数：<asp:Label ID="LabelNum" runat="server" Text="Num" ForeColor="Red"></asp:Label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">
                                                    <div align="center" style="font-family: 黑体; color: #000000">
                                                        产品编号</div>
                                                </td>
                                                <td class="auto-style7">
                                                    <div align="left" class="form-control">
                                                        <asp:TextBox ID="TextBoxGoodsID" runat="server" Height="21px" Width="140px" BorderStyle="None" ForeColor="Gray"></asp:TextBox>
                                                    </div>
                                                </td>
                                                <td class="auto-style10">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.<asp:Button ID="ButtonGoodsID" runat="server" OnClick="ButtonGoodsID_Click" Text="检测" Font-Bold="True" BackColor="#5BC0DE" BorderStyle="None" ForeColor="White" />
                                                    <br />
                                                    <br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.<asp:Button ID="ButtonNum" runat="server" Text="计算库存" OnClick="ButtonNum_Click" Width="68px" Font-Bold="True" BackColor="#5BC0DE" BorderStyle="None" ForeColor="White" />
                                                </td>
                                                <td class="auto-style15">
                                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StorageID" DataSourceID="SqlDataSourceNum" Width="291px" Height="119px">
                                                            <Columns>
                                                                <asp:BoundField DataField="GoodsColour" HeaderText="颜色" SortExpression="GoodsColour" />
                                                                <asp:BoundField DataField="GoodsSize" HeaderText="尺寸" SortExpression="GoodsSize" />
                                                                <asp:BoundField DataField="Num" HeaderText="存货（条）" SortExpression="Num" />
                                                            </Columns>
                                                        </asp:GridView>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style25">
                                                    <div align="center" style="font-family: 黑体; color: #000000">
                                                        产品颜色</div>
                                                </td>
                                                <td class="auto-style6">
                                                    <div align="left">
                                                        <asp:DropDownList ID="DropDownListGoodsColour" runat="server" DataSourceID="SqlDataSourceGoodsColour" DataTextField="GoodsColour" DataValueField="GoodsColour" ForeColor="Gray">
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                                <td class="auto-style27">
                                                </td><td class="auto-style24">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">
                                                    <div align="center" style="font-family: 黑体; color: #000000">
                                                        产品数量(组)</div>
                                                </td>
                                                <td class="auto-style7">
                                                    <div align="left" class="form-control">
                                                        <asp:TextBox ID="TextBoxBundle" runat="server" Width="128px" Height="16px" BorderStyle="None" ForeColor="Gray"></asp:TextBox>
                                                        </div>
                                                </td>
                                                <td class="auto-style10">
                                                        &nbsp;&nbsp;&nbsp;&nbsp; 4.<asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="添加" Width="71px" Font-Bold="True" BackColor="#5BC0DE" BorderStyle="None" ForeColor="White" />
                                                    </td><td class="auto-style15">
                                                    <asp:Label ID="LabelStep1" runat="server" ForeColor="Red"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=Data;Persist Security Info=True;User ID=sa;Password=good6565" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [CustomerName] FROM [Table_Customer]"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSourceGoodsColour" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT [GoodsColour] FROM [Table_Goods] WHERE ([GoodsID] = @GoodsID)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="GoodsID" SessionField="GoodsID" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <div align="left">
                                        <asp:SqlDataSource ID="SqlDataSourceNum" runat="server" ConnectionString="<%$ ConnectionStrings:130806117 %>" SelectCommand="SELECT * FROM [Table_Storage] WHERE ([GoodsID] = @GoodsID)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="GoodsID" SessionField="GoodsID" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>

                                <div class="footer">
                                    <div class="legend">
                                        <i class="fa fa-circle text-info"></i>
                                        <i class="fa fa-circle text-danger"></i> 
                                    </div>
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
                                <h4 class="title">第二步：清单</h4>
                                <p class="category">
                                                        Step2:查看数据清单，计算货款</p>
                            </div>
                            <div class="legend"><span name="postion" id="ChukuTip2"></span>
                                        <li style="width: 453px"><asp:ImageButton ID="ImageButton" runat="server" Height="16px" ImageUrl="~/assets/img/refresh.png" Width="16px" OnClick="ImageButton_Click" />
                                        <a href="HomeSstorage_Chuku.aspx">点击此处生成清单列表.</a></li>
                            </div>
                            <div class="content">
                                <div id="chartActivity2" class="ct-chart">
                                    <table>
                                        <tr>
                                            <td class="auto-style14">
                                                <div style="font-family: 黑体; color: #000000">
                                                    合计总金额</div>
                                            </td>
                                            <td class="auto-style13">
                                                <div class="form-control">
                                                    <asp:TextBox ID="TextBoxMoney" runat="server" BorderStyle="None" Height="30px" Width="198px"></asp:TextBox>
                                                </div>
                                            </td>
                                            <td class="auto-style17">
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                1.<asp:Button ID="ButtonSum" runat="server" OnClick="ButtonSum_Click" Text="确认订单计算货物总价" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" Width="161px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style14">
                                                <div style="font-family: 黑体; color: #000000; height: 25px;">
                                                    确认订单</div>
                                            </td>
                                            <td class="auto-style13" colspan="2">
                                                <div style="width: 550px">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    2.<asp:Button ID="ButtonReduce" runat="server" OnClick="ButtonReduce_Click" Text="确认提交清单" Width="185px" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                                                    <asp:Label ID="LabelStep2" runat="server" ForeColor="Red" Text=""></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <div>
                                        <asp:GridView ID="GridViewOrder" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TableID" DataSourceID="SqlDataSourceOrder" Width="650px">
                                            <Columns>
                                                <asp:BoundField DataField="TableID" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="TableID" />
                                                <asp:BoundField DataField="OrderID" HeaderText="订单号" SortExpression="OrderID" />
                                                <asp:BoundField DataField="GoodsID" HeaderText="产品编号" SortExpression="GoodsID" />
                                                <asp:BoundField DataField="GoodsColour" HeaderText="产品颜色" SortExpression="GoodsColour" />
                                                <asp:BoundField DataField="Bundle" HeaderText="包" SortExpression="Bundle" />
                                                <asp:BoundField DataField="Num" HeaderText="数量" SortExpression="Num" />
                                                <asp:BoundField DataField="Sum" HeaderText="货物金额" SortExpression="Sum" />
                                                <asp:BoundField DataField="Remark" HeaderText="备注" SortExpression="Remark" />
                                                <asp:CommandField HeaderText="操作选项" ShowDeleteButton="True" ShowEditButton="True" />
                                            </Columns>
                                            <FooterStyle BackColor="White" ForeColor="#000066" />
                                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                            <RowStyle ForeColor="#000066" />
                                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                                        </asp:GridView>
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSourceOrder" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:130806117 %>" DeleteCommand="DELETE FROM [Table_Order] WHERE [TableID] = @original_TableID AND [OrderID] = @original_OrderID AND [GoodsID] = @original_GoodsID AND [GoodsColour] = @original_GoodsColour AND [Num] = @original_Num AND [Sum] = @original_Sum AND (([Remark] = @original_Remark) OR ([Remark] IS NULL AND @original_Remark IS NULL))" InsertCommand="INSERT INTO [Table_Order] ([OrderID], [GoodsID], [GoodsColour], [Num], [Sum], [Remark]) VALUES (@OrderID, @GoodsID, @GoodsColour, @Num, @Sum, @Remark)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_Order] WHERE ([OrderID] = @OrderID)" UpdateCommand="UPDATE [Table_Order] SET [OrderID] = @OrderID, [GoodsID] = @GoodsID, [GoodsColour] = @GoodsColour, [Num] = @Num, [Sum] = @Sum, [Remark] = @Remark WHERE [TableID] = @original_TableID AND [OrderID] = @original_OrderID AND [GoodsID] = @original_GoodsID AND [GoodsColour] = @original_GoodsColour AND [Num] = @original_Num AND [Sum] = @original_Sum AND (([Remark] = @original_Remark) OR ([Remark] IS NULL AND @original_Remark IS NULL))">
                                            <DeleteParameters>
                                                <asp:Parameter Name="original_TableID" Type="Int32" />
                                                <asp:Parameter Name="original_OrderID" Type="Int32" />
                                                <asp:Parameter Name="original_GoodsID" Type="Int32" />
                                                <asp:Parameter Name="original_GoodsColour" Type="String" />
                                                <asp:Parameter Name="original_Num" Type="Int32" />
                                                <asp:Parameter Name="original_Sum" Type="Decimal" />
                                                <asp:Parameter Name="original_Remark" Type="String" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="OrderID" Type="Int32" />
                                                <asp:Parameter Name="GoodsID" Type="Int32" />
                                                <asp:Parameter Name="GoodsColour" Type="String" />
                                                <asp:Parameter Name="Num" Type="Int32" />
                                                <asp:Parameter Name="Sum" Type="Decimal" />
                                                <asp:Parameter Name="Remark" Type="String" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:SessionParameter Name="OrderID" SessionField="OrderID" Type="Int32" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="OrderID" Type="Int32" />
                                                <asp:Parameter Name="GoodsID" Type="Int32" />
                                                <asp:Parameter Name="GoodsColour" Type="String" />
                                                <asp:Parameter Name="Num" Type="Int32" />
                                                <asp:Parameter Name="Sum" Type="Decimal" />
                                                <asp:Parameter Name="Remark" Type="String" />
                                                <asp:Parameter Name="original_TableID" Type="Int32" />
                                                <asp:Parameter Name="original_OrderID" Type="Int32" />
                                                <asp:Parameter Name="original_GoodsID" Type="Int32" />
                                                <asp:Parameter Name="original_GoodsColour" Type="String" />
                                                <asp:Parameter Name="original_Num" Type="Int32" />
                                                <asp:Parameter Name="original_Sum" Type="Decimal" />
                                                <asp:Parameter Name="original_Remark" Type="String" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </div>
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
                                <h4 class="title">第三步：订单</h4>
                                <p class="category">
                                                        Step3：确认订单信息</p>
                            </div>
                            <div>
                            <table border="0" cellpadding="0" cellspacing="0" bgcolor="" style=" width: 500px; height: 20px;"auto-style1">
                                <td>                  
                                <div align="center" style="font-family: 黑体; font-weight: normal; color: #000000">
                                收货单位
                                </div></td>
                                                        <td class="auto-style6">
                                                    <div align="left">
                                                        <asp:DropDownList ID="DropDownListCustomerName" runat="server" DataSourceID="SqlDataSourceCustomer" DataTextField="CustomerName" DataValueField="CustomerName" Height="30px" Width="148px">
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                                <td >
                                                    &nbsp;&nbsp;&nbsp; <asp:Button ID="ButtonCustomer" runat="server" Height="25px" OnClick="ButtonCustomer_Click" Text="确认收货单位" Width="100px" Font-Bold="True" BackColor="#5BC0DE" BorderStyle="None" ForeColor="White" />
                                                </td>                                         
                            </tr>
                            <tr>
                                <td>
                                <div align="center" style="font-family: 黑体; font-weight: normal; color: #000000">
                                订单号
                                </div>
                                </td>
                                <td colspan="2">

                                    <asp:Label ID="LabelStep3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>

                                </td>
                            </tr>
                            </table>
                            </div>
                            <div class="content">
                                <div id="chartActivity3" class="ct-chart">
                                    <table border="0" cellpadding="0" cellspacing="0" bgcolor="" style=" width: 345px; height: 239px; font-family: 黑体;">
                                        <tr>
                                            <td class="auto-style34">
                                                <div style="font-family: 黑体; color: #000000">
                                                    收货人</div>
                                            </td>
                                            <td class="auto-style27">
                                                <div>
                                                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Gray"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style32">
                                                <div style="font-family: 黑体; color: #000000">
                                                    手机号</div>
                                            </td>
                                            <td class="auto-style33">
                                                <div>
                                                    <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Gray"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style35">
                                                <div style="font-family: 黑体; color: #000000">
                                                    收货地区</div>
                                            </td>
                                            <td class="auto-style11">
                                                <div>
                                                    <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Gray"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style35">
                                                <div style="font-family: 黑体; color: #000000">
                                                    详细地址</div>
                                            </td>
                                            <td class="auto-style11">
                                                <div>
                                                    <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Gray"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style35">
                                                <div style="font-family: 黑体; color: #000000">
                                                    运送的方式</div>
                                            </td>
                                            <td class="auto-style11">
                                                <div>
                                                    <asp:DropDownList ID="DropDownListShipType" runat="server" Height="25px" Width="99px">
                                                        <asp:ListItem>物流</asp:ListItem>
                                                        <asp:ListItem>快递</asp:ListItem>
                                                        <asp:ListItem>空运</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style35">
                                                <div style="font-family: 黑体; color: #000000">
                                                    运送的费用</div>
                                            </td>
                                            <td class="auto-style11">
                                                <div>
                                                    <asp:TextBox ID="TextBoxShipFee" runat="server" ForeColor="Gray"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style12">
                                                <asp:Button ID="ButtonOrder" runat="server" OnClick="ButtonOrder_Click" Text="提交订单" BackColor="#5BC0DE" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                                            </td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <div>
                                        <li><a href="OrderPrint.aspx" target="_top">前往打印页面</a><br />
                                        </li>
                                    </div>
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



       
        </div>
         </div>
         </div>



    </div>
    </form>
</body>
</html>
