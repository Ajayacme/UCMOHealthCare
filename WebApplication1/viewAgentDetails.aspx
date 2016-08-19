<%@ Page Language="C#" AutoEventWireup="true" Inherits="viewAgentDetails" MasterPageFile="UCMO.Master" CodeBehind="viewAgentDetails.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div>

        <p style="margin-left: 600px; text-align: right;">
            Welcome,Policy Owner:
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#9999FF"></asp:Label>
        </p>

    </div>
    <p style="margin-left: 0px;">
       <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/loginpolicyownerhome.aspx" Style="text-align: left;margin-right: 800px">home</asp:LinkButton>
       <asp:LinkButton ID="Logout" runat="server" ForeColor="Red" OnClick="LinkButton1_Click" Style="text-align: right;margin-left: 485px">logout</asp:LinkButton>
    </p>
    <br />
    Please find the Agent Details:<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="aid" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="aid" HeaderText="aid" ReadOnly="True" SortExpression="aid" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="purple" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="purple" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HISConnectionString %>" SelectCommand="SELECT * FROM [agent_details]"></asp:SqlDataSource>
</asp:Content>
