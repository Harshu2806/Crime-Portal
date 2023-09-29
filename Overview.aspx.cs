using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Overview : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=DESKTOP-JKT7USG\\SQLEXPRESS;Initial Catalog=Crime;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        updatecounter();
        findView();
    }
    private void findView()
    {
        //String mycon = "Data Source=VIKAS-PC\\SQLEXPRESS; Initial Catalog=MyWebsite; Integrated Security=True";
        //String myquery = "Select * from ViewCounter";
        //SqlConnection con = new SqlConnection(mycon);
        //SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = myquery;
        //cmd.Connection = con;
        SqlCommand cmd = new SqlCommand("Select * from Count", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Label1.Text = "Total No. of Visitors : " + ds.Tables[0].Rows[0]["viewcount"].ToString();
        con.Close();
    }
    private void updatecounter()
    {
        String mycon = "Data Source = (local); Initial Catalog = Crime; Integrated Security = True";
        String updatedata = "Update Count set viewcount=viewcount+1";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    protected void TextBox1_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select COUNT(RegNo) from PoliceStations", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
    }

    protected void TextBox2_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select COUNT(CompNo) from MissingPerson", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        TextBox2.Text = ds.Tables[0].Rows[0][0].ToString();
    }

    protected void TextBox3_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select COUNT(First) from OnlineComplaint", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        TextBox3.Text = ds.Tables[0].Rows[0][0].ToString();
    }

    protected void TextBox4_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select COUNT(Name) from SpotComplaint", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        TextBox4.Text = ds.Tables[0].Rows[0][0].ToString();
    }
}