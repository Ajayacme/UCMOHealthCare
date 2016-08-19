<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="UCMO.Master" Inherits="LoginPage" CodeBehind="LoginPage.aspx.cs" %>

<asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="margin-left: 400px; margin-top: 100px">
        <tr>
            <td style="width: 100px">
                <asp:Label CssClass="UCMOLabelCss" ID="Label1" runat="server" Text="Username:  "></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtBoxUserName" CssClass="UCMOTextBoxCss" runat="server" ToolTip="Please provide username"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" CssClass="UCMOLabelCss" runat="server" Text="Password: "></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtBoxPwd" CssClass="UCMOTextBoxCss" runat="server" TextMode="Password" ToolTip="Please provide password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnLogin" CssClass="Initial" runat="server" Text="Submit" OnClick="btnLogin_Click" />
            </td>
            <td>
                <asp:Button ID="Button1" CssClass="Initial" runat="server" OnClick="Button1_Click" Text="Clear" />
            </td>
            <td colspan="2">
                <asp:Label ID="loginlabel" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>

    </table>
</asp:Content>

