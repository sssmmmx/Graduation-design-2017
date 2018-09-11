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
        Session["GoodsID"] = "";
    }



    protected void ImageButtonReturn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script language=javascript> window.location.href='HomeAdmin_Managenment_Into.aspx';</script>");

    }

    protected void ButtonCheck_Click(object sender, EventArgs e)
    {
        try
        {
            Session["GoodsID"] = TextBoxGoodsID.Text.Trim();
            if (Convert.ToInt32(Session["GoodsID"]) > 0)
            {

                SqlConnection sqlCon = new SqlConnection();
                sqlCon.ConnectionString = "Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565";
                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "select * from Table_Price where GoodsID= + '" + TextBoxGoodsID.Text + "'";

                SqlDataReader sqlDr = sqlCom.ExecuteReader();
                if (sqlDr.HasRows)
                {
                    sqlDr.Read();
                    this.LabelGoodsID.Text = "该产品存在";
                    this.LabelWages.Text = sqlDr.GetDecimal(4).ToString();
                }
                else
                {
                    sqlDr.Read();
                    this.LabelGoodsID.Text = "该产品不存在";
                    TextBoxGoodsID.Text = "";
                }
                sqlDr.Close();
                sqlCon.Close();
            }
            else
            {
                this.LabelGoodsID.Text = "请输入正整数";
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
            this.LabelGoodsID.Text = "请输入正整数";


        }
        this.ButtonTask.Focus();
    }


    protected void ButtonTask_Click(object sender, EventArgs e)
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565");
        Session["GoodsColour"] = Convert.ToString(DropDownListGoodsColour.Text);
        try
        {
            Session["Num"] = Convert.ToInt32(TextBoxGoodsNum.Text.Trim());
            /*第一个数据*/
            if (Page.IsValid)
            {
                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                string goodscolour = Convert.ToString(DropDownListGoodsColour.Text);
                int num = Convert.ToInt32(TextBoxGoodsNum.Text.Trim());
                decimal wages = num * Convert.ToDecimal(LabelWages.Text);
                if (TextBoxSize1.Text.Trim() == "")
                {
                    Response.Write("<script language=javascript>alert('添加成功');</script>");
                    return;
                }
                int size1 = Convert.ToInt32(TextBoxSize1.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Task(GoodsID, GoodsColour, GoodsSize, Num, Wages)" + " values('" + goodsid + "', '" + goodscolour + "', '" + size1 + "', '" + num + "', '" + wages + "')";


                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Session["TextBoxSize1"] = size1;
                }
                else
                {
                    TextBoxSize1.Text = "";
                }
                sqlCon.Close();
            }



            /*第二个数据*/
            if (Page.IsValid)
            {
                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                string goodscolour = Convert.ToString(DropDownListGoodsColour.Text);
                int num = Convert.ToInt32(TextBoxGoodsNum.Text.Trim());
                decimal wages = num * Convert.ToDecimal(LabelWages.Text);
                if (TextBoxSize2.Text.Trim() == "")
                {
                    Response.Write("<script language=javascript>alert('添加成功');</script>");
                    return;
                }
                int size2 = Convert.ToInt32(TextBoxSize2.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Task(GoodsID, GoodsColour, GoodsSize, Num, Wages)" + " values('" + goodsid + "', '" + goodscolour + "', '" + size2 + "', '" + num + "', '" + wages + "')";


                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Session["TextBoxSize2"] = size2;
                }
                else
                {
                    TextBoxSize2.Text = "";
                }
                sqlCon.Close();
            }



            /*第三个数据*/
            if (Page.IsValid)
            {
                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                string goodscolour = Convert.ToString(DropDownListGoodsColour.Text);
                int num = Convert.ToInt32(TextBoxGoodsNum.Text.Trim());
                decimal wages = num * Convert.ToDecimal(LabelWages.Text);
                if (TextBoxSize3.Text.Trim() == "")
                {
                    Response.Write("<script language=javascript>alert('添加成功');</script>");
                    return;
                }
                int size3 = Convert.ToInt32(TextBoxSize3.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Task(GoodsID, GoodsColour, GoodsSize, Num, Wages)" + " values('" + goodsid + "', '" + goodscolour + "', '" + size3 + "', '" + num + "', '" + wages + "')";


                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Session["TextBoxSize3"] = size3;
                }
                else
                {
                    TextBoxSize3.Text = "";
                }
                sqlCon.Close();
            }

            /*第四个数据*/
            if (Page.IsValid)
            {
                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                string goodscolour = Convert.ToString(DropDownListGoodsColour.Text);
                int num = Convert.ToInt32(TextBoxGoodsNum.Text.Trim());
                decimal wages = num * Convert.ToDecimal(LabelWages.Text);
                if (TextBoxSize4.Text.Trim() == "")
                {
                    Response.Write("<script language=javascript>alert('添加成功');</script>");
                    return;
                }
                int size4 = Convert.ToInt32(TextBoxSize4.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Task(GoodsID, GoodsColour, GoodsSize, Num, Wages)" + " values('" + goodsid + "', '" + goodscolour + "', '" + size4 + "', '" + num + "', '" + wages + "')";


                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Session["TextBoxSize4"] = size4;
                }
                else
                {
                    TextBoxSize4.Text = "";
                }
                sqlCon.Close();
            }

            /*第五个数据*/
            if (Page.IsValid)
            {
                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                string goodscolour = Convert.ToString(DropDownListGoodsColour.Text);
                int num = Convert.ToInt32(TextBoxGoodsNum.Text.Trim());
                decimal wages = num * Convert.ToDecimal(LabelWages.Text);
                if (TextBoxSize5.Text.Trim() == "")
                {
                    Response.Write("<script language=javascript>alert('添加成功');</script>");
                    return;
                }
                int size5 = Convert.ToInt32(TextBoxSize5.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Task(GoodsID, GoodsColour, GoodsSize, Num, Wages)" + " values('" + goodsid + "', '" + goodscolour + "', '" + size5 + "', '" + num + "', '" + wages + "')";


                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Session["TextBoxSize5"] = size5;
                }
                else
                {
                    TextBoxSize5.Text = "";
                }
                sqlCon.Close();
            }
            Session["GoodsID"] = TextBoxGoodsID.Text.Trim();
            this.Label1.Text = "添加成功，请前往上面的任务中心进行任务分配";
            this.ButtonTask.Focus();
        }

        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
            Response.Write("<script language=javascript>alert('系统错误');</script>");
            TextBoxGoodsID.Text = "";
            TextBoxSize1.Text = "";
            TextBoxSize2.Text = "";
            TextBoxSize3.Text = "";
            TextBoxSize4.Text = "";
            TextBoxSize5.Text = "";
            DropDownListGoodsColour.SelectedValue = "";
            TextBoxGoodsNum.Text = "";

        }
    }

    protected void Buttonyijian_Click(object sender, EventArgs e)
    {
        this.TextBoxSize1.Text = "2";
        this.TextBoxSize2.Text = "4";
        this.TextBoxSize3.Text = "6";
        this.TextBoxSize4.Text = "8";
        this.TextBoxSize5.Text = "10";
        this.ButtonTask.Focus();
    }


}