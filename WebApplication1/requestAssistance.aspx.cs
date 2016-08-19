using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class requestAssistance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session.Contents["loggeduserid"]);

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
       
        Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        Label2.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Label2.Visible = true;
            Label2.Text = "Request should be entered";
        }
        else
        {
            string connectionString = null;
            connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into request_assistance(req_by,request,req_status) values(@reqby,@query,@status)", con);
            cmd.Parameters.AddWithValue("@reqby", Convert.ToString(Session.Contents["loggeduserid"]));
            cmd.Parameters.AddWithValue("@query", TextBox1.Text);
            cmd.Parameters.AddWithValue("@status",'N');
            cmd.ExecuteNonQuery();
            Label2.Visible = true;
            Label2.Text = "Your request has submitted";
            TextBox1.Text = "";
        }
    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        if (Convert.ToString(Session.Contents[0])[0] == 'h')
            Response.Redirect("loginpolicyholderhome.aspx");
        if (Convert.ToString(Session.Contents[0])[0] == 'o')
            Response.Redirect("loginpolicyownerhome.aspx");
    }
}