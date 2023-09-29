using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class AForgotPassword : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-JKT7USG\\SQLEXPRESS;Initial Catalog=Crime;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String Pass = "";

        SqlCommand cmd = new SqlCommand("Select Password from ARegister where Username=@name", con);
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        con.Open();
        using (SqlDataReader dr = cmd.ExecuteReader())
        {
            if (dr.Read())
            {
                Pass = dr["Password"].ToString();
            }
            con.Close();
        }


        using (MailMessage msg = new MailMessage("Yashjain11158@gmail.com", "yashjain11158@gmail.com"))
        {
            msg.To.Add(TextBox1.Text);
            msg.Subject = "CrimePortal (Recover Your Password)";
            msg.Body = "Please be Careful & Keep changing your password frequently..";
            msg.Body = "Hope so you are safe to Login Now <br/> Do remember to change your Password Frequently <br/> <br/> Your Password is:  " + Pass;
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("yashjain11158@gmail.com", "blackmamba99");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(msg);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Check your Email for Recovery. Password sent Successfully...');", true);

            //             clear();
        }


    }
}