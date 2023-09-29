<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <%--<div class="col-12">
                            <h2>Enquires</h2>
                        </div>--%>
                        <div class="col-12">
                            <a href="AdminDefault.aspx">Home</a>
                            <a href="">Enquiry</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            
           <%-- <div style="margin-top:0px;" class="row no-margin">
       
 
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3818.391846530708!2d74.56249851418025!3d16.85649992233697!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc1184159672893%3A0x6e6dcbebd57a1e5e!2sSangli%20Police%20Quarters!5e0!3m2!1sen!2sin!4v1618809329771!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="yes" loading="lazy"></iframe>
         
          </div>--%>

            <!-- Contact Start -->
            <%--<div class="contact">
                <div class="container">
                    <div class="section-header">
                        <h2>Contact Us</h2>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="contact-info">
                                <div class="contact-item">
                                    <i class="fa fa-map-marker-alt"></i>
                                    <div class="contact-text">
                                        <h2>Location</h2>
                                        <p>Sangli Police HeadQuarters, Sangli</p>
                                    </div>
                                </div>
                                <div class="contact-item">
                                    <i class="fa fa-phone-alt"></i>
                                    <div class="contact-text">
                                        <h2>Phone</h2>
                                        <p>+0233 2222 222</p>
                                    </div>
                                </div>
                                <div class="contact-item">
                                    <i class="fa fa-envelope"></i>
                                    <div class="contact-text">
                                        <h2>Email</h2>
                                        <p>sanglicrime@gmail.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="contact-form">
                                <form>
                                    <div class="form-group">
                                        
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Your Name"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Your Email" TextMode="Email"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Mobile No"  TextMode="Number" MaxLength="10" ></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                            ErrorMessage="Enter Valid Number" ValidationExpression="[0-9]{10}" 
                                            ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                       
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    <div>
                                        
                                        <asp:Button ID="Button1" runat="server" class="btn" Text="Submit" 
                                            onclick="Button1_Click" />
                                    &nbsp;
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <!-- Contact End -->
            <br />
            <br />
            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <asp:Button ID="Button2" runat="server" Text="Enquiry" class="form-control" Font-Size="XX-Large" BorderColor="#663300" BackColor="Black" ForeColor="#663300" />
            
            </div>
            </div><br />


            <%--<!-- Newsletter Start -->
            <div class="newsletter">
                <div class="container">
                    <div class="section-header">
                        <h2>Subscribe Our Newsletter</h2>
                    </div>
                    <div class="form">
                        <input class="form-control" placeholder="Email here">
                        <button class="btn">Submit</button>
                    </div>
                </div>
            </div>
            <!-- Newsletter End -->--%>
<br />
            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                
            </div>
            </div><br />

   <center> 
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" Height="303px" Width="1000px" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Complaint Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Id" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Message" HeaderText="Message / Doubt" 
                SortExpression="Message" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Reply Option">
                <ItemTemplate>
                    <asp:Button ID="Button3" runat="server" BackColor="Lime" 
                        CommandArgument='<%# Eval("Id")%>' Height="41px" onclick="Button3_Click" 
                        Text="Reply" Width="206px" />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView></center></div>
            </div><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CrimeConnectionString %>" 
        
        SelectCommand="SELECT [Id], [Name], [Email], [Mobile], [Message], [Status], [Reply] FROM [Contact] ORDER BY [Id] DESC">
    </asp:SqlDataSource>
    <br />

</asp:Content>

