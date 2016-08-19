<%@ Page Language="C#" AutoEventWireup="true" Inherits="loginmhome" MasterPageFile="UCMO.Master" CodeBehind="loginmanagerhome.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="margin-left: 600px; color: Blue; text-align: right;">
        Welcome, Manager : 
       <asp:Label ID="Label1" runat="server" ForeColor="#0099CC"></asp:Label>
    </p>
    <p style="margin-left: 640px; color: Blue; text-align: right;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">logout</asp:LinkButton>
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>
    <div style="margin-left: 40px">
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/ManagerViewUpdatedetails.aspx">View/Update Personal Information</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/provideAssistance.aspx">Provide Assistance</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/updateNewPrices.aspx">Update New Prices</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/viewAgentDetails.aspx">View Agent Details</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/viewCustomerDetails.aspx">View Policy Owner Details</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/responseToGuestQuotes.aspx">Guest Free Quotes</asp:LinkButton>
    </div>
</asp:Content>


