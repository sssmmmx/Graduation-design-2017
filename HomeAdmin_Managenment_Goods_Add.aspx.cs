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
        LabelUserID.Text = "admin";
        //LabelUserID.Text = Session["UserId"].ToString();
        LabelDate.Text = Convert.ToDateTime(Session["Date"]).ToString("yyyy-MM-dd");
    }

    protected void ImageButtonReturn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script language=javascript> window.location.href='HomeAdmin_Managenment_Goods.aspx';</script>");
    }

    protected void ButtonCheck_Click(object sender, EventArgs e)
    {
        Session["GoodsID"] = TextBoxGoodsID.Text.Trim();
        try
        {
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
                    this.LabelGoodsID.Text = "该产品存在，请换个编号";
                    TextBoxGoodsID.Text = "";
                }
                else
                {
                    sqlDr.Read();
                    this.LabelGoodsID.Text = "该产品不存在，可以使用";
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
    }

    protected void ButtonSize_Click(object sender, EventArgs e)
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565");
        try
        {
            /*TextBoxSize1*/

            if (Page.IsValid)
            {
                Session["GoodsID"] = TextBoxGoodsID.Text.Trim();


                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                int goodssize1 = Convert.ToInt32(TextBoxSize1.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Size(GoodsID,GoodsSize)" + " values('" + goodsid + "','" + goodssize1 + "')";

                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Session["TextBoxSize1"] = goodssize1;
                }
                else
                {
                    TextBoxSize1.Text = "";
                }
                sqlCon.Close();

            }



            /*TextBoxSize2*/
            if (Page.IsValid)
            {
                Session["GoodsID"] = TextBoxGoodsID.Text.Trim();


                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                int goodssize2 = Convert.ToInt32(TextBoxSize2.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Size(GoodsID,GoodsSize)" + " values('" + goodsid + "','" + goodssize2 + "')";

                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Session["TextBoxSize2"] = goodssize2;
                }
                else
                {
                    TextBoxSize1.Text = "";
                }
                sqlCon.Close();

            }



            /*TextBoxSize3*/
            if (Page.IsValid)
            {
                Session["GoodsID"] = TextBoxGoodsID.Text.Trim();


                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                int goodssize3 = Convert.ToInt32(TextBoxSize3.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Size(GoodsID,GoodsSize)" + " values('" + goodsid + "','" + goodssize3 + "')";

                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Session["TextBoxSize3"] = goodssize3;
                }
                else
                {
                    TextBoxSize1.Text = "";
                }
                sqlCon.Close();

            }



            /*TextBoxSize4*/
            if (Page.IsValid)
            {
                Session["GoodsID"] = TextBoxGoodsID.Text.Trim();

                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                int goodssize4 = Convert.ToInt32(TextBoxSize4.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Size(GoodsID,GoodsSize)" + " values('" + goodsid + "','" + goodssize4 + "')";

                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Session["TextBoxSize4"] = goodssize4;
                }
                else
                {
                    TextBoxSize4.Text = "";
                }
                sqlCon.Close();

            }



            /*TextBoxSize5*/
            if (Page.IsValid)
            {
                Session["GoodsID"] = TextBoxGoodsID.Text.Trim();


                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                int goodssize5 = Convert.ToInt32(TextBoxSize5.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Size(GoodsID,GoodsSize)" + " values('" + goodsid + "','" + goodssize5 + "')";

                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Session["TextBoxSize5"] = goodssize5;
                }
                else
                {
                    TextBoxSize5.Text = "";
                }
                sqlCon.Close();
            }
            this.Label1.Text = "尺码已添加";
        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
            this.Label1.Text = "尺码添加少于5个或者错误填写";
        }
    }

    protected void ButtonStorage_Click(object sender, EventArgs e)
    {
        Session["GoodsID"] = TextBoxGoodsID.Text.Trim();
        Session["GoodsColour"] = Convert.ToString(TextBoxGoodsColour.Text.Trim());
        SqlConnection sqlCon = new SqlConnection("Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565");
        try
        {
            /*第一个数据*/
            if (Page.IsValid)
            {
                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                string goodscolour = Convert.ToString(TextBoxGoodsColour.Text.Trim());
                int num = 0;
                if (TextBoxSize1.Text.Trim() == "")
                {
                    this.Label2.Text = "产品添加到仓库成功";
                    return;
                }
                int size1 = Convert.ToInt32(TextBoxSize1.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Storage(GoodsID, GoodsColour, GoodsSize, Num)" + " values('" + goodsid + "', '" + goodscolour + "', '" + size1 + "', '" + num + "')";


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
                string goodscolour = Convert.ToString(TextBoxGoodsColour.Text.Trim());
                int num = 0;
                if (TextBoxSize2.Text.Trim() == "")
                {
                    this.Label2.Text = "产品添加到仓库成功";
                    return;
                }
                int size2 = Convert.ToInt32(TextBoxSize2.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Storage(GoodsID, GoodsColour, GoodsSize, Num)" + " values('" + goodsid + "', '" + goodscolour + "', '" + size2 + "', '" + num + "')";


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
                string goodscolour = Convert.ToString(TextBoxGoodsColour.Text.Trim());
                int num = 0;
                if (TextBoxSize3.Text.Trim() == "")
                {
                    this.Label2.Text = "产品添加到仓库成功";
                    return;
                }
                int size3 = Convert.ToInt32(TextBoxSize1.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Storage(GoodsID, GoodsColour, GoodsSize, Num)" + " values('" + goodsid + "', '" + goodscolour + "', '" + size3 + "', '" + num + "')";


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
                string goodscolour = Convert.ToString(TextBoxGoodsColour.Text.Trim());
                int num = 0;
                if (TextBoxSize4.Text.Trim() == "")
                {
                    this.Label2.Text = "产品添加到仓库成功";
                    return;
                }
                int size4 = Convert.ToInt32(TextBoxSize4.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Storage(GoodsID, GoodsColour, GoodsSize, Num)" + " values('" + goodsid + "', '" + goodscolour + "', '" + size4 + "', '" + num + "')";


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
                string goodscolour = Convert.ToString(TextBoxGoodsColour.Text.Trim());
                int num = 0;
                if (TextBoxSize5.Text.Trim() == "")
                {
                    this.Label2.Text = "产品添加到仓库成功";
                    return;
                }
                int size5 = Convert.ToInt32(TextBoxSize5.Text.Trim());

                sqlCon.Open();
                SqlCommand sqlCom = new SqlCommand();
                sqlCom.Connection = sqlCon;

                sqlCom.CommandText = "insert into Table_Storage(GoodsID, GoodsColour, GoodsSize, Num)" + " values('" + goodsid + "', '" + goodscolour + "', '" + size5 + "', '" + num + "')";


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
            this.Label2.Text = "产品添加到仓库成功";
        }

        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
            this.Label2.Text = "仓库已存在";


        }
    }

    protected void ButtonMoney_Click(object sender, EventArgs e)
    {
        Session["GoodsID"] = TextBoxGoodsID.Text.Trim();


        int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
        decimal cost = Convert.ToDecimal(TextBoxCost.Text.Trim());
        decimal price = Convert.ToDecimal(TextBoxPrice.Text.Trim());
        int sizenum = Convert.ToInt32(DropDownListSizenum.Text);
        decimal wages = Convert.ToDecimal(TextBoxWages.Text.Trim());

        SqlConnection sqlCon = new SqlConnection();
        sqlCon.ConnectionString = "Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565";
        sqlCon.Open();
        SqlCommand sqlCom = new SqlCommand();
        sqlCom.Connection = sqlCon;

        sqlCom.CommandText = "insert into Table_Price(GoodsID,Cost,Price,Sizenum,Wages)" + " values('" + goodsid + "','" + cost + "','" + price + "','" + sizenum + "','" + wages + "')";

        try
        {
            int sqlDr = sqlCom.ExecuteNonQuery();
            if (sqlDr != 0)
            {
                this.Label3.Text = "价格添加成功";
            }
            else
            {
                this.Label3.Text = "价格添加失败";
            }
            sqlCon.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
            this.Label3.Text = "价格添加产生错误";
        }
    }

    protected void ButtonGoods_Click(object sender, EventArgs e)
    {
        Session["GoodsID"] = TextBoxGoodsID.Text.Trim();


        int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
        string goodsname = Convert.ToString(TextBoxGoodsName.Text.Trim());
        string goodscolour = Convert.ToString(TextBoxGoodsColour.Text.Trim());
        int factoryid = Convert.ToInt32(DropDownListFatory.Text);
        decimal cost = Convert.ToDecimal(TextBoxCost.Text.Trim());
        decimal price = Convert.ToDecimal(TextBoxPrice.Text.Trim());

        SqlConnection sqlCon = new SqlConnection();
        sqlCon.ConnectionString = "Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565";
        sqlCon.Open();
        SqlCommand sqlCom = new SqlCommand();
        sqlCom.Connection = sqlCon;

        sqlCom.CommandText = "insert into Table_Goods(GoodsID,GoodsName,GoodsColour,FactoryID,Cost,Price)" + " values('" + goodsid + "','" + goodsname + "','" + goodscolour + "','" + factoryid + "','" + cost + "','" + price + "')";

        try
        {
            int sqlDr = sqlCom.ExecuteNonQuery();
            if (sqlDr != 0)
            {
                this.Label4.Text = "产品列表添加成功";
            }
            else
            {
                Response.Write("<script language=javascript>alert('已存在价格信息，更改请进入价格管理界面修改');</script>");
            }
            sqlCon.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
            Response.Write("<script language=javascript>alert('错误');</script>");
            TextBoxGoodsID.Text = "";
            TextBoxGoodsName.Text = "";
            DropDownListFatory.SelectedValue = "1";
            TextBoxCost.Text = "";
            TextBoxPrice.Text = "";
        }
    }

    protected void Buttonyijian_Click(object sender, EventArgs e)
    {
        this.TextBoxSize1.Text = "2";
        this.TextBoxSize2.Text = "4";
        this.TextBoxSize3.Text = "6";
        this.TextBoxSize4.Text = "8";
        this.TextBoxSize5.Text = "10";
        this.DropDownListSizenum.Text = "5";

    }

}