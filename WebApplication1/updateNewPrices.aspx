<%@ Page Language="C#" AutoEventWireup="true" Inherits="updateNewPrices" MasterPageFile="UCMO.Master" CodeBehind="updateNewPrices.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <p style="margin-left: 600px; color: Blue; text-align: right;">
            Welcome 
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#9999FF"></asp:Label>
        </p>
        <asp:LinkButton ID="LinkButton2" runat="server"  PostBackUrl="~/loginmanagerhome.aspx">home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Red" OnClick="LinkButton1_Click" CssClass="UCMOLinkButtonWidth">logout</asp:LinkButton>
        <p>
            Please find the Policies that are available to offer the policy owners
        </p>
    </div>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PolicyID" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="PolicyID" HeaderText="PolicyID" ReadOnly="True" SortExpression="PolicyID" />
            <asp:BoundField DataField="PolicyDescription" HeaderText="PolicyDescription" SortExpression="PolicyDescription" />
            <asp:BoundField DataField="NumOfMembers" HeaderText="NumOfMembers" SortExpression="NumOfMembers" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HISConnectionString %>" SelectCommand="SELECT * FROM [policy_details]"></asp:SqlDataSource>
    <p>
        Enter
            Policy Price to be updated.
    </p>
    <p>
        Enter Policy ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="UCMOTextBoxCss" DataSourceID="SqlDataSource1" DataTextField="PolicyID" DataValueField="PolicyID">
            </asp:DropDownList>
        &nbsp;&nbsp;
    </p>
    <p>
        Enter New Price:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="UCMOTextBoxCss"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="Please enter appropriate values for Policy ID and Price" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>
</asp:Content>
