<%@ Page Language="C#" AutoEventWireup="true" Inherits="responseToGuestQuotes" MasterPageFile="UCMO.Master" CodeBehind="responseToGuestQuotes.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p style="margin-left: 600px; color: Blue; text-align: right;">
            Welcome 
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#9999FF"></asp:Label>
        </p>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click1">home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Red" OnClick="LinkButton1_Click" CssClass="UCMOLinkButtonWidth">logout</asp:LinkButton>
    </div>
    <p>
        Please find the queries from guest .
    </p>
    <table>
        <tr>
            <td colspan="2" style="width: 100px">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label CssClass="UCMOLabelCss" ID="Label5" Visible="False" runat="server" Text=" Assistance Query :  "></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" CssClass="UCMOTextBoxCss" runat="server" Visible="False" TextMode="MultiLine" ToolTip="Please provide Query" Width="400px" Height="200px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="UCMOLabelCss" ID="Label6" Visible="False" runat="server" Text=" Response :  "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" CssClass="UCMOTextBoxCss" runat="server" TextMode="MultiLine"
                    Width="400px" Height="200px" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" ForeColor="#FF3300" Text="Please provide valid response" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="Initial" Style="height: 26px" Text="Submit" Visible="False" />
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>

</asp:Content>
