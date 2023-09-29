<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Loudspeaker.aspx.cs" Inherits="Loudspeaker" %>

<%@ Register Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <head>
 </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                       <%-- <div class="col-12">
                            <h2>Online Complaint</h2>
                        </div>--%>
                        <div class="col-12">
                            <a href="default.aspx">Home</a>
                            <a href="">Permission</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            <br/>

            <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-2">
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" BackColor="White" Font-Bold="False" 
                    ForeColor="#3366FF" BorderColor="Blue">
                    <asp:ListItem>Select Police Station</asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                    <asp:ListItem>E</asp:ListItem>
                </asp:DropDownList>
            </div>

            </div>
            <br/>

            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <asp:Button ID="Button1" runat="server" class="form-control" 
                    Text="Applicant Details" BackColor="#3366FF" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="White" disabled/>
            </div>

            </div><br />


             <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <asp:Label ID="Label1" runat="server" Text="Full Name" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" required></asp:TextBox>
            </div>

            <div class="col-sm-5">
            <asp:Label ID="Label2" runat="server" Text="Contact No." Font-Bold="True" MaxLength="10"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Number" required></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter 10 Digits" 
                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </div>
            </div><br />


            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
            <asp:Label ID="Label3" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="MultiLine" required></asp:TextBox>
            </div>
            </div><br />


            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <asp:Button ID="Button2" runat="server" class="form-control" 
                    Text="Organisation Details" BackColor="#3366FF" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="White" disabled/>
            </div>
            </div><br />


            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
            <asp:Label ID="Label4" runat="server" Text="Select" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Organisation</asp:ListItem>
                    <asp:ListItem>Association</asp:ListItem>
                    <asp:ListItem>Political Party</asp:ListItem>
                    <asp:ListItem>Mandal</asp:ListItem>
                    <asp:ListItem>Individual</asp:ListItem>
                    <asp:ListItem>Housing Society</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-sm-5">
            <asp:Label ID="Label5" runat="server" Text="Full Name of Organisation" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" class="form-control" required></asp:TextBox></div>
            </div><br />

            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
            <asp:Label ID="Label6" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" class="form-control" TextMode="MultiLine" required></asp:TextBox>
            </div>
            </div><br />


            <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-5">
            <asp:Label ID="Label7" runat="server" Text="Office Telephone No." Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" class="form-control" TextMode="Number" required></asp:TextBox>
            </div>

            <div class="col-sm-5">
            <asp:Label ID="Label8" runat="server" Text="Office Registration No." Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" class="form-control" TextMode="SingleLine"></asp:TextBox>
            </div>

            </div><br />

            <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-10">
            <asp:Label ID="Label9" runat="server" Text="Upload Organisation Registration Documents" Font-Bold="True"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required/>
               <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
--%>
 </div>

            </div><br />
            

            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <asp:Button ID="Button3" runat="server" class="form-control" 
                    Text="Organiser's Details" BackColor="#3366FF" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="White" disabled/>
            </div>

            </div><br />


             <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <asp:Label ID="Label10" runat="server" Text="Full Name" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" class="form-control" required></asp:TextBox>
            </div>

            <div class="col-sm-5">
            <asp:Label ID="Label11" runat="server" Text="Contact No." Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server" class="form-control" TextMode="Number" required></asp:TextBox>
            </div>
            </div><br />


            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
            <asp:Label ID="Label12" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox10" runat="server" class="form-control" TextMode="MultiLine" required></asp:TextBox>
            </div>
            </div><br />

            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <asp:Button ID="Button4" runat="server" class="form-control" 
                    Text="Program Details" BackColor="#3366FF" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="White" disabled/>
            </div>

            </div><br />

            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <asp:Label ID="Label13" runat="server" Text="Nature of Program" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox11" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="col-sm-5">
            <asp:Label ID="Label14" runat="server" Text="Venue of Program" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox12" runat="server" class="form-control"  TextMode="SingleLine" required></asp:TextBox>
            </div>
            </div><br />


            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
            <asp:Label ID="Label15" runat="server" Text="Schedule for use of Loudspeakers" Font-Bold="True" ForeColor="Blue"></asp:Label>
            </div>
            </div><br />

            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
            <asp:Label ID="Label20" runat="server" Text="Choose Morning Time (6 AM to 1 PM )" Font-Bold="False" ForeColor="Black" Font-Size="Large"></asp:Label>
            </div>

            <div class="col-sm-5">
            <asp:Label ID="Label21" runat="server" Text="Choose Evening Time (5 PM to 10 PM )" Font-Bold="False" ForeColor="Black" Font-Size="Large"></asp:Label>
            </div>
            </div><br />


            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
            <asp:Label ID="Label16" runat="server" Text="From" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server"  class="form-control">
                <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>6 AM</asp:ListItem>
                    <asp:ListItem>7 AM</asp:ListItem>
                    <asp:ListItem>8 AM</asp:ListItem>
                    <asp:ListItem>9 AM</asp:ListItem>
                    <asp:ListItem>10 AM</asp:ListItem>
                    <asp:ListItem>11 AM</asp:ListItem>
                    <asp:ListItem>12 PM</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-sm-1"></div>

            <div class="col-sm-2">
            <asp:Label ID="Label17" runat="server" Text="To" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">
                <asp:ListItem>Select</asp:ListItem>
                    
                    <asp:ListItem>7 AM</asp:ListItem>
                    <asp:ListItem>8 AM</asp:ListItem>
                    <asp:ListItem>9 AM</asp:ListItem>
                    <asp:ListItem>10 AM</asp:ListItem>
                    <asp:ListItem>11 AM</asp:ListItem>
                    <asp:ListItem>12 PM</asp:ListItem>
                    <asp:ListItem>1 PM</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-sm-2">
            <asp:Label ID="Label18" runat="server" Text="From" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DropDownList5" runat="server"  class="form-control">
                <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>5 PM</asp:ListItem>
                    <asp:ListItem>6 PM</asp:ListItem>
                    <asp:ListItem>7 PM</asp:ListItem>
                    <asp:ListItem>8 PM</asp:ListItem>
                    <asp:ListItem>9 PM</asp:ListItem>
                    
                </asp:DropDownList>
            </div>

            <div class="col-sm-1"></div>

            <div class="col-sm-2">
            <asp:Label ID="Label19" runat="server" Text="To" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DropDownList6" runat="server" class="form-control">
                <asp:ListItem>Select</asp:ListItem>
                    
                    <asp:ListItem>6 PM</asp:ListItem>
                    <asp:ListItem>7 PM</asp:ListItem>
                    <asp:ListItem>8 PM</asp:ListItem>
                    <asp:ListItem>9 PM</asp:ListItem>
                    <asp:ListItem>10 PM</asp:ListItem>
                    
                </asp:DropDownList>
            </div>

            </div><br />

             <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <asp:Label ID="Label22" runat="server" Text="From Date" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox13" runat="server" class="form-control" TextMode="Date" required></asp:TextBox>
            </div>

            <div class="col-sm-5">
                <asp:Label ID="Label23" runat="server" Text="To Date" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox14" runat="server" class="form-control" TextMode="Date" required></asp:TextBox>
            </div>
            </div><br />


             <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <asp:Label ID="Label24" runat="server" Text="No. of Loudspeakers to be Used" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox15" runat="server" class="form-control" TextMode="Number" required></asp:TextBox>
            </div>

            <div class="col-sm-5">
                <asp:Label ID="Label25" runat="server" Text="Generator Facility Available" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DropDownList7" runat="server" class="form-control">
                <asp:ListItem>Select</asp:ListItem>
                    
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            </div><br />


            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <asp:Label ID="Label26" runat="server" Text="Pre-requisite Permission Obtained" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DropDownList8" runat="server" class="form-control">
                 <asp:ListItem>Select</asp:ListItem>
                    
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-sm-5">
                <asp:Label ID="Label27" runat="server" Text="Upload Permission Document" Font-Bold="True"></asp:Label>
                <asp:FileUpload ID="FileUpload2" runat="server" class="form-control"/>
                
               
            </div>
            </div><br />



            <div class="row">
<div class="col-sm-5"></div>
<div class="col-sm-2">
    <asp:Button ID="Button5" runat="server" class="form-control" Text="Submit" 
        BackColor="#3333FF" ForeColor="White" Font-Size="Large" 
        onclick="Button5_Click" />
</div>
<%--<div class="col-sm-5">
    <asp:TextBox ID="TextBox16" runat="server" class="form-control" TextMode="DateTimeLocal"></asp:TextBox>
</div>--%>
</div>
</asp:Content>

