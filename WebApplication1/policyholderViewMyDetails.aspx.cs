using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using UCMOHealthCare;

public partial class phViewMyDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text = Convert.ToString(Session.Contents["loggeduserid"]);
        PolicyHolder po = new PolicyHolder(Label1.Text);
        TextBox1.Text = po.getLname();
        TextBox2.Text = po.getFname();
        TextBox3.Text = po.getAddress();
        TextBox4.Text = po.getEmail();
        TextBox5.Text = po.getPhone();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
     
        Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {

    }
}