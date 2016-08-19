using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UCMOHealthCare
{
    public partial class PolicyOwnerPolicyDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var command= "select pd.PolicyID,PolicyDescription,NumberOfFamilyMembers,Price,MemberDetails " +
                                           "from dbo.policy_details pd,dbo.customer_policy_details cd where pd.policyid=cd.policyid"+
                                            " and PolicyOwnerName='" + Session.Contents["loggeduserid"] + "'";
            Label1.Text = Session.Contents["loggeduserid"].ToString();
            SqlDataSource1.SelectCommand = command;
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Response.Write("<script> window.close('For securityreason window is getting closed'); window.open('DefaultHome.aspx');</script>");

        }
    }
}