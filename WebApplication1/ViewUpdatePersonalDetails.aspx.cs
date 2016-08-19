using System;
using System.Data.SqlClient;
using System.Configuration;

namespace UCMOHealthCare
{
    public partial class ViewUpdatePersonalDetails : System.Web.UI.Page
    {
        PolicyOwner po;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Convert.ToString(Session.Contents["loggeduserid"]);
            po = new PolicyOwner(Label1.Text);
            if (!IsPostBack)
            {
                TextBox1.Text = po.getLname();
                TextBox2.Text = po.getFname();
                TextBox3.Text = po.getAddress();
                TextBox4.Text = po.getEmail();
                TextBox5.Text = po.getPhone();
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();

            Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginpolicyownerhome.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            po.setLname(TextBox1.Text);
            po.setFname(TextBox2.Text);
            po.setAddress(TextBox3.Text);
            po.setEmail(TextBox4.Text);
            po.setPhone(TextBox5.Text);

            string connectionString = null;
            connectionString = ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("update customer_details set lastname=@lname,firstname=@fname,address=@addr,email=@emailid,phone=@phone where cid=@username", con);
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
            finally
            {
                Label2.Visible = true;
                Label2.Text = "Your details are updated...";
            }
            
        }
    }
}