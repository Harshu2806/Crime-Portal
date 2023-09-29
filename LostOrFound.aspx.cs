using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

public partial class LostOrFound : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\vboxuser\\source\\repos\\project\\project\\App_Data\\crime.mdf;Integrated Security=True;Connect Timeout=30");
    static int complaintid;
    protected void Page_Load(object sender, EventArgs e)
    {
        getcomplaintid();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            SqlCommand cmd = new SqlCommand("Insert into LostFound(PoliceStation,FullName,Email,Contact,Address,Pincode,ReportType,ArticleType,NameOnDoc,DocNo,Date,Found,Area,City,Pin,Description)values(@police,@name,@email,@mob,@add,@pincode,@report,@article,@docnm,@docno,@date,@found,@area,@city,@pin,@desc)", con);
            //cmd.Parameters.AddWithValue("@police", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@mob", TextBox3.Text);
            cmd.Parameters.AddWithValue("@add", TextBox4.Text);
            cmd.Parameters.AddWithValue("@pincode", TextBox5.Text);
            cmd.Parameters.AddWithValue("@report", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@article", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@docnm", TextBox7.Text);
            cmd.Parameters.AddWithValue("@docno", TextBox14.Text);
            cmd.Parameters.AddWithValue("@date", TextBox8.Text);
            cmd.Parameters.AddWithValue("@found", TextBox9.Text);
            cmd.Parameters.AddWithValue("@area", TextBox10.Text);
            cmd.Parameters.AddWithValue("@city", TextBox11.Text);
            //cmd.Parameters.AddWithValue("@state", TextBox11.Text);
            cmd.Parameters.AddWithValue("@pin", TextBox13.Text);
            cmd.Parameters.AddWithValue("@desc", TextBox6.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Label19.Text = "Your Complaint ID is " + complaintid + " . You can Check the Status of Complaint Using Complaint ID";
            Label20.Text = "Complaint Registered Successfully";
        }
        else
        {
            Response.Redirect("Login.aspx");
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('1st login then register complaint');", true);
        }





    }
    public void getcomplaintid()
    {
        //String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=complaintsystem;Integrated Security=True";
        //SqlConnection scon = new SqlConnection(mycon);
        //String myquery = "select complaintid from complaintdetail";
        //SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = myquery;
        //cmd.Connection = scon;
        SqlCommand cmd = new SqlCommand("Select CompNo from LostFound", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        //scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            complaintid = 100000;

        }
        else
        {



            //String mycon1 = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=complaintsystem;Integrated Security=True";
            //SqlConnection scon1 = new SqlConnection(mycon1);
            //String myquery1 = "select max(complaintid) from complaintdetail";
            //SqlCommand cmd1 = new SqlCommand();
            //cmd1.CommandText = myquery1;
            //cmd1.Connection = scon1;
            SqlCommand cmd1 = new SqlCommand("Select max(CompNo) from LostFound", con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            //da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            int a;
            a = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
            a = a + 1;
            complaintid = a;
            //scon1.Close();
        }

    }


    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked==true)
        {
            Button4.Enabled = true;
        }
        if (CheckBox1.Checked == false)
        {
            Button4.Enabled = false;
        }
    }
}