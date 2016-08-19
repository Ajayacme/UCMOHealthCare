using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session.Contents["loggeduserid"]);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
      //  string jScript = "<script>window.close();</script>";
       // ClientScript.RegisterClientScriptBlock(this.GetType(), "keyClientBlock", jScript);
      
       // Response.Write("<script>window.close();</script>");

         // this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Close", "window.close()", true);

       
        Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");
      
        
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("policyholderViewMyDetails.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
}