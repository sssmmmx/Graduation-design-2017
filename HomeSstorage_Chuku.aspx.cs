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
        Session["CustomerName"] = "123";
        Session["Date"] = DateTime.Now.ToString("yyyy-MM-dd");
        LabelUserID.Text = Session["UserId"].ToString();
        LabelDate.Text = Convert.ToDateTime(Session["Date"]).ToString("yyyy-MM-dd");
    }


//1


    protected void ButtonOrderID_Click(object sender, EventArgs e)
    {
        SqlConnection sqlCon = new SqlConnection();
        sqlCon.ConnectionString = "Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565";
        sqlCon.Open();
        SqlCommand sqlCom = new SqlCommand();
        sqlCom.Connection = sqlCon;
        sqlCom.CommandText = "Select * From  Table_OrderInfo WHERE OrderID =(Select max(OrderID) From  Table_OrderInfo)";
        SqlDataReader sqlDr = sqlCom.ExecuteReader();
        if (sqlDr.Read())
        {
            this.TextBoxOrderID.Text = (sqlDr.GetSqlInt32(0) + 1).ToString();
        }
        sqlDr.Close();
        sqlCon.Close();

        Session["OrderID"] = this.TextBoxOrderID.Text.Trim().ToString();
    }

    protected void ButtonGoodsID_Click(object sender, EventArgs e)
    {
        Session["GoodsID"] = TextBoxGoodsID.Text.Trim();

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

            this.TextBoxPrice.Text = sqlDr.GetDecimal(2).ToString();
            this.LabelSize.Text = sqlDr.GetInt32(3).ToString();
        }
        else
        {
            sqlDr.Read();
            TextBoxGoodsID.Text = "";
        }
        sqlDr.Close();
        sqlCon.Close();

    }

    protected void ButtonNum_Click(object sender, EventArgs e)
    {
        int a = 99999;
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (a > Convert.ToInt32(row.Cells[2].Text))
            {
                a = Convert.ToInt32(row.Cells[2].Text);
            }
        }
        this.LabelNum.Text = a.ToString();
        Session["a"] = Convert.ToInt32(this.LabelNum.Text);
    }



    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        
        SqlConnection sqlCon = new SqlConnection("Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565");

        if (Page.IsValid)
        {
            try
            {
                Session["OrderID"] = TextBoxOrderID.Text.Trim();
                Session["GoodsID"] = TextBoxGoodsID.Text.Trim();
                Session["Price"] = TextBoxPrice.Text.Trim();
                Session["GoodsColour"] = DropDownListGoodsColour.Text.Trim();
                Session["Bundle"] = TextBoxBundle.Text.Trim();
                Session["RankDate"] = DateTime.Now.ToString("yyyy-MM");

                int orderid = Convert.ToInt32(TextBoxOrderID.Text.Trim());
                int goodsid = Convert.ToInt32(TextBoxGoodsID.Text.Trim());
                decimal price = Convert.ToDecimal(TextBoxPrice.Text.Trim());
                string goodscolour = DropDownListGoodsColour.Text.Trim();
                String dt = Convert.ToString(Session["RankDate"]).ToString();
                int bundle = Convert.ToInt32(TextBoxBundle.Text.Trim());
                if (bundle < Convert.ToInt32(Session["a"]) && bundle > 0)
                {


                    int num = bundle * Convert.ToInt32(this.LabelSize.Text);
                    decimal sum = Convert.ToDecimal(TextBoxPrice.Text.Trim());
                    sum = price * num;

                    sqlCon.Open();
                    SqlCommand sqlCom = new SqlCommand();
                    sqlCom.Connection = sqlCon;
                    sqlCom.CommandText = "insert into Table_Order(OrderID,GoodsID,GoodsColour,Bundle,Num,Sum,Date)" + " values('" + orderid + "','" + goodsid + "','" + goodscolour + "','" + bundle + "','" + num + "','" + sum + "','"+ dt +"')";

                    int sqlDr = sqlCom.ExecuteNonQuery();
                    if (sqlDr != 0)
                    {
                        this.LabelStep1.Text = "添加成功";
                        TextBoxGoodsID.Text = "";
                        TextBoxPrice.Text = "";
                        TextBoxBundle.Text = "";
                        Session["OrderID"] = TextBoxOrderID.Text.Trim();

                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('添加失败,请核对信息');</script>");
                    }
                    sqlCon.Close();
                }
                else {
                    Response.Write("<script language=javascript>alert('输入正确数字');</script>");
                    this.TextBoxBundle.Text = "";
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Page:" + ex.Message);
                Response.Write("<script language=javascript>alert('添加失败');</script>");
            }
        }


    }

    //2

    protected void ImageButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script language=javascript> window.location.href='HomeAdmin_Managenment_Into_Chuku.aspx';</script>");
    }



    protected void ButtonSum_Click(object sender, EventArgs e)
    {
        decimal s = 0;
        foreach (GridViewRow row in GridViewOrder.Rows)
        {
            s += Convert.ToDecimal(row.Cells[6].Text);
        }
        this.TextBoxMoney.Text = s.ToString();
        Session["GoodsFee"] = this.TextBoxMoney.Text.Trim();
        this.ButtonReduce.Focus();
    }

    protected void ButtonReduce_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridViewOrder.Rows)
        {
            int goodsid = Convert.ToInt32(row.Cells[2].Text);
            string goodscolour = Convert.ToString(row.Cells[3].Text);

            int number = Convert.ToInt32(row.Cells[4].Text);

            SqlConnection sqlCon = new SqlConnection("Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565");
            sqlCon.Open();
            SqlCommand sqlCom = new SqlCommand();
            sqlCom.Connection = sqlCon;
            sqlCom.CommandText = "update Table_Storage set Num = Num -'" + number + "' where GoodsID = '" + goodsid + "'and GoodsColour ='" + goodscolour + "'";
            try
            {
                int sqlDa = sqlCom.ExecuteNonQuery();
                if (sqlDa != 0)
                {
                    this.LabelStep2.Text = "成功提交";
                }
                this.ButtonReduce.Focus();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Page:" + ex.Message);
                Response.Write("<script language=javascript>alert('错误');</script>");
            }
        }
    }

    //3
          protected void ButtonCustomer_Click(object sender, EventArgs e)
    {
        this.LabelStep3.Text = Convert.ToString(Session["OrderID"]).ToString();
        Session["CustomerName"] = this.DropDownListCustomerName.Text.Trim();
        SqlConnection sqlCon = new SqlConnection();
        sqlCon.ConnectionString = "Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565";
        sqlCon.Open();
        SqlCommand sqlCom = new SqlCommand();
        sqlCom.Connection = sqlCon;
        sqlCom.CommandText = "Select * From Table_Customer Where CustomerName=+'" + Session["CustomerName"].ToString() + "'";

        SqlDataReader sqlDr = sqlCom.ExecuteReader();
        if (sqlDr.HasRows)
        {
            sqlDr.Read();
            Label1.Text = sqlDr.GetString(1);
            Label2.Text = sqlDr.GetString(2);
            Label3.Text = sqlDr.GetString(3);
            Label4.Text = sqlDr.GetString(4);
            sqlDr.Close();
            sqlCon.Close();
        }
        else
        {
            Label1.Text = "";
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";
        }

        this.ButtonOrder.Focus();
    }



             protected void ButtonOrder_Click(object sender, EventArgs e)
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565");

        if (Page.IsValid)
        {
            int orderid = Convert.ToInt32(Session["OrderID"]);
            decimal goodsfee = Convert.ToDecimal(Session["GoodsFee"]);
            decimal shipfee = Convert.ToDecimal(TextBoxShipFee.Text.Trim());
            decimal sumfee = goodsfee + shipfee;
            string shiptype = DropDownListShipType.Text.Trim();
            string receivername = Label1.Text;
            string receiverphone = Label2.Text;
            string receiverarea = Label3.Text;
            string receiveraddress = Label4.Text;

            sqlCon.Open();
            SqlCommand sqlCom = new SqlCommand();
            sqlCom.Connection = sqlCon;
            sqlCom.CommandText = "insert into Table_OrderInfo(OrderID,GoodsFee,ShipFee,SumFee,ShipType,ReceiverName,ReceiverPhone, ReceiverArea,ReceiverAddress)" + " values('" + orderid + "','" + goodsfee + "','" + shipfee + "','" + sumfee + "','" + shiptype + "','" + receivername + "','" + receiverphone + "','" + receiverarea + "','" + receiveraddress + "')";

            try
            {
                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    Session["Order"] = Convert.ToInt32(orderid);
                    Session["Name"] = Label1.Text.ToString();
                    Session["ShipType"] = DropDownListShipType.Text.Trim().ToString();
                    Session["ShipFee"] = Convert.ToDecimal(TextBoxShipFee.Text.Trim());
                    Session["SumFee"] = Convert.ToDecimal(sumfee);
                    Session["Address"] = Label4.Text.ToString();
                    this.Label5.Text = "已提交";
                }
                else
                {
                    Session["Name"] = Label1.Text.ToString();
                    Session["ShipType"] = DropDownListShipType.Text.Trim().ToString();
                    Session["ShipFee"] = Convert.ToDecimal(TextBoxShipFee.Text.Trim());
                    Session["SumFee"] = Convert.ToDecimal(sumfee);
                    Session["Address"] = Label4.Text.ToString();
                }
                sqlCon.Close();
                this.ButtonOrder.Focus();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Page:" + ex.Message);
                Response.Write("<script language=javascript>alert('提交失败');</script>");
            }
        }
    }


}