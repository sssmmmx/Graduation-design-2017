using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Date"] = DateTime.Now.ToString("yyyy-MM-dd");
        LabelUserID.Text = Session["UserId"].ToString();
        LabelDate.Text = Convert.ToDateTime(Session["Date"]).ToString("yyyy-MM-dd");
    }


    protected void ImageButtonReturn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script language=javascript> window.location.href='HomeStorage_Ruku.aspx';</script>");

    }

    protected void ImageButtonQuery_Click(object sender, ImageClickEventArgs e)
    {
        Session["UserID"] = Convert.ToString(TextBoxUserID.Text.Trim());
    }


    protected void GridViewTask_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int tableid = 0;
        string userid;
        int goodsid;
        string goodscolour;
        int goodssize;
        int num;
        decimal wages;

        int rowSelected = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "getid")
        {
            tableid = Convert.ToInt32(GridViewTask.Rows[rowSelected].Cells[0].Text);


            SqlConnection sqlCon = new SqlConnection("Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565");

            userid = Convert.ToString(GridViewTask.Rows[rowSelected].Cells[1].Text);
            goodsid = Convert.ToInt32(GridViewTask.Rows[rowSelected].Cells[2].Text);
            goodscolour = Convert.ToString(GridViewTask.Rows[rowSelected].Cells[3].Text);
            goodssize = Convert.ToInt32(GridViewTask.Rows[rowSelected].Cells[4].Text);
            num = Convert.ToInt32(GridViewTask.Rows[rowSelected].Cells[5].Text);
            wages = Convert.ToDecimal(GridViewTask.Rows[rowSelected].Cells[7].Text);

            sqlCon.Open();
            SqlCommand sqlCom = new SqlCommand();
            sqlCom.Connection = sqlCon;
            sqlCom.CommandText = "insert into Table_TaskComplete(TableID,GoodsID,GoodsColour,GoodsSize,Num,UserID,Wages)" + " values('" + tableid + "','" + goodsid + "','" + goodscolour + "','" + goodssize + "','" + num + "','" + userid + "','" + wages + "')";

            try
            {
                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Response.Write("<script language=javascript>alert('成功');");
                    sqlCon.Open();
                }
                else
                {
                    Response.Write("<script language=javascript>alert('失败');");
                }

                sqlCon.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Page:" + ex.Message);
                Response.Write("<script language=javascript>alert('失败');</script>");
            }

        }

    }


    protected void GridViewTaskComplet_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int tableid = 0;

        int rowSelected = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "getid")
        {
            tableid = Convert.ToInt32(GridViewTask.Rows[rowSelected].Cells[0].Text);

            SqlConnection sqlCon = new SqlConnection("Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565");

            sqlCon.Open();
            SqlCommand sqlCom = new SqlCommand();
            sqlCom.Connection = sqlCon;
            sqlCom.CommandText = "delete from Table_Task where TableID= + '" + tableid + "'";

            try
            {
                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Response.Write("<script language=javascript>alert('成功');");
                    sqlCon.Open();
                }
                else
                {
                    Response.Write("<script language=javascript>alert('失败');");
                }
                sqlCon.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Page:" + ex.Message);
                Response.Write("<script language=javascript>alert('失败');</script>");
            }

        }

    }

    protected void ButtonTaskComplet_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridViewTaskComplet.Rows)
        {
            int goodsid = Convert.ToInt32(row.Cells[1].Text);
            string goodscolour = Convert.ToString(row.Cells[2].Text);
            int goodssize = Convert.ToInt32(row.Cells[3].Text);

            int sum = Convert.ToInt32(row.Cells[5].Text);

            SqlConnection sqlCon = new SqlConnection("Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565");
            sqlCon.Open();
            SqlCommand sqlCom = new SqlCommand();
            sqlCom.Connection = sqlCon;
            sqlCom.CommandText = "update Table_Storage set Num = Num +'" + sum + "' where GoodsID = '" + goodsid + "'and GoodsColour ='" + goodscolour + "'and GoodsSize ='" + goodssize + "'";
            try
            {
                int sqlDa = sqlCom.ExecuteNonQuery();
                if (sqlDa != 0)
                {
                    this.LabelShenhe.Text = "提交成功";
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Page:" + ex.Message);
                this.LabelShenhe.Text = "提交失败";
            }
        }

    }



    protected void ImageButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script language=javascript> window.location.href=HomeStorage_Ruku.aspx';</script>");

    }


}