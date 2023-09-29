using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Feedback : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\vboxuser\\source\\repos\\project\\project\\App_Data\\crime.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into Feedback(Category,PoliceStation,Pre,First,Middle,Last,Contact,Email,Subject,Address,Description)values(@cat,@police,@pre,@first,@mid,@last,@mob,@email,@sub,@add,@desc)", con);
        cmd.Parameters.AddWithValue("@cat", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@police", DropDownList2.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@pre", DropDownList3.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@first", TextBox1.Text);
        cmd.Parameters.AddWithValue("@mid", TextBox7.Text);
        cmd.Parameters.AddWithValue("@last", TextBox8.Text);
        //cmd.Parameters.AddWithValue("@code", TextBox9.Text);
        cmd.Parameters.AddWithValue("@mob", TextBox2.Text);
        cmd.Parameters.AddWithValue("@email", TextBox3.Text);
        cmd.Parameters.AddWithValue("@sub", TextBox4.Text);
        cmd.Parameters.AddWithValue("@add", TextBox5.Text);
        cmd.Parameters.AddWithValue("@desc", TextBox6.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        Label14.Text = "Feedback Sent Successfully";
        


    }
}