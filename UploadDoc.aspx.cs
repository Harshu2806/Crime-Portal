using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UploadDoc : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\vboxuser\\source\\repos\\project\\project\\App_Data\\crime.mdf;Integrated Security=True;Connect Timeout=30");
    static String resumelink;

    static Int32 applicationid;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (uploadresume() == true)
        {
            SqlCommand cmd = new SqlCommand("Insert into PDF(Doc)values('" + resumelink + "')", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
           
            Label2.Text = "Your Application ID is " + applicationid.ToString() + " for Further Reference .Thanks For Apply For The Post: Developer. We will Reach at You Soon.";
            
        }
    }
    private Boolean uploadresume()
    {
        Boolean resumesaved = false;
        if (FileUpload1.HasFile == true)
        {

            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "application/pdf")
            {
                int filesize;
                filesize = FileUpload1.PostedFile.ContentLength;

                getapplicationid();
                FileUpload1.SaveAs(Server.MapPath("~/UPLOADEDDOCUMENTS/") + applicationid + ".pdf");

                resumelink = "UPLOADEDDOCUMNETS/" + applicationid + ".pdf";
                resumesaved = true;
                Label1.Text = "";
            }
            else
            {
                Label1.Text = "Upload Resume in PDF Format Only";
            }

        }
        else
        {
            Label1.Text = "Kindly Upload Resume Before Apply in PDF Format";
        }


        return resumesaved;
    }
    public void getapplicationid()
    {
        //String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=ResumeDatabase;Integrated Security=True";
        //SqlConnection scon = new SqlConnection(mycon);
        //String myquery = "select applicationid from Candidatedetail";
        //SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = myquery;
        //cmd.Connection = scon;
        //SqlDataAdapter da = new SqlDataAdapter();
        //da.SelectCommand = cmd;
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        //scon.Close();
        SqlCommand cmd = new SqlCommand("Select applicationid from PDF", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count < 1)
        {
            applicationid = 1000;

        }
        else
        {



            //String mycon1 = "Data Source = (local); Initial Catalog = Crime; Integrated Security = True";
            //SqlConnection scon1 = new SqlConnection(mycon1);
            //String myquery1 = "select max(applicationid) from PDF";
            //SqlCommand cmd1 = new SqlCommand();
            //cmd1.CommandText = myquery1;
            //cmd1.Connection = scon1;
            //SqlDataAdapter da1 = new SqlDataAdapter();
            //da1.SelectCommand = cmd1;
            //DataSet ds1 = new DataSet();
            //da1.Fill(ds1);
            //applicationid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
            //applicationid = applicationid + 1;
            //scon1.Close();
            SqlConnection con1 = new SqlConnection("Data Source = (local); Initial Catalog = Crime; Integrated Security = True");
            SqlCommand cmd1 = new SqlCommand("Select max(applicationid) from PDF", con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            applicationid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
            applicationid = applicationid + 1;
        }

    }
}