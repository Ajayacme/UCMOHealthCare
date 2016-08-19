using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loginahome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["loggeduserid"]);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
        Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");
      
    }
}