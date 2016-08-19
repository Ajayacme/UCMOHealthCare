<%@ Page Language="C#" AutoEventWireup="true" Inherits="viewNewUpdates" MasterPageFile="UCMO.Master" CodeBehind="viewNewUpdates.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p style="margin-left: 600px; color: Blue; text-align: right;">
            Welcome 
            <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#9999FF"></asp:Label>
        </p>
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/loginagenthome.aspx">home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Red" OnClick="Logout_Click" CssClass="UCMOLinkButtonWidth">logout</asp:LinkButton>
    </div>
    <p>
        Please find the below Policy Details for which price changed.
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="PolicyID" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="PolicyID" HeaderText="PolicyID" ReadOnly="True" SortExpression="PolicyID" />
                <asp:BoundField DataField="PolicyDescription" HeaderText="PolicyDescription" SortExpression="PolicyDescription" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="NumOfMembers" HeaderText="NumOfMembers" SortExpression="NumOfMembers" />
            </Columns>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HISConnectionString %>" SelectCommand="SELECT [PolicyID], [PolicyDescription], [Price], [NumOfMembers] FROM [policy_details] WHERE ([PriceUpdated] = @PriceUpdated)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Y" Name="PriceUpdated" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
