using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class OnlineComplaint : System.Web.UI.Page
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
            string cs = "";
            if (FileUpload1.HasFile)
            {
                String str = "~/ComplaintDocuments/";
                cs = str + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(cs));
                //Image2.ImageUrl = cs;
                Label18.Text = cs;

            }

            //captcha1.ValidateCaptcha(TextBox4.Text.Trim());
            //if (captcha1.UserValidated)
            //{
            SqlCommand cmd = new SqlCommand("Insert into OnlineComplaint(Prefix,First,Middle,Last,Mobile,Email,Street,Address,City,Pincode,PoliceStation,Complaint,Doc)values(@pre,@first,@mid,@last,@mob,@email,@street,@add,@city,@pin,@police,@comp,@doc)", con);
            cmd.Parameters.AddWithValue("@pre", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@first", TextBox1.Text);
            cmd.Parameters.AddWithValue("@mid", TextBox2.Text);
            cmd.Parameters.AddWithValue("@last", TextBox3.Text);
            cmd.Parameters.AddWithValue("@mob", TextBox4.Text);
            cmd.Parameters.AddWithValue("@email", TextBox5.Text);
            cmd.Parameters.AddWithValue("@street", TextBox6.Text);
            cmd.Parameters.AddWithValue("@add", TextBox12.Text);
            cmd.Parameters.AddWithValue("@city", TextBox13.Text);
            cmd.Parameters.AddWithValue("@pin", TextBox9.Text);
            cmd.Parameters.AddWithValue("@police", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@comp", TextBox10.Text);
            cmd.Parameters.AddWithValue("@doc", cs);
            //con.Open();
            //cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

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
        SqlCommand cmd = new SqlCommand("Select OnComNo from OnlineComplaint", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        //scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            complaintid = 1;

        }
        else
        {



            //String mycon1 = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=complaintsystem;Integrated Security=True";
            //SqlConnection scon1 = new SqlConnection(mycon1);
            //String myquery1 = "select max(complaintid) from complaintdetail";
            //SqlCommand cmd1 = new SqlCommand();
            //cmd1.CommandText = myquery1;
            //cmd1.Connection = scon1;
            SqlCommand cmd1 = new SqlCommand("Select max(OnComNo) from OnlineComplaint", con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            //da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            int a;
            a = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString());
            a = a + 1;
            complaintid = a;
            //scon1.Close();
        }

    }
        //else
        //{

        //    Label20.Text = "Enter Correct Captcha Text";
        //}

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            Button4.Enabled = true;
        }
        if (CheckBox1.Checked == false)
        {
            Button4.Enabled = false;
        }
    }
}
