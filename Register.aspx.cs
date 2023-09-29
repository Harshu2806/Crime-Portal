using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\vboxuser\\source\\repos\\project\\project\\App_Data\\crime.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (checkemail() == true)
        {
            Label1.Text = "Email Already Available --> Please use another Email";
            TextBox2.BackColor = System.Drawing.Color.PaleGreen;


        }
        else
        {
            SqlCommand cmd = new SqlCommand("Insert into Register(Name,Email,Password,ConfirmPass)values(@name,@email,@pass,@conf)", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox3.Text);
            cmd.Parameters.AddWithValue("@conf", TextBox4.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            clear();
            Response.Redirect("Login.aspx");
        }
    }
    void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }

    private Boolean checkemail()
    {
        Boolean emailavailable = false;
        //String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=RegisteredData1; Integrated Security=True";
        String myquery = "Select * from Register where Email='" + TextBox2.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
    }
}