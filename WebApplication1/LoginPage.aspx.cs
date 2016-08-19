using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;
using UCMOHealthCare;


public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
      var lc = new LoginControl();
      if(lc.verfiyLogin(txtBoxUserName.Text, txtBoxPwd.Text))
      {
            Session.Add("loggeduserid",txtBoxUserName.Text);
            if (txtBoxUserName.Text.ToUpper().Contains("POLICYHOLDER"))
                Response.Redirect("loginpolicyholderhome.aspx");
            else if (txtBoxUserName.Text.ToUpper().Contains("POLICYOWNER"))
                Response.Redirect("loginpolicyownerhome.aspx");
            else if (txtBoxUserName.Text.ToUpper().Contains("POLICYAGENT"))
                Response.Redirect("loginagenthome.aspx");
            else if (txtBoxUserName.Text.ToUpper().Contains("POLICYMANAGER"))
                Response.Redirect("loginmanagerhome.aspx");
            if (txtBoxUserName.Text.ToUpper().Contains("H"))
                Response.Redirect("loginpolicyholderhome.aspx");
            else if (txtBoxUserName.Text.ToUpper().Contains("O"))
                Response.Redirect("loginpolicyownerhome.aspx");
            else if (txtBoxUserName.Text.ToUpper().Contains("A"))
                Response.Redirect("loginagenthome.aspx");
            else if (txtBoxUserName.Text.ToUpper().Contains("M"))
                Response.Redirect("loginmanagerhome.aspx");
            else
            {
                loginlabel.Visible = true;
                loginlabel.Text = "Invalid User or Password !!";
            }
         }
        else
        {
            loginlabel.Visible = true;
            loginlabel.Text = "Invalid User or Password !!";
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txtBoxUserName.Text =txtBoxPwd.Text = loginlabel.Text= "";
    }
}