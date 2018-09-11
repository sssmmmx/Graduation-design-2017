using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_login(object sender, EventArgs e)
    {
        SqlConnection sqlCon = new SqlConnection();
        sqlCon.ConnectionString = "Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565";
        sqlCon.Open();
        SqlCommand sqlCom = new SqlCommand();
        sqlCom.Connection = sqlCon;

        sqlCom.CommandText = "select * from Table_User where User_id= + '" + TextBox1.Text + "' and User_password= '" + TextBox2.Text + "'";

        SqlDataReader sqlDr = sqlCom.ExecuteReader();

        if (sqlDr.HasRows)
        {
            sqlDr.Read();

         if (RadioButtonList1.SelectedValue == "系统管理员")
        {
                if (Convert.ToInt32(sqlDr.GetValue(0)) == 1)
                {
                    Session["UserId"] = TextBox1.Text.Trim();
                    Response.Write("<script language=javascript> window.location.href='HomeAdmin.aspx';</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('警告：账号无此权限');</script>");
                }
        }

            else if (RadioButtonList1.SelectedValue == "仓储管理员")
            {
                if (Convert.ToInt32(sqlDr.GetValue(0)) == 2)
                {
                    Session["UserId"] = TextBox1.Text.Trim();
                    Response.Write("<script language=javascript>window.location.href='HomeStorage_Ruku.aspx';</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('警告：账号无此权限');</script>");
                }
            }

            else if (RadioButtonList1.SelectedValue == "任务管理员")
            {
                if (Convert.ToInt32(sqlDr.GetValue(0)) == 3)
                {
                    Session["UserId"] = TextBox1.Text.Trim();
                    Response.Write("<script language=javascript> window.location.href='HomeTask_Task.aspx';</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('警告：账号无此权限');</script>");
                }
            }

            else if (RadioButtonList1.SelectedValue == "生产线员工")
            {
                if (Convert.ToInt32(sqlDr.GetValue(0)) == 4)
                {
                    Session["UserId"] = TextBox1.Text.Trim();
                    Response.Write("<script language=javascript> window.location.href='HomeUser.aspx';</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('警告：账号无此权限');</script>");
                }
            }
            else
        {
            Response.Write("<script language=javascript>alert('请选择权限选项');</script>");
        }

        }

        else
        {
            Session["UserId"] = "";
            Response.Write("<script language=javascript>alert('登陆失败<账号或密码错误>');</script>");
        }



        sqlDr.Close();
        sqlCon.Close();
    }

    protected void Button_reset(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        RadioButtonList1.SelectedIndex = -1;
    }
}