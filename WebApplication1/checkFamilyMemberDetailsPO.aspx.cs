using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class checkFamilyMemberDetailsPO : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session.Contents["loggeduserid"]);
        string connectionString = null;
        connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from customer_policy_details where PolicyOwnerName=@username", con);
        cmd.Parameters.AddWithValue("@username", Convert.ToString(Session.Contents["loggeduserid"]));
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = " Hey !! There are no family member details provided . Please contact local manager to get the details added";
        }
        con.Close();

    }
   
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
        Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");
    }

    
}