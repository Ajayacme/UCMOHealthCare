<%@ Page Language="C#" AutoEventWireup="true" Inherits="DefaultHome" MasterPageFile="UCMO.Master" CodeBehind="DefaultHome.aspx.cs" %>

<asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="UCMORightDivcss">
        <h4><a href="LoginPage.aspx" style="background-color: #FFFFFF">Login</a></h4>
    </div>
    <table style="width: 90%; margin-right: 16px;">
        <tr>
            <td class="auto-style4">
                <asp:Button Text="Home" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
                    OnClick="Tab1_Click" />
                <asp:Button Text="Get free Quote" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
                    OnClick="Tab2_Click" />
                <asp:Button Text="About Us" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
                    OnClick="Tab3_Click" />
                <asp:Button Text="Contact Us" BorderStyle="None" ID="Tab4" CssClass="Initial" runat="server"
                    OnClick="Tab4_Click" />
                <asp:MultiView ID="MainView" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table style="width: 100%; height: 350px; border-width: 2px; border-color: purple; border-style: solid">
                            <tr>
                                <td class="auto-style8">
                                    <h3>
                                        <span>
                                            <asp:Image CssClass="UCMOSubImagecss" runat="server" ImageUrl="~/Images/fhi.png" /></span>
                                    </h3>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">

                        <table style="width: 100%; height: 350px; border-width: 2px; border-color: purple; border-style: solid">
                            <tr>
                                <td style="width: 100px; margin-top: 10px">
                                    <br />
                                    <asp:Label ID="Label5" runat="server" CssClass="UCMOLabelCss" Text="Full Name : "></asp:Label>


                                </td>
                                <td style="margin-top: 10px">
                                    <br />
                                    <asp:TextBox ID="TextBox1"
                                        CssClass="UCMOTextBoxCss" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; margin-top: 10px">
                                    <br />
                                    <asp:Label ID="Label6" runat="server" CssClass="UCMOLabelCss" Text="Quotation Message :"></asp:Label>


                                </td>
                                <td style="margin-top: 10px">
                                    <br />
                                    <asp:TextBox ID="TextBox2"
                                        runat="server" CssClass="UCMOTextBoxCss" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; margin-top: 10px">
                                    <br />
                                    <asp:Label ID="Label3" runat="server" CssClass="UCMOLabelCss" Text="Phone :"></asp:Label>
                                </td>
                                <td style="margin-top: 10px">
                                    <br />
                                    <asp:TextBox ID="TextBox5" CssClass="UCMOTextBoxCss" runat="server"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td style="width: 100px; margin-top: 10px">
                                    <br />
                                    <asp:Label ID="Label4" runat="server" CssClass="UCMOLabelCss" Text="Email Id :"></asp:Label>


                                </td>
                                <td style="margin-top: 10px">
                                    <br />
                                    <asp:TextBox ID="TextBox4" CssClass="UCMOTextBoxCss" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; margin-top: 10px">
                                    <br />
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red"
                                        Text="Please enter all the above fields with correct details"></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; margin-top: 10px">
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CssClass="Initial" OnClick="Button1_Click" Text="RequestFreeQuote" />


                                </td>
                                <td style="margin-top: 10px">
                                    <br />
                                    <asp:Button ID="Button2" runat="server" CssClass="Initial" OnClick="Button2_Click" Text="Clear" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table style="width: 100%; height: 350px; border-width: 2px; border-color: purple; border-style: solid; overflow: auto">
                            <tr>
                                <td class="auto-style2" style="font-size: medium; padding: inherit; margin: inherit; color: black; overflow: auto">Health Insurance System is the national trade association representing the health insurance industry.
                                    <br />
                                    <br />
                                    <br />
                                    A healthy future filled with possibilities starts with an understanding of how Medicare works and what your options are. That’s why Humana has made it easier to find coverage that works for you, so you can stay healthy and enjoy every moment.
                                    <br />
                                    <br />
                                    <br />
                                    Our Healthcare System advocates for public policies that expand access to affordable health care coverage to 
                                    all customers through a competitive marketplace that fosters choice, quality and innovationYou’ve got certain rights as a Medicare recipient, including the right to privacy. See the rest of your rights and protections as a Medicare member— and how you may be able to apply for extra help with your healthcare costs.
                                   <br />
                                    <br />
                                    Medicare has four parts – A, B, C, and D. Each is designed to cover specific services, allowing you to choose the plan that is the best fit for you based on your healthcare needs and budget. Learn more about Medicare Parts A and B below:
                                      <br />
                                    <br />
                                    Medicare Parts A and B
Medicare is a Federal health insurance program for people 65 years or older, certain people with disabilities, and people with permanent kidney failure treated with dialysis or a transplant. When talking about Medicare, people often mention Part A and Part B. These two parts of Medicare break down as follows:

Part A covers inpatient care in a hospital or a limited stay in a skilled nursing facility Read more about Medicare Part A.

Part B covers doctors and outpatient hospital services Read more about Medicare Part B.

Medicare Parts A and B pay for many healthcare services and supplies, but they don’t cover all of your healthcare costs. Also, drug coverage when not in the hospital is very limited. That's why most people with Medicare carry additional Medicare coverage from a private insurance company — Parts C and D.Explore Humana’s Medicare Plans.
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <table style="width: 100%; height: 350px; border-width: 2px; border-color: purple; border-style: solid">
                            <tr>
                                <td>
                                    <br />
                                    <br />
                                    <h3>Call us @ 1800666999
                                    </h3>
                                    <h3>Email : axv13350@ucmo.edu</h3>
                                    <p>
                                        &nbsp;
                                    </p>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
    </table>
</asp:Content>


