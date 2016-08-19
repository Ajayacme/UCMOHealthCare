using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace UCMOHealthCare
{
    public partial class assistanceResponses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Convert.ToString(Session.Contents["loggeduserid"]);
            string connectionString = null;
            connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
       
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from request_assistance where req_by =@username ", con);
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
                Label2.Text = " Hey !! There are no previous requests by you";

            }
            con.Close();
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
        
            Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if(Convert.ToString(Session.Contents[0])[0]=='h')
                Response.Redirect("loginpolicyholderhome.aspx");
            if(Convert.ToString(Session.Contents[0])[0]=='o')
                Response.Redirect("loginpolicyownerhome.aspx");
        }
    }
}