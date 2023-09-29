using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddPoliceStation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\vboxuser\\source\\repos\\project\\project\\App_Data\\crime.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string cs = "";
        //if (FileUpload1.HasFile)
        //{
        //    String str = "~/MissingPersonsPhotos/";
        //    cs = str + FileUpload1.FileName;
        //    FileUpload1.SaveAs(Server.MapPath(cs));
        //}

        string cs = "";
        if (FileUpload1.HasFile)
        {
            String str = "~/Admin/PoliceStation/";
            cs = str + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(cs));
        }

        SqlCommand cmd = new SqlCommand("Insert into PoliceStations(PoliceStation,StationCode,Incharge,Photo,Code,TelephoneNo,AltTeleNo,Address,City,District,Pincode)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + cs + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox9.Text + "')", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

    }
}