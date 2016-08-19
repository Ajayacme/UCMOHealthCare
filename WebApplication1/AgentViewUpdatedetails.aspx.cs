using System;
using System.Data.SqlClient;
using System.Configuration;

namespace UCMOHealthCare
{
    public partial class AgentViewUpdatedetails : System.Web.UI.Page
    {
        Agent a;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Convert.ToString(Session.Contents["loggeduserid"]);
            a = new Agent(Label1.Text);
            if (!IsPostBack)
            {
                TextBox1.Text = a.getLname();
                TextBox2.Text = a.getFname();
                TextBox3.Text = a.getAddress();
                TextBox4.Text = a.getEmail();
                TextBox5.Text = a.getPhone();
            }

        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();

            Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            a.setLname(TextBox1.Text);
            a.setFname(TextBox2.Text);
            a.setAddress(TextBox3.Text);
            a.setEmail(TextBox4.Text);
            a.setPhone(TextBox5.Text);

            string connectionString = null;
            connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(" update agent_details set lastname=@lname,firstname=@fname,address=@addr,email=@emailid,phone=@phone where aid=@username", con);
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
}