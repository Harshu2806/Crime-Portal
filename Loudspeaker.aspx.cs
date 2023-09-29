using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Loudspeaker : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=DESKTOP-JKT7USG\\SQLEXPRESS;Initial Catalog=Crime;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
    //    DateTime dNow = DateTime.Now;

    //    TextBox13.Text = (dNow.ToString("yyyy-MM-dd"));
        //TextBox13.Text = (dNow.ToString("dd/MM/yyyy"));
        //TextBox13.Text = (dNow.ToString("dd-MM-yyyy"));
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            String cs = "";
            if (FileUpload1.HasFile)
            {
                String str = "~/LoudSpeaker/";
                cs = str + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(cs));
            }

            string cs1 = "";
            if (FileUpload2.HasFile)
            {
                String str1 = "~/LoudSpeaker/";
                cs1 = str1 + FileUpload2.FileName;
                FileUpload2.SaveAs(Server.MapPath(cs1));
            }

            SqlCommand cmd = new SqlCommand("Insert into LoudSpeaker(PoliceStation,FullName,Mobile,Address,OrgType,OrgName,OrgAddress,Telephone,OfficeRegNo,Doc,Name,Contact,Oaddress,Nature,Venue,AMFrom,PMTo,PMFrom,PMToo,FromDate,ToDate,LoudspeakerNo,Generator,Permission,PerDoc)values('" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + cs + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + DropDownList3.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DropDownList6.SelectedItem.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + DropDownList7.SelectedItem.Text + "','" + DropDownList8.SelectedItem.Text + "','" + cs1 + "')", con);
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