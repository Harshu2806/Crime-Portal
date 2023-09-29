using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MyComplaints : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-JKT7USG\\SQLEXPRESS;Initial Catalog=Crime;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            string nm = Session["name"].ToString();


            SqlCommand cmd = new SqlCommand("Select * from OnlineComplaint where First=@nm", con);
            cmd.Parameters.AddWithValue("@nm", nm);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
       
    }
}