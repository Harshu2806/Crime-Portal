<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MissingPerson.aspx.cs" Inherits="MissingPerson" %>

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
                            <a href="">Missing Persons</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            </br>


            <div class="row">

            <div class="col-sm-12">
                <asp:Button ID="Button1" runat="server"  class="form-control" 
                    Text="Complainants Details" BackColor="#3366FF"  
                    Font-Size="X-Large" ForeColor="White" UseSubmitBehavior="False" Enabled="True" disabled/>
            </div>

            </div><br />

            <div class="row">
                   <div class="col-sm-1"></div>

                   <div class="col-sm-1">
                       <asp:Label ID="Label1" runat="server" Text="Prefix" Font-Bold="True"></asp:Label>
                       <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" >
                       <asp:ListItem>Select....</asp:ListItem>
              <asp:ListItem>Mr.</asp:ListItem>
              <asp:ListItem>Mrs.</asp:ListItem>
              <asp:ListItem>Master</asp:ListItem>
              <asp:ListItem>Miss</asp:ListItem>
                       </asp:DropDownList>
                   </div>
  <div class="col-sm-3">
      <asp:Label ID="Label2" runat="server" Text="First Name" Font-Size="Medium" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="e.g., John" required></asp:TextBox></div>

  <div class="col-sm-3">
      <asp:Label ID="Label3" runat="server" Text="Middle Name" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="SingleLine" placeholder="e.g., Anthony" required></asp:TextBox></div>

  <div class="col-sm-3">
      <asp:Label ID="Label4" runat="server" Text="Last Name" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="SingleLine" placeholder="e.g., Cena" required></asp:TextBox></div>

      </div>
      </br>



<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-5">
<asp:Label ID="Label5" runat="server" Text="Mobile No." Font-Bold="True" MaxLength="10"></asp:Label>
      <asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="SingleLine" placeholder="e.g., 8888888888" required></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter 10 Digits" 
                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></div>



<div class="col-sm-5">
<asp:Label ID="Label6" runat="server" Text="Email ID" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox5" runat="server" class="form-control" TextMode="SingleLine" placeholder="e.g., johncena@gmail.com" required></asp:TextBox></div>



</div></br>


 <div class="row">

            <div class="col-sm-12">
                <asp:Button ID="Button2" runat="server" class="form-control" 
                    Text="Missing Persons Details" BackColor="#3366FF"  
                    Font-Size="X-Large" ForeColor="White" disabled/>
            </div>

            </div><br />

            <div class="row">
                   <div class="col-sm-1"></div>

                   <div class="col-sm-1">
                       <asp:Label ID="Label7" runat="server" Text="Prefix" Font-Bold="True"></asp:Label>
                       <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" >
                       <asp:ListItem>Select....</asp:ListItem>
              <asp:ListItem>Mr.</asp:ListItem>
              <asp:ListItem>Mrs.</asp:ListItem>
              <asp:ListItem>Master</asp:ListItem>
              <asp:ListItem>Miss</asp:ListItem>
                       </asp:DropDownList>
                   </div>
  <div class="col-sm-3">
      <asp:Label ID="Label8" runat="server" Text="First Name" Font-Size="Medium" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="e.g., John" required></asp:TextBox></div>

  <div class="col-sm-3">
      <asp:Label ID="Label9" runat="server" Text="Middle Name" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox7" runat="server" class="form-control" TextMode="SingleLine" placeholder="e.g., Anthony" required></asp:TextBox></div>

  <div class="col-sm-3">
      <asp:Label ID="Label10" runat="server" Text="Last Name" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox8" runat="server" class="form-control" TextMode="SingleLine" placeholder="e.g., Cena" required></asp:TextBox></div>

      </div>
      </br>


      <div class="row">
                   <div class="col-sm-1"></div>
                   <div class="col-sm-5">
                   <asp:Label ID="Label11" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
                       <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" >
                       <asp:ListItem>Select....</asp:ListItem>
              <asp:ListItem>Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>
              <asp:ListItem>Transgender</asp:ListItem>
              
                       </asp:DropDownList>
                   </div>

                   <div class="col-sm-5">
                   <asp:Label ID="Label12" runat="server" Text="Build (Body Type)" Font-Bold="True"></asp:Label>
                       <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" >
                       <asp:ListItem>Select....</asp:ListItem>
              <asp:ListItem>Slim</asp:ListItem>
              <asp:ListItem>Shapely</asp:ListItem>
              <asp:ListItem>Fat</asp:ListItem>
              
                       </asp:DropDownList>
                   </div>
 </div>
      <br/>

      <div class="row">
                   <div class="col-sm-1"></div>
                   <div class="col-sm-5">
                   <asp:Label ID="Label13" runat="server" Text="Age" Font-Bold="True"></asp:Label>
                       <asp:TextBox ID="TextBox9" runat="server" class="form-control" TextMode="Number" required></asp:TextBox>
                   </div>

                   <div class="col-sm-5">
                   <asp:Label ID="Label14" runat="server" Text="Height(in foot)" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" class="form-control" TextMode="SingleLine" placeholder="for e.g., 5.5 ft" required></asp:TextBox>
                    </div>
                   </div>
      <br/>

      <div class="row">
                   <div class="col-sm-1"></div>
                   <div class="col-sm-5">
                   <asp:Label ID="Label15" runat="server" Text="Skin Color" Font-Bold="True"></asp:Label>
                       <asp:DropDownList ID="DropDownList5" runat="server" class="form-control" >
                       <asp:ListItem>Select....</asp:ListItem>
              <asp:ListItem>Fair</asp:ListItem>
              <asp:ListItem>Brown</asp:ListItem>
              <asp:ListItem>Dark</asp:ListItem>
              
                       </asp:DropDownList>
                   </div>

<div class="col-sm-5">
                   <asp:Label ID="Label16" runat="server" Text="Cloth Worn" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="TextBox11" runat="server" class="form-control" required></asp:TextBox>
                   </div>
</div>
      <br/>

      <div class="row">
                   <div class="col-sm-1"></div>
                   <div class="col-sm-10">
                   <asp:Label ID="Label21" runat="server" Text="Photo of Missing Person" Font-Bold="True"></asp:Label>
                       <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required/>

                   </div>
</div>
      <br/>



      <div class="row">

            <div class="col-sm-12">
                <asp:Button ID="Button3" runat="server" class="form-control" 
                    Text="Additional Details" BackColor="#3366FF"  
                    Font-Size="X-Large" ForeColor="White" disabled/>
            </div>

            </div><br />



            <div class="row">

            <div class="col-sm-1"></div>
            <div class="col-sm-5">
            <asp:Label ID="Label18" runat="server" Text="Place of Missing" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox12" runat="server" class="form-control" required></asp:TextBox>
            </div> 

            <div class="col-sm-5">
            <asp:Label ID="Label19" runat="server" Text="Missing Date" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox13" runat="server" class="form-control" TextMode="Date" required></asp:TextBox>
            </div>

            </div><br />






            <div class="row">

            <div class="col-sm-1"></div>

            <div class="col-sm-10">
            <asp:Label ID="Label17" runat="server" Text="Nearest Police Station" Font-Bold="True"></asp:Label>
             <asp:DropDownList ID="DropDownList6" runat="server" class="form-control" >
                       <asp:ListItem>Select....</asp:ListItem>
              <asp:ListItem>A</asp:ListItem>
              <asp:ListItem>B</asp:ListItem>
              <asp:ListItem>C</asp:ListItem>
              
                       </asp:DropDownList>
            </div>
            </div><br />



            <div class="row">

            <div class="col-sm-1"></div>

            <div class="col-sm-10">
            <asp:Label ID="Label20" runat="server" Text="Other Details (if any)" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox14" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>
            </div><br />


            <div class="row">
<div class="col-sm-5"></div>
<div class="col-sm-2">
    <asp:Button ID="Button4" runat="server" class="form-control" Text="Submit" 
        BackColor="#3333FF" ForeColor="White" Font-Size="Large" 
        onclick="Button4_Click" />
</div>
<div class="col-sm-5"></div>
</div>

</asp:Content>

