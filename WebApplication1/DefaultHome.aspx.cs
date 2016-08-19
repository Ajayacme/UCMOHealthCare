using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DefaultHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Tab1.CssClass = "Clicked";
            MainView.ActiveViewIndex = 0;
        }
    }

    protected void Tab1_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Clicked";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        MainView.ActiveViewIndex = 0;
    }

    protected void Tab2_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Clicked";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        MainView.ActiveViewIndex = 1;
    }

    protected void Tab3_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Clicked";
        Tab4.CssClass = "Initial";
        MainView.ActiveViewIndex = 2;
    }
    protected void Tab4_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Clicked";
        MainView.ActiveViewIndex = 3;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox2.Text = TextBox5.Text = TextBox4.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (string.IsNullOrEmpty(TextBox1.Text))
            {
                Label2.Text = "Please Enter Valid Full Name";
            }

            else if (string.IsNullOrEmpty(TextBox2.Text))
            {
                Label2.Text = "Please Enter Valid Quotation Message";
            }
            else if (string.IsNullOrEmpty(TextBox5
                                         .Text))
            {
                Label2.Text = "Please Enter Valid Phone Number";
            }
            else if (string.IsNullOrEmpty(TextBox4
                                         .Text))
            {
                Label2.Text = "Please Enter Email Id";
            }
            else
            {
                string connectionString = null;
                connectionString =
                    ConfigurationManager.ConnectionStrings["HISConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd =
                    new SqlCommand(
                        "insert into guest_quote_requests(name,request,phone,email) values(@name,@request,@phone,@email)",
                        con);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@request", TextBox2.Text);
                cmd.Parameters.AddWithValue("@phone", TextBox5.Text);
                cmd.Parameters.AddWithValue("@email", TextBox4.Text);
                cmd.ExecuteNonQuery();
                Label2.Visible = true;
                Label2.Text = "Your request has submitted";
             
            }
        }

        catch (Exception ex)
        {
            ex.ToString();
            Response.Redirect("DefaultHome.aspx");
        }
    }
}