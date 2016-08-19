<%@ Page Language="C#" AutoEventWireup="true" Inherits="UCMOHealthCare.assistanceResponses"
    MasterPageFile="UCMO.Master" CodeBehind="assistanceResponses.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <p style="margin-left: 600px; text-align: right;">
            Welcome,
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#9999FF"></asp:Label>
        </p>

    </div>
    <p style="margin-left: 0px;">
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/loginpolicyownerhome.aspx" Style="text-align: left; margin-right: 800px">home</asp:LinkButton>
        <asp:LinkButton ID="Logout" runat="server" ForeColor="Red" OnClick="Logout_Click" Style="text-align: right; margin-left: 485px">logout</asp:LinkButton>
    </p>

    <br />

    Please find the previous requests:<br />

    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />


    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" CellSpacing="2" ForeColor="Black" Height="100px" Width="800px">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="purple" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="purple" ForeColor="purple" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

    </div>
</asp:Content>
