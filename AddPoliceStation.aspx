<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddPoliceStation.aspx.cs" Inherits="AddPoliceStation" %>

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
                            <a href="AdminDefault.aspx">Home</a>
                            <a href="Police Station.aspx">Police Station</a>
                            <a href="">Add Police Station</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            <br/>

             <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-7">
                <asp:Label ID="Label1" runat="server" Text="Name of Police Station" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="col-sm-3">
                <asp:Label ID="Label2" runat="server" Text="Police Station Code" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
            </div>

            </div>
            <br/>

             <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-7">
            <asp:Label ID="Label3" runat="server" Text="Police Incharge" Font-Bold="True"></asp:Label>
             <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Full Name"></asp:TextBox>
            </div>
            <div class="col-sm-3">
            <asp:Label ID="Label4" runat="server" Text="Police Incharge Picture" Font-Bold="True"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"/>
            </div>
            </div>
            <br/>


            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
            <asp:Label ID="Label5" runat="server" Text="Telephone No. Code" Font-Bold="True"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="for e.g., 0233"></asp:TextBox>
            </div>
            <div class="col-sm-4">
            <asp:Label ID="Label6" runat="server" Text="Telephone No." Font-Bold="True"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" class="form-control" ></asp:TextBox>
            </div>

            <div class="col-sm-4">
            <asp:Label ID="Label7" runat="server" Text="Alterate No." Font-Bold="True"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" class="form-control" ></asp:TextBox>
            </div>
            </div>
            <br/>



            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
            <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>
            </div><br />


            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4">
           <asp:Label ID="Label9" runat="server" Text="City" Font-Bold="True"></asp:Label>
             <asp:TextBox ID="TextBox8" runat="server" class="form-control" ></asp:TextBox>
            </div>

            <div class="col-sm-4">
           <asp:Label ID="Label10" runat="server" Text="District" Font-Bold="True"></asp:Label>
             <%--<asp:TextBox ID="TextBox4" runat="server" class="form-control" ></asp:TextBox>--%>

             <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                    <asp:ListItem>Select Police Station</asp:ListItem>
                    <asp:ListItem>Ahmednagar</asp:ListItem>
                    <asp:ListItem>Akola</asp:ListItem>
                    <asp:ListItem>Amravati</asp:ListItem>
                    <asp:ListItem>Aurangabad</asp:ListItem>
                    <asp:ListItem>Beed</asp:ListItem>
                    <asp:ListItem>Bhandara</asp:ListItem>
                    <asp:ListItem>Bhandara</asp:ListItem>
                    <asp:ListItem>Buldhana</asp:ListItem>
                    <asp:ListItem>Chandrapur</asp:ListItem>
                    <asp:ListItem>Dhule</asp:ListItem>
                    <asp:ListItem>Dhule</asp:ListItem>
                    <asp:ListItem>Gadchiroli</asp:ListItem>
                    <asp:ListItem>Gondia</asp:ListItem>
                    <asp:ListItem>Hingoli</asp:ListItem>
                    <asp:ListItem>Jalgaon</asp:ListItem>
                    <asp:ListItem>Jalna</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
                    <asp:ListItem>Latur</asp:ListItem>
                    <asp:ListItem>Mumbai City</asp:ListItem>
                    <asp:ListItem>Nagpur</asp:ListItem>
                    <asp:ListItem>Nanded</asp:ListItem>
                    <asp:ListItem>Nandurbar</asp:ListItem>
                    <asp:ListItem>Nashik</asp:ListItem>
                    <asp:ListItem>Osmanabad</asp:ListItem>
                    <asp:ListItem>Palghar</asp:ListItem>
                    <asp:ListItem>Parbhani</asp:ListItem>
                    <asp:ListItem>Pune</asp:ListItem>
                    <asp:ListItem>Raigad</asp:ListItem>
                    <asp:ListItem>Ratnagiri</asp:ListItem>
                    <asp:ListItem>Sangli</asp:ListItem>
                    <asp:ListItem>Satara</asp:ListItem>
                    <asp:ListItem>Sindhudurg</asp:ListItem>
                    <asp:ListItem>Solapur</asp:ListItem>
                    <asp:ListItem>Thane</asp:ListItem>
                    <asp:ListItem>Wardha</asp:ListItem>
                    <asp:ListItem>Washim</asp:ListItem>
                    <asp:ListItem>Yavatmal</asp:ListItem>



                </asp:DropDownList>
            </div>

            <div class="col-sm-2">
           <asp:Label ID="Label11" runat="server" Text="Pincode" Font-Bold="True"></asp:Label>
           <asp:TextBox ID="TextBox9" runat="server" class="form-control" ></asp:TextBox>
            </div> </div>
            <br/>



            <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-5">
            <asp:Label ID="Label12" runat="server" Text="State" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox10" runat="server" class="form-control" value="Maharashtra" disabled></asp:TextBox>
            </div>


            <div class="col-sm-5">
            <asp:Label ID="Label13" runat="server" Text="Country" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox11" runat="server" class="form-control" value="India" disabled></asp:TextBox>
            </div>
            </div>
             <br/>

             
            <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <asp:Button ID="Button1" runat="server" Text="Save Details" 
                    class="form-control" BackColor="#3333FF" ForeColor="White" Font-Size="Large" 
                    onclick="Button1_Click"/>
            </div>
            <div class="col-sm-4"></div>
            </div><br/>



</asp:Content>

