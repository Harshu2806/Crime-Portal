using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Student : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\vboxuser\\source\\repos\\project\\project\\App_Data\\crime.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();

        }
    }
    public void Bind()
    {
        //String mycon = "Data Source=VIKAS-PC\\SQLEXPRESS; Initial Catalog=MovieBollywood; Integrated Security=True";
        //String myquery = "Select * from MovieList";
        //SqlConnection con = new SqlConnection(mycon);
        //SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = myquery;
        //cmd.Connection = con;
        //SqlDataAdapter da = new SqlDataAdapter();
        //da.SelectCommand = cmd;
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        SqlCommand cmd = new SqlCommand("Select * from Student", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        //con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //String cs = "";
        //if (FileUpload1.HasFile)
        //{
        //    String str = "~/LoudSpeaker/";
        //    cs = str + FileUpload1.FileName;
        //    FileUpload1.SaveAs(Server.MapPath(cs));
        //}

        String cs="";
        if(FileUpload1.HasFile)
        {
            String str = "~/StudentPictures/";
            cs = str + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(cs));
        }

        SqlCommand cmd = new SqlCommand("Insert into Student(Name,Age,Photo)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + cs + "')", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        Bind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Bind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Bind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = e.RowIndex;

        GridViewRow row = (GridViewRow)GridView1.Rows[index];
        TextBox text1 = (TextBox)row.FindControl("TextBox3");
        TextBox text2 = (TextBox)row.FindControl("TextBox4");
        FileUpload fu = (FileUpload)row.FindControl("FileUpload2");
        Label label1 = (Label)row.FindControl("Label4");
        Random rand = new Random((int)DateTime.Now.Ticks);
        int numIterations = 0;
        numIterations = rand.Next(1, 1000);
        String constring = "Data Source = (local); Initial Catalog = Crime; Integrated Security = True";
        SqlConnection sqlcon = new SqlConnection(constring);
        fu.SaveAs(Server.MapPath("~/StudentPictures/") + numIterations + Path.GetFileName(fu.FileName));
        String link = "StudentPictures/" + numIterations + Path.GetFileName(fu.FileName);
        String updatedata = "Update Student set Name='" + text1.Text + "',Age='" + text2.Text + "', Photo='" + link + "' where StudentId=" + label1.Text;
        sqlcon.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = sqlcon;
        cmd.ExecuteNonQuery();
        sqlcon.Close();
        GridView1.EditIndex = -1;
        Bind();

    }
}