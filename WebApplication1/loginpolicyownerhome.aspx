<%@ Page Language="C#" AutoEventWireup="true" Inherits="Default2" MasterPageFile="UCMO.Master" CodeBehind="loginpolicyownerhome.aspx.cs" %>

<asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p style="margin-left: 600px; color: Blue; text-align: right;">
            Welcome,Policy Owner:
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#9999FF"></asp:Label>
        </p>
        <p style="margin-left: 640px; color: Blue; text-align: right;">
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" OnClick="LinkButton1_Click" Style="text-align: right">logout</asp:LinkButton>
        </p>
        <p style="text-align: right; margin-left: 640px">
            &nbsp;
        </p>
        <marquee onmouseover="stop();" onmouseout="start();" scrollamount="30" scrolldelay="350" direction="side" width="75%" height="16" style="margin-top: 0px; text-align: center; margin-left: 84px;"> Please choose one of the following operation.  </marquee>
        <p style="margin-left: 80px">
            &nbsp;
        </p>
        <p style="margin-left: 80px">
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" PostBackUrl="~/ViewUpdatePersonalDetails.aspx">View/Update Personal Information</asp:LinkButton>
        </p>
        <p style="margin-left: 80px">
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/checkFamilyMemberDetailsPO.aspx">Check Family members details</asp:LinkButton>
        </p>
        <p style="margin-left: 80px">
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/requestAssistance.aspx">Request Assistance</asp:LinkButton>
        </p>
        <p style="margin-left: 80px">
            <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/assistanceResponses.aspx">Previous  Assistance Requests</asp:LinkButton>
        </p>
        <p style="margin-left: 80px">
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/viewAgentDetails.aspx">View Agent Details</asp:LinkButton>
        </p>
           <p style="margin-left: 80px">
            <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/PolicyOwnerPolicyDetails.aspx">View your Policy Details</asp:LinkButton>
        </p>
        <br />
        <br />
    </div>
</asp:Content>
