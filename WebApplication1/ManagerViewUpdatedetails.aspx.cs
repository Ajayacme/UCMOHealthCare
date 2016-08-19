using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using UCMOHealthCare;

public partial class ManagerViewUpdatedetails : System.Web.UI.Page
{
    Manager m;
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text = Convert.ToString(Session.Contents["loggeduserid"]);
        m = new Manager(Label1.Text);
        if (!IsPostBack)
        {
            TextBox1.Text = m.getLname();
            TextBox2.Text = m.getFname();
            TextBox3.Text = m.getAddress();
            TextBox4.Text = m.getEmail();
            TextBox5.Text = m.getPhone();
        }

    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();

        Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        m.setLname(TextBox1.Text);
        m.setFname(TextBox2.Text);
        m.setAddress(TextBox3.Text);
        m.setEmail(TextBox4.Text);
        m.setPhone(TextBox5.Text);

        Label2.Visible = true;
        Label2.Text = "Your details are updated...";
        string connectionString = null;
        connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(" update manager_details set lastname=@lname,firstname=@fname,address=@addr,email=@emailid,phone=@phone where mid=@username", con);
        cmd.Parameters.AddWithValue("@username", Label1.Text);
        cmd.Parameters.AddWithValue("@lname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@fname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@addr", TextBox3.Text);
        cmd.Parameters.AddWithValue("@emailid", TextBox4.Text);
        cmd.Parameters.AddWithValue("@phone", TextBox5.Text);
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
        Label2.Visible = true;
        Label2.Text = "Your details are updated...";
    }

}