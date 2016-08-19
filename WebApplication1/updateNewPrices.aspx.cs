using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class updateNewPrices : System.Web.UI.Page
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
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("loginmhome.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       if( TextBox2.Text=="")
       {
           Label2.Visible = true;
       }
       else
       {
           
               Label2.Visible = false;
               string connectionString = null;
               connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
               SqlConnection con = new SqlConnection(connectionString);
               con.Open();
               SqlCommand cmd = new SqlCommand("update policy_details set Price=@price,PriceUpdated='Y' where PolicyID=@pid", con);
               cmd.Parameters.AddWithValue("@pid", DropDownList1.SelectedValue);
               cmd.Parameters.AddWithValue("@price", Convert.ToInt32(TextBox2.Text));
               cmd.ExecuteNonQuery();
               Label2.Visible = true;
               Label2.Text = "Price updated successfully!!";
               con.Close();
               GridView1.DataBind();
            
       }
    }
}