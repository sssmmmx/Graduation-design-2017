<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderPrint.aspx.cs" Inherits="OrderPrint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<script language="javascript">
function preview()
{
 bdhtml=window.document.body.innerHTML;
 sprnstr="<!--startprint-->";
 eprnstr="<!--endprint-->";
 prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17);
 prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));
 window.document.body.innerHTML=prnhtml;
 window.print();
 //prnform.htext.value=prnhtml;
 //prnform.submit();
 //alert(prnhtml);
}
</script>    
</head>
<body>
    <form id="form1" runat="server">
<center></center>
<!--startprint-->
    <div align="center"><table style="width: 699px; height: 490px;">
        <tr>
            <td><div align="left">订单号：<asp:Label ID="LabelOrderID" runat="server" Text="OrderID"></asp:Label>
            </div></td>
            <td></td>
            <td><div align="right">日期：<asp:Label ID="LabelDate" runat="server" Text="YYYY-MM-DD"></asp:Label>
            </div></td>
        </tr>
        <tr>
            <td><div align="left">收货人：<asp:Label ID="LabelName" runat="server" Text="Label"></asp:Label>
            </div></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td><div align="left">货物总金额：<asp:Label ID="LabelGoodsFee" runat="server" Text="Label"></asp:Label>
                </div></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><div align="left">货运的方式：<asp:Label ID="LabelShipType" runat="server" Text="Label"></asp:Label>
                </div></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><div align="left">货运的费用：<asp:Label ID="LabelShipFee" runat="server" Text="Label"></asp:Label>
                </div></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><div align="left">订单总金额：<asp:Label ID="LabelSumFee" runat="server" Text="Label"></asp:Label>
                </div></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="3"><div align="left">详细地址：<asp:Label ID="LabelReceiverAddress" runat="server" Text="Label"></asp:Label>
                </div></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td><div align="right">发货人：xxx服装厂</div></td>
        </tr>
    </table>
<!--endprint-->
<center></center>

    </div>
        
    <div>
        <input type="button" name="print" value="预览并打印" onclick="preview()">
    </div>
<style>
@media print {
   .Noprn {display:none;}
}
    #form1 {
        height: 564px;
    }
</style>
<p class="Noprn">&nbsp;</p>
    </form>
</body>
</html>
