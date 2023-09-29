using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-JKT7USG\\SQLEXPRESS;Initial Catalog=Crime;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

     
    protected void  Button1_Click(object sender, EventArgs e)
{
        SqlCommand cmd = new SqlCommand("Insert into Contact(Name,Email,Mobile,Message)values(@nm,@email,@mob,@msg)", con);
        cmd.Parameters.AddWithValue("@nm", TextBox1.Text);
        cmd.Parameters.AddWithValue("@email", TextBox2.Text);
        cmd.Parameters.AddWithValue("@mob", TextBox3.Text);
        cmd.Parameters.AddWithValue("@msg", TextBox4.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        Label1.Text = "Details Sent Successfully";
        clear();
}

    void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}