<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="UCMO.Master" Inherits="checkFamilyMemberDetailsPO" CodeBehind="checkFamilyMemberDetailsPO.aspx.cs" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <p style="margin-left: 600px; text-align: right;">
            Welcome,Policy Owner:
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#9999FF"></asp:Label>
        </p>

    </div>
    <p style="margin-left: 0px;">
       <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/loginpolicyownerhome.aspx" Style="text-align: left;margin-right: 812px">home</asp:LinkButton>
       <asp:LinkButton ID="Logout" runat="server" ForeColor="Red" OnClick="Logout_Click" Style="text-align: right;margin-left: 485px">logout</asp:LinkButton>
    </p>
    <p style="text-align: left; margin-left: 0px">
        &nbsp;
    </p>
    <p style="text-align: left; margin-left: 0px">
        Please find your family members list:&nbsp;
    </p>
    <p style="text-align: left; margin-left: 0px">
        <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="Label" Visible="False"></asp:Label>
    </p>
    <p style="text-align: left; margin-left: 0px">
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="purple" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="purple" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="white" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
    </p>
</asp:Content>
