<%@ Page Language="C#" AutoEventWireup="true" Inherits="_Default" MasterPageFile="UCMO.Master" CodeBehind="loginpolicyholderhome.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    </div>
    <p style="margin-left: 600px; color: Blue; text-align: right;">
        Welcome ,
            Policy Holder:
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#9999FF"></asp:Label>
    </p>
    <p style="margin-left: 640px; text-align: right;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="Logout" runat="server" ForeColor="Red" OnClick="LinkButton1_Click" Style="text-align: right">logout</asp:LinkButton>
    </p>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <marquee onmouseover="stop();" onmouseout="start();" scrollamount="30" scrolldelay="350" color="Red" direction="side" width="59%" height="16" style="margin-top: 0px"> Please choose one of the following operation.  </marquee>
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="ViewMyDetails" runat="server" OnClick="LinkButton2_Click">View Personal Details</asp:LinkButton>
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/requestAssistance.aspx" OnClick="LinkButton3_Click">Request Assistance</asp:LinkButton>
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/assistanceResponses.aspx">Previous  Assistance Requests</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
