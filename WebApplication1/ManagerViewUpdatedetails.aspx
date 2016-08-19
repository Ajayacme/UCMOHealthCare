<%@ Page Language="C#" AutoEventWireup="true" Inherits="ManagerViewUpdatedetails" MasterPageFile="UCMO.Master" CodeBehind="ManagerViewUpdatedetails.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p style="margin-left: 600px; color: Blue; text-align: right;">
            Welcome 
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#9999FF"></asp:Label>
        </p>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/loginmanagerhome.aspx">home</asp:LinkButton>
        <asp:LinkButton ID="Logout" runat="server" ForeColor="Red" OnClick="Logout_Click" CssClass="UCMOLinkButtonWidth">logout</asp:LinkButton>
        <p>
            Please find your details in our record. If any thing needs to be changed, modify the details and click on Update.
        </p>
    </div>

    <table>
        <tr>
            <td style="width: 100px">
                <asp:Label CssClass="UCMOLabelCss" ID="Label3" runat="server" Text="Last Name :  "></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" CssClass="UCMOTextBoxCss" runat="server" ToolTip="Please provide username"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label CssClass="UCMOLabelCss" ID="Label4" runat="server" Text=" First Name:  "></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" CssClass="UCMOTextBoxCss" runat="server" ToolTip="Please provide username"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label CssClass="UCMOLabelCss" ID="Label5" runat="server" Text="  Address:  "></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox3" CssClass="UCMOTextBoxCss" runat="server" TextMode="MultiLine" ToolTip="Please provide username"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label CssClass="UCMOLabelCss" ID="Label6" runat="server" Text="  Email:  "></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox4" CssClass="UCMOTextBoxCss" runat="server" ToolTip="Please provide username"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label CssClass="UCMOLabelCss" ID="Label7" runat="server" Text="  Phone:  "></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox5" CssClass="UCMOTextBoxCss" runat="server" ToolTip="Please provide username"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="Button1" CssClass="Initial" runat="server" OnClick="Button1_Click" Text="Update" />
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
