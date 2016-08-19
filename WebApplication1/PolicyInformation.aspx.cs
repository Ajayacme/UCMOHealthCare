using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UCMOHealthCare
{
    public partial class PolicyInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Convert.ToString(Session.Contents["loggeduserid"]);
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();

            Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");

        }
    }
}