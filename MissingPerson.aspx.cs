using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MissingPerson : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=DESKTOP-JKT7USG\\SQLEXPRESS;Initial Catalog=Crime;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        //string cs = "";
        //if (FileUpload1.HasFile)
        //{
        //    String str = "~/ComplaintDocuments/";
        //    cs = str + FileUpload1.FileName;
        //    FileUpload1.SaveAs(Server.MapPath(cs));
        //    //Image2.ImageUrl = cs;
        //    Label18.Text = cs;

        //}
        if (Session["name"] != null)
        {
            string cs = "";
            if (FileUpload1.HasFile)
            {
                String str = "~/MissingPersonsPhotos/";
                cs = str + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(cs));
            }



            SqlCommand cmd = new SqlCommand("Insert into MissingPerson(Pre,First,Middle,Last,Mobile,Email,Prefix,Fname,Mname,Lname,Gender,Body,Age,Height,Skin,Cloth,Photo,Place,Date,PoliceStation,OtherDetails)values('" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList3.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + DropDownList5.SelectedItem.Text + "','" + TextBox11.Text + "','" + cs + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + DropDownList6.SelectedItem.Text + "','" + TextBox14.Text + "')", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
        }
        else
        {
            Response.Redirect("Login.aspx");
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('1st login then register complaint');", true);
        }
    }
}