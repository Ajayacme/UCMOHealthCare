using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Provide_assistance : System.Web.UI.Page
{
    int row = 0;
    protected void Page_Load(object sender, EventArgs e)
    {   
        Label1.Text = Convert.ToString(Session.Contents["loggeduserid"]);
        string connectionString = null;
        connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from request_assistance where req_status=@status", con);
        cmd.Parameters.AddWithValue("@status", 'N');
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            row = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            TextBox1.Visible = true;
            TextBox1.Text =Convert.ToString(ds.Tables[0].Rows[0][2]);
            TextBox2.Visible = true;
            Label5.Visible = true;
            Label3.Text = Convert.ToString("By  "+ds.Tables[0].Rows[0][1]);
            Label3.Visible = true;
            Button1.Visible = true;
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = " Hey !! There are no queries for assistance";

        }
        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();

        Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        if (Convert.ToString(Session.Contents[0])[0] == 'a')
            Response.Redirect("loginagenthome.aspx");
        if (Convert.ToString(Session.Contents[0])[0] == 'm')
            Response.Redirect("loginmanagerhome.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox2.Text=="")
        {
            Label4.Visible = true;
            
        }
        else
        {
            string connectionString = null;
            connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("update request_assistance set res_by=@username,response=@resp,req_status=@setOld where id=@rowid", con);
            cmd.Parameters.AddWithValue("@username", Convert.ToString(Session.Contents["loggeduserid"]));
            cmd.Parameters.AddWithValue("@resp", TextBox2.Text);
            cmd.Parameters.AddWithValue("@setOld", 'O');
            cmd.Parameters.AddWithValue("@rowid", row);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = TextBox2.Text = "";
            Label4.Text = "Your response has been recorded!!!";
            Label4.Visible = true;
        }
    }
}