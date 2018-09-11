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
        LabelUserID.Text = "admin";
        //LabelUserID.Text = Session["UserId"].ToString();
        LabelDate.Text = Convert.ToDateTime(Session["Date"]).ToString("yyyy-MM-dd");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script language=javascript> window.location.href='HomeAdmin_Managenment_Into_Task.aspx';</script>");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script language=javascript> window.location.href='HomeAdmin_Managenment_Into_Ruku.aspx';</script>");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script language=javascript> window.location.href='HomeAdmin_Managenment_Into_Chuku.aspx';</script>");
    }
}