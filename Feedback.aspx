<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                            <a href="">Inform Us / Feedback</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            </br>

            <div class="row">
            <div class="col-sm-2"></div>

            <div class="col-sm-8">
                <asp:Label ID="Label1" runat="server" Text="Disclaimer:" Font-Size="Large" Font-Bold="True"></asp:Label><br/>
                As per the prevailing laws, FIR of a major crime (′cognizable crimes like theft, burglary, motor vehicle theft, accident, chain-snatching, assault, rape, murder, attempt to commit murder, robbery, dacoity, extortion etc) can only be registered at a Police Station. Please contact your nearest Police Station for the same.<br/><br/>

Report non-cognizable complaint on online complaint portal. 
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/OnlineComplaint.aspx" ForeColor="#3333FF">[ Online Complaint ]</asp:LinkButton> <br/><br/>

Report here feedback of experience about police.</div><br/><br/>

            </div><br/>


            <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-5">
            <asp:Label ID="Label2" runat="server" Text="Select Category" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                    <asp:ListItem>Choose...</asp:ListItem>
                    <asp:ListItem>Inform</asp:ListItem>
                    <asp:ListItem>Feedback</asp:ListItem>
                </asp:DropDownList>
            </div>

             <div class="col-sm-5">
            <asp:Label ID="Label3" runat="server" Text="Police Station" Font-Size="Medium" Font-Bold="True"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                <asp:ListItem>Choose...</asp:ListItem>
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>    
            </div>

            <%--<div class="col-sm-3">
            <asp:Label ID="Label4" runat="server" Text="Full Name" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                    
            </div>--%>
            </div>
            <br/>


             <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-1">
            <asp:Label ID="Label10" runat="server" Text="Prefix" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                <asp:ListItem>Select....</asp:ListItem>
              <asp:ListItem>Mr.</asp:ListItem>
              <asp:ListItem>Mrs.</asp:ListItem>
              <asp:ListItem>Master</asp:ListItem>
              <asp:ListItem>Miss</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-sm-3">
            <asp:Label ID="Label4" runat="server" Text="First Name" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" TextMode="SingleLine" required></asp:TextBox></div>

                <div class="col-sm-3">
                <asp:Label ID="Label11" runat="server" Text="Middle Name" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" class="form-control" TextMode="SingleLine" required></asp:TextBox></div>

                <div class="col-sm-3">
                <asp:Label ID="Label12" runat="server" Text="Last Name" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" class="form-control" required></asp:TextBox></div>
</div><br/>

<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-1">
    <asp:Label ID="Label13" runat="server" Text="Code"></asp:Label>
    <asp:TextBox ID="TextBox9" runat="server" class="form-control" value="+91" disabled></asp:TextBox>
</div>
            <div class="col-sm-3">
            <asp:Label ID="Label5" runat="server" Text="Contact Number" Font-Size="Medium" Font-Bold="True" MaxLength="10"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Number" required></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter 10 Digits" 
                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></div>

                <div class="col-sm-3">
                <asp:Label ID="Label6" runat="server" Text="Email" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="Email" required></asp:TextBox></div>

                <div class="col-sm-3">
                <asp:Label ID="Label7" runat="server" Text="Subject" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" class="form-control" required></asp:TextBox></div>

                </div><br/>

                <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" class="form-control" required></asp:TextBox></div>
            </div><br/>

            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <asp:Label ID="Label9" runat="server" Text="Description" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" class="form-control" TextMode="MultiLine" required></asp:TextBox></div>
            </div><br/>

            <div class="row">
<div class="col-sm-5"></div>
<div class="col-sm-2">
    <asp:Button ID="Button1" runat="server" class="form-control" Text="Submit" 
        BackColor="#3333FF" ForeColor="White" Font-Size="Large" 
        onclick="Button1_Click" />
</div>
<div class="col-sm-5"></div>
</div>

    <asp:Label ID="Label14" runat="server" Text=""></asp:Label>

</asp:Content>

