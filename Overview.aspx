<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Overview.aspx.cs" Inherits="Overview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<p>
</p>
    <p>
</p><br />
    <p>
<!-- Top Feature Start-->
           <div class="feature-top">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="fa fa-building"></i>
                                <%--<h3>Legal</h3>--%>
                              <asp:TextBox ID="TextBox1" style="text-align:center" runat="server" class="form-control" 
                                    BackColor="#121518" BorderColor="#121518" BorderStyle="None" 
                                    ForeColor="White" Font-Size="XX-Large" onload="TextBox1_Load" 
                                    ReadOnly="True"></asp:TextBox> 
                                <p>Police Stations</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="fa fa-users"></i>
                                <%--<h3>Attorneys</h3>--%>
                               <center> 
                                   <asp:TextBox ID="TextBox2" style="text-align:center" runat="server" class="form-control" 
                                    BackColor="#121518" BorderColor="#121518" BorderStyle="None" 
                                    ForeColor="White" Font-Size="XX-Large" onload="TextBox2_Load" ReadOnly="True"></asp:TextBox> 
                                <p>Missing Persons</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-thumbs-up"></i>
                                <%--<h3>Success</h3>--%>
                                <center><asp:TextBox ID="TextBox3" style="text-align:center" runat="server" class="form-control" 
                                    BackColor="#121518" BorderColor="#121518" BorderStyle="None" 
                                    ForeColor="White" Font-Size="XX-Large" onload="TextBox3_Load" 
                                    ReadOnly="True" ></asp:TextBox> </center>
                                <p>99.99% Case Won</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-handshake"></i>
                               <%-- <h3>Support</h3>--%>
                               <asp:TextBox ID="TextBox4" style="text-align:center" runat="server" class="form-control" 
                                    BackColor="#121518" BorderColor="#121518" BorderStyle="None" 
                                    ForeColor="White" Font-Size="XX-Large" onload="TextBox4_Load" 
                                    ReadOnly="True"></asp:TextBox> 
                                <p>Quick Support</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Top Feature End--></p>
<p>
    &nbsp;&nbsp;
   <center> <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
        Text="No. of Visitors:" BackColor="Yellow" BorderColor="White" ForeColor="White"></asp:Label></center>
    </p>
<p>
</p>
</asp:Content>

