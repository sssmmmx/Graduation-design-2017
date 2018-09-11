using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderPrint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LabelOrderID.Text = Session["OrderID"].ToString();
        this.LabelDate.Text= DateTime.Now.ToString("yyyy-MM-dd");
        this.LabelName.Text = Session["Name"].ToString();
        this.LabelGoodsFee.Text = Session["GoodsFee"].ToString();
        this.LabelShipType.Text = Session["ShipType"].ToString();
        this.LabelShipFee.Text = Session["ShipFee"].ToString();
        this.LabelSumFee.Text = Session["SumFee"].ToString();
        this.LabelReceiverAddress.Text = Session["Address"].ToString();
    }
}