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

        SqlConnection sqlCon = new SqlConnection();
        sqlCon.ConnectionString = "Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565";
        sqlCon.Open();                                                                                             //打开连接
        SqlCommand sqlCom = new SqlCommand();                                                                        //创建 SqlCommand 对象
        sqlCom.Connection = sqlCon;
        sqlCom.CommandText = "Select * From Table_User Where User_id=+'" + Session["UserId"].ToString() + "'";    //根据 传递进来的 Session["UserName"]用户名查询信息

        SqlDataReader sqlDr = sqlCom.ExecuteReader();                                                                //执行SQL，结果返回到 SqlDataReader 对象
        if (sqlDr.Read())
        {
            Label1.Text = sqlDr.GetString(3);                                                                        //读取用户各字段信息
            Label2.Text = sqlDr.GetString(1);
            Label3.Text = sqlDr.GetString(0);
            if (Convert.ToInt32(Label3.Text) == 1) { Label3.Text = "系统管理员"; }
            if (Convert.ToInt32(Label3.Text) == 2) { Label3.Text = "仓储管理员"; }
            if (Convert.ToInt32(Label3.Text) == 3) { Label3.Text = "任务管理员"; }
            if (Convert.ToInt32(Label3.Text) == 4) { Label3.Text = "生产线员工"; }
            Label4.Text = sqlDr.GetString(5);
            Label5.Text = sqlDr.GetString(4);
            Label6.Text = sqlDr.GetDateTime(6).ToString();
            sqlDr.Close();                                                                                           //关闭 SqlDataReader 对象
            sqlCon.Close();                                                                                          //关闭 SqlConnection 对象
        }
    }
    protected void TextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlCon = new SqlConnection();
        sqlCon.ConnectionString = "Data Source=localhost;Database=Data;Uid=sa;Pwd=good6565";
        sqlCon.Open();
        SqlCommand sqlCom = new SqlCommand();
        sqlCom.Connection = sqlCon;
        sqlCom.CommandText = "update Table_User set User_password='" + newpsw.Text.ToString() + "' where User_id=  '" + Session["UserId"].ToString() + "'";
        int sqlDa = sqlCom.ExecuteNonQuery();
        if (sqlDa != 0)
        {
            Response.Write("<script language=javascript>alert('修改成功'); </script>");
        }
    }
}