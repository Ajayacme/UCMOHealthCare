<%@ Page Language="C#" AutoEventWireup="true" Inherits="viewCustomerDetails" MasterPageFile="UCMO.Master" CodeBehind="viewCustomerDetails.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p style="margin-left: 600px; color: Blue; text-align: right;">
            Welcome ,
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#9999FF"></asp:Label>
        </p>
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/loginagenthome.aspx">home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Red" OnClick="LinkButton1_Click" CssClass="UCMOLinkButtonWidth">logout</asp:LinkButton>
       </div>
    <p>
        Please find the customer details :
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cid" DataSourceID="SqlDataSource1" GridLines="Both">
           <Columns>
                <asp:BoundField DataField="cid" HeaderText="cid" ReadOnly="True" SortExpression="cid" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            </Columns>
          <FooterStyle BackColor="black" ForeColor="Black" />
            <HeaderStyle BackColor="purple" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="purple" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="white" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HISConnectionString %>" SelectCommand="SELECT * FROM [customer_details]"></asp:SqlDataSource>
    </p>
</asp:Content>
