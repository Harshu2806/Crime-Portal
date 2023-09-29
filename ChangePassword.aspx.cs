using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ChangePassword : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=DESKTOP-JKT7USG\\SQLEXPRESS;Initial Catalog=Crime;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Label5.Text = Session["name"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Register", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        String Password;
        Password = ds.Tables[0].Rows[0]["Password"].ToString();
        con.Close();
        if (Password == TextBox1.Text)
        {
            if (TextBox2.Text == TextBox3.Text && TextBox2.Text != "")
            {
                String UpdatePassword = "Update Register set Password='" + TextBox2.Text + "' where Name='" + Label5.Text + "'";
                String mycon1 = "Data Source = (local); Initial Catalog = Crime; Integrated Security = True";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = UpdatePassword;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label4.Text = "New Password and Re-enter Password Not Matched / Blank Password Not Accepted";
            }
        }
        else
        {
            Label4.Text = "Incorrect Old Password - Cannot Change Password without User Authentication";
        }
    }
}



//String pass;
//pass = ds.Tables[0].Rows[0]["pass"].ToString();
//scon.Close();
//if (pass == TextBox1.Text)
//{
//if (TextBox2.Text == TextBox3.Text && TextBox2.Text != "")
//{
//String updatepass = "update logindetail set pass='" + TextBox2.Text +
//"' where uname='" + Label2.Text + "'";
//String mycon1 = "Data Source=HP-PC\\SQLEXPRESS;Initial
//Catalog=collegeadmin;Integrated Security=True";
//SqlConnection s = new SqlConnection(mycon1);
//s.Open();
//SqlCommand cmd1 = new SqlCommand();
//cmd1.CommandText = updatepass;
//cmd1.Connection = s;
//cmd1.ExecuteNonQuery();
//Session.Abandon();
//Response.Redirect("PasswordChanged.aspx");
//}
//else
//{
//Label3.Text = "New Password and Re-enter Password Not Matched / Blank
//Password Not Accepted";
//}
//}
//else
//{
//Label3.Text = "Invalid Username or Password - Cannot Change Password with
//User Authentication";
//}
//    }
//}