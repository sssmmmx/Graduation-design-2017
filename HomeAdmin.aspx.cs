using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeAdmin : System.Web.UI.Page
{
    int a101 = 0;int a102 = 0; int a103 = 0; int a104 = 0; int a105 = 0;
    int a201 = 0; int a202 = 0; int a203 = 0; int a204 = 0; int a205 = 0;
    int a301 = 0; int a302 = 0; int a303 = 0; int a304 = 0; int a305 = 0;

    protected void Page_Load(object sender, EventArgs e)
    {      
        Session["RankDate"]= DateTime.Now.ToString("yyyy-MM");
        Session["Date"] = DateTime.Now.ToString("yyyy-MM-dd");
        LabelUserID.Text = "admin";
        //LabelUserID.Text = Session["UserId"].ToString();
        LabelDate.Text = Convert.ToDateTime(Session["Date"]).ToString("yyyy-MM-dd");
        Session["Name"] = "阿芳";
        Session["GoodsID"] = "101";
        Session["Calendar1"] = Convert.ToDateTime("2017-01-01");
        Session["Calendar2"] = Convert.ToDateTime("2017-12-30");


    }


    protected void ImageButtonName_Click(object sender, ImageClickEventArgs e)
    {
        Session["Name"] = this.DropDownListCustomerName.Text.Trim();
    }

    protected void ButtonGoodsRank_Click(object sender, EventArgs e)
    {
        Session["RankDate"] = this.DropDownList1.SelectedValue;
        String dt = Convert.ToString(Session["RankDate"]).ToString();
        this.LabelGoodsRank.Text= dt.ToString();

        SqlConnection sqlCon = new SqlConnection();
        sqlCon.ConnectionString = "Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565";
        sqlCon.Open();
        SqlCommand sqlCom = new SqlCommand();
        sqlCom.Connection = sqlCon;

        sqlCom.CommandText = "Update Table_Goods set RankNum=0 ";
        int sqlDa = sqlCom.ExecuteNonQuery();
        if (sqlDa != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }



        //101
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '101'";
        SqlDataReader sqlDr101 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象

            if (sqlDr101.Read())
            {
                a101 = sqlDr101.GetInt32(0);
            }
            sqlDr101.Close();                                                                                               


        sqlCom.CommandText = "Update Table_Goods set RankNum='"+ a101 +"' where GoodsID='101' ";
        int sqlDa101 = sqlCom.ExecuteNonQuery();
        if (sqlDa101 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else {
            this.LabelGoodsRank2.Text = "未更新";
        }
        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //102
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '102'";
        SqlDataReader sqlDr102 = sqlCom.ExecuteReader();                                                               

            if (sqlDr102.Read())
        {
            a102 = sqlDr102.GetInt32(0);
        }
        sqlDr102.Close();

        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a102 + "' where GoodsID='102' ";
        int sqlDa102 = sqlCom.ExecuteNonQuery();
        if (sqlDa102 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }
        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //103
        try
        {
           sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '103'";
        SqlDataReader sqlDr103 = sqlCom.ExecuteReader();                                                              

        if (sqlDr103.Read())
        {
            a103 = sqlDr103.GetInt32(0);
        }
        sqlDr103.Close();

        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a103 + "' where GoodsID='103' ";
        int sqlDa103 = sqlCom.ExecuteNonQuery();
        if (sqlDa103 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }

        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }



        //104
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '104'";
        SqlDataReader sqlDr104 = sqlCom.ExecuteReader();                                                                

        if (sqlDr104.Read())
        {
            a104 = sqlDr104.GetInt32(0);
        }
        sqlDr104.Close();

        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a104 + "' where GoodsID='104' ";
        int sqlDa104 = sqlCom.ExecuteNonQuery();
        if (sqlDa104 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }

        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }


        //105
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '105'";
        SqlDataReader sqlDr105 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象

        if (sqlDr105.Read())
        {
            a105 = sqlDr105.GetInt32(0);
        }
        sqlDr105.Close();

        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a105 + "' where GoodsID='105' ";
        int sqlDa105 = sqlCom.ExecuteNonQuery();
        if (sqlDa105 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }

        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //201
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '201'";
        SqlDataReader sqlDr201 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象

        if (sqlDr201.Read())
        {
            a201 = sqlDr201.GetInt32(0);
        }
        sqlDr201.Close();
        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a201 + "' where GoodsID='201' ";
        int sqlDa201 = sqlCom.ExecuteNonQuery();
        if (sqlDa201 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }
        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //202
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '202'";
        SqlDataReader sqlDr202 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象

        if (sqlDr202.Read())
        {
            a202 = sqlDr202.GetInt32(0);
        }
        sqlDr202.Close();
        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a202 + "' where GoodsID='202' ";
        int sqlDa202 = sqlCom.ExecuteNonQuery();
        if (sqlDa202 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }
        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //203
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '203'";
        SqlDataReader sqlDr203 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象

        if (sqlDr203.Read())
        {
            a203 = sqlDr203.GetInt32(0);
        }
        sqlDr203.Close();
        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a203 + "' where GoodsID='203' ";
        int sqlDa203 = sqlCom.ExecuteNonQuery();
        if (sqlDa203 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }

        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //204
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '204'";
        SqlDataReader sqlDr204 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象

            if (sqlDr204.Read())
        {
            a204 = sqlDr204.GetInt32(0);
        }
        sqlDr204.Close();
        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a204 + "' where GoodsID='204' ";
        int sqlDa204 = sqlCom.ExecuteNonQuery();
        if (sqlDa204 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }

        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //205
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '205'";
        SqlDataReader sqlDr205 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象

        if (sqlDr205.Read())
        {
            a205 = sqlDr205.GetInt32(0);
        }
        sqlDr205.Close();
        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a205 + "' where GoodsID='205' ";
        int sqlDa205 = sqlCom.ExecuteNonQuery();
        if (sqlDa205 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }

        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //301
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '301'";
        SqlDataReader sqlDr301 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象

        if (sqlDr301.Read())
        {
            a301 = sqlDr301.GetInt32(0);
        }
        sqlDr301.Close();

        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a301 + "' where GoodsID='301' ";
        int sqlDa301 = sqlCom.ExecuteNonQuery();
        if (sqlDa301 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }

        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //302
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '302'";
        SqlDataReader sqlDr302 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象

        if (sqlDr302.Read())
        {
            a302 = sqlDr302.GetInt32(0);
        }
        sqlDr302.Close();

        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a302 + "' where GoodsID='302' ";
        int sqlDa302 = sqlCom.ExecuteNonQuery();
        if (sqlDa302 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }

        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //303
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '303'";
        SqlDataReader sqlDr303 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象
            if (sqlDr303.Read())
        {
            a303 = sqlDr303.GetInt32(0);
        }
        sqlDr303.Close();

        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a303 + "' where GoodsID='303' ";
        int sqlDa303 = sqlCom.ExecuteNonQuery();
        if (sqlDa303 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }

        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //304
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '304'";
        SqlDataReader sqlDr304 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象

            if (sqlDr304.Read())
        {
            a304 = sqlDr304.GetInt32(0);
        }
        sqlDr304.Close();

        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a304 + "' where GoodsID='304' ";
        int sqlDa304 = sqlCom.ExecuteNonQuery();
        if (sqlDa304 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "未更新";
        }

        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

        //305
        try
        {
            sqlCom.CommandText = "Select SUM(Num)From Table_Order Where Date = '" + dt + "' and GoodsID = '305'";
        SqlDataReader sqlDr305 = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象


            if (sqlDr305.Read())
        {
            a305 = sqlDr305.GetInt32(0);
        }
        sqlDr305.Close();

        sqlCom.CommandText = "Update Table_Goods set RankNum='" + a305 + "' where GoodsID='305' ";
        int sqlDa305 = sqlCom.ExecuteNonQuery();
        if (sqlDa305 != 0)
        {
            this.LabelGoodsRank2.Text = "已更新";
        }
        else
        {
            this.LabelGoodsRank2.Text = "已更新";
        }

        }
        catch (Exception ex)
        {
            Console.WriteLine("Page:" + ex.Message);
        }

    }

    protected void ButtonGoodsID_Click(object sender, EventArgs e)
    {
        Session["GoodsID"] = this.DropDownList2.SelectedValue;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Label1.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
        this.Label2.Text = Calendar2.SelectedDate.ToString("yyyy-MM-dd");

        Session["Calendar1"] = Convert.ToDateTime(this.Label1.Text);
        Session["Calendar2"] = Convert.ToDateTime(this.Label2.Text);
    }
}