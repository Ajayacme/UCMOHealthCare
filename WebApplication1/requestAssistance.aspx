<%@ Page Language="C#" AutoEventWireup="true" Inherits="requestAssistance" MasterPageFile="UCMO.Master" CodeBehind="requestAssistance.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <p style="margin-left: 600px; text-align: right;">
            Welcome,Policy Owner:
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#9999FF"></asp:Label>
        </p>

    </div>
    <p style="margin-left: 0px;">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" Style="text-align: left; margin-right: 812px">home</asp:LinkButton>
        <asp:LinkButton ID="Logout" runat="server" ForeColor="Red" OnClick="LinkButton1_Click" Style="text-align: right; margin-left: 485px">logout</asp:LinkButton>
    </p>
    <p>
        Please enter your assiatance query and then submit.
    </p>
    <table>
        <tr>
            <td style="width: 100px">
                <asp:Label CssClass="UCMOLabelCss" ID="Label3" runat="server" Text=" Assistance Query :  "></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" CssClass="UCMOTextBoxCss" runat="server" TextMode="MultiLine" ToolTip="Please provide Query" Width="400px" Height="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
             <td style="width: 100px">
                <asp:Button ID="Button1" CssClass="Initial" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button2" CssClass="Initial" runat="server" OnClick="Button2_Click" Text="Clear" />
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;
    </p>
</asp:Content>
