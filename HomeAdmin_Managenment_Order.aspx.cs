using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Date"] = DateTime.Now.ToString("yyyy-MM-dd");

        LabelUserID.Text = "admin";//LabelUserID.Text = Session["UserId"].ToString();
        LabelDate.Text = Convert.ToDateTime(Session["Date"]).ToString("yyyy-MM-dd");
    }

    protected void ImageButtonQuery_Click(object sender, ImageClickEventArgs e)
    {
        Session["OrderID"] = this.TextBoxOrderID.Text.Trim().ToString();
    }
}