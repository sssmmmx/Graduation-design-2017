using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeAdmin : System.Web.UI.Page
{
    SqlConnection sqlCon = new SqlConnection("Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565");

    static DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Date"] = DateTime.Now.ToString("yyyy-MM-dd");
        LabelUserID.Text = Session["UserId"].ToString();
        LabelDate.Text = Convert.ToDateTime(Session["Date"]).ToString("yyyy-MM-dd");
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void Button_submit(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Session["DropDownList1"] = DropDownList1.Text.Trim();
            Session["UserId"] = UserId.Text.Trim();
            Session["UserPassword"] = UserPassword.Text.Trim();
            Session["UserName"] = UserName.Text.Trim();
            Session["DropDownList2"] = DropDownList2.Text.Trim();
            Session["UserPhone"] = UserPhone.Text.Trim();

            string dropdownlist1 = DropDownList1.Text.Trim();
            string userid = UserId.Text.Trim();
            string password = UserPassword.Text.Trim();
            string username = UserName.Text.Trim();
            string dropdownlist2 = DropDownList2.Text.Trim();
            string userphone = UserPhone.Text.Trim();

            sqlCon.Open();
            SqlCommand sqlCom = new SqlCommand();
            sqlCom.Connection = sqlCon;
            sqlCom.CommandText = "insert into Table_User(User_type,User_id,User_password,User_name,User_sex,User_phone)" + " values('" + dropdownlist1 + "','" + userid + "','" + password + "','" + username + "','" + dropdownlist2 + "','" + userphone + "')";

            try
            {
                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    this.LabelRegister.Text = "注册成功";
                    Response.Write("<script language=javascript>window.location.href='HomeAdmin_Managenment_UserandCustomer.aspx';</script>");
                }
                else
                {
                    this.LabelRegister.Text = "注册失败";
                    Response.Write("<script language=javascript>window.location.href='HomeAdmin_Managenment_UserandCustomer.aspx';</script>");
                }
                sqlCon.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Page:" + ex.Message);
                this.LabelRegister.Text = "注册失败<账号已存在>";
                DropDownList1.SelectedValue = "1";
                UserId.Text = "";
                UserPassword.Text = "";
                UserName.Text = "";
                DropDownList2.SelectedValue = "女";
                UserPhone.Text = "";
            }
        }
    }


    protected void UserID_TextChanged(object sender, EventArgs e)
    {

    }

    protected void UserPassword_TextChanged(object sender, EventArgs e)
    {

    }

    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void UserPhone_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        if (TextBoxName.Text=="" || TextBoxPhone.Text==""|| TextBoxArea.Text==""|| TextBoxAddress.Text=="")
        {
            this.LabelCustomer.Text = "添加失败";
            return;
        }

        SqlConnection sqlCon = new SqlConnection();
        sqlCon.ConnectionString = "Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565";

        if (Page.IsValid)
        {
            Session["TextBoxName"] = TextBoxName.Text.Trim();
            Session["TextBoxPhone"] = TextBoxPhone.Text.Trim();
            Session["TextBoxArea"] = TextBoxArea.Text.Trim();
            Session["TextBoxAddress"] = TextBoxAddress.Text.Trim();

            string textboxname = TextBoxName.Text.Trim();
            string textboxphone = TextBoxPhone.Text.Trim();
            string textboxarea = TextBoxArea.Text.Trim();
            string textboxaddress = TextBoxAddress.Text.Trim();



            sqlCon.Open();
            SqlCommand sqlCom = new SqlCommand();
            sqlCom.Connection = sqlCon;
            sqlCom.CommandText = "insert into Table_Customer(CustomerName,CustomerPhone,CustomerArea,CustomerAddress)" + " values('" + textboxname + "','" + textboxphone + "','" + textboxarea + "','" + textboxaddress + "')";

            try
            {
                int sqlDr = sqlCom.ExecuteNonQuery();
                if (sqlDr != 0)
                {
                    this.LabelCustomer.Text = "添加成功";
                    TextBoxName.Text = "";
                    TextBoxPhone.Text = "";
                    TextBoxArea.Text = "";
                    TextBoxAddress.Text = "";
                }
                else
                {
                    this.LabelCustomer.Text = "添加失败";
                    TextBoxName.Text = "";
                    TextBoxPhone.Text = "";
                    TextBoxArea.Text = "";
                    TextBoxAddress.Text = "";
                }
                sqlCon.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Page:" + ex.Message);
                this.LabelCustomer.Text = "添加失败";
                TextBoxName.Text = "";
                TextBoxPhone.Text = "";
                TextBoxArea.Text = "";
                TextBoxAddress.Text = "";
            }
        }
    }

    protected void TextBoxPhone_TextChanged(object sender, EventArgs e)
    {

    }
}