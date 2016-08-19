<%@ Page Language="C#" AutoEventWireup="true" Inherits="loginahome" MasterPageFile="UCMO.Master" CodeBehind="loginagenthome.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p style="margin-left: 600px; color: Blue; text-align: right;">
        Welcome, Agent :
            <asp:Label ID="Label1" runat="server" ForeColor="#0066CC" Text="Label"></asp:Label>
    </p>

    <p style="margin-left: 640px; color: Blue; text-align: right;">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">logout</asp:LinkButton>
    </p>
    <p style="margin-left: 760px">
        &nbsp;
    </p>
    <p style="margin-left: 760px">
        &nbsp;
    </p>
    <div style="margin-left: 80px">
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/AgentViewUpdatedetails.aspx">View/Update Personal Information</asp:LinkButton>
    </div>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/viewNewUpdates.aspx">View New Prices</asp:LinkButton>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/provideAssistance.aspx">Provide Assistance</asp:LinkButton>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/responseToGuestQuotes.aspx">Guest Free Quotes</asp:LinkButton>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/viewCustomerDetails.aspx">View Policy Owner Details</asp:LinkButton>
    <br />
      <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/PolicyInformation.aspx">View Policy Information</asp:LinkButton>
    <br /
  </asp:Content>
