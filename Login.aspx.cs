using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\vboxuser\\source\\repos\\project\\project\\App_Data\\crime.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        LinkButton1.Visible = true;
        SqlCommand cmd = new SqlCommand("Select * from Register where Email='" + TextBox1.Text + "' AND Password='" + TextBox2.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["name"] = TextBox1.Text;
            
            Response.Redirect("Default.aspx");
        }
        else
        {
            Label1.Text = "Invalid UserName or Password";
        }
    }
}