<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OnlineComplaint.aspx.cs" Inherits="OnlineComplaint" MaintainScrollPositionOnPostback="true"%>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>   <%--For Captcha--%>

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
                            <a href="">Online Complaint</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            </br>

            
                   <div class="row">
                   <div class="col-sm-1"></div>

                   <div class="col-sm-1">
                       <asp:Label ID="Label14" runat="server" Text="Prefix" Font-Bold="True"></asp:Label>
                       <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" >
                       <asp:ListItem>Select....</asp:ListItem>
              <asp:ListItem>Mr.</asp:ListItem>
              <asp:ListItem>Mrs.</asp:ListItem>
              <asp:ListItem>Master</asp:ListItem>
              <asp:ListItem>Miss</asp:ListItem>
                       </asp:DropDownList>
                   </div>
  <div class="col-sm-3">
      <asp:Label ID="Label1" runat="server" Text="First Name" Font-Size="Medium" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="e.g., John" required ></asp:TextBox><asp:RegularExpressionValidator
              ID="RegularExpressionValidator1" runat="server" 
          ErrorMessage="Only Text Allowed" ValidationExpression="[a-zA-Z ]*$" 
          ControlToValidate="TextBox1" ForeColor="Red"></asp:RegularExpressionValidator></div>

  <div class="col-sm-3">
      <asp:Label ID="Label2" runat="server" Text="Middle Name" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="SingleLine" placeholder="e.g., John" required></asp:TextBox><asp:RegularExpressionValidator
              ID="RegularExpressionValidator2" runat="server" 
          ErrorMessage="Only Text Allowed" ValidationExpression="[a-zA-Z ]*$" 
          ControlToValidate="TextBox2" ForeColor="Red"></asp:RegularExpressionValidator></div>

  <div class="col-sm-3">
      <asp:Label ID="Label3" runat="server" Text="Last Name" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="SingleLine" placeholder="e.g., John" required></asp:TextBox><asp:RegularExpressionValidator
              ID="RegularExpressionValidator3" runat="server" 
          ErrorMessage="Only Text Allowed" ValidationExpression="[a-zA-Z ]*$" 
          ControlToValidate="TextBox3" ForeColor="Red"></asp:RegularExpressionValidator></div>

     
      
      </div>
      </br>


<div class="row">
<div class="col-sm-1"></div>

<div class="col-sm-1">
    <asp:Label ID="Label15" runat="server" Text="Code"></asp:Label>
    <asp:TextBox ID="TextBox11" runat="server" class="form-control" value="+91" disabled></asp:TextBox>
</div>

  <div class="col-sm-3">
  <asp:Label ID="Label4" runat="server" Text="Mobile No" Font-Bold="True" MaxLength="10"></asp:Label>
      <asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="Number" placeholder="8888888888" required></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                    runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter 10 Digits" 
                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></div>

      <div class="col-sm-3">
      <asp:Label ID="Label5" runat="server" Text="Email" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox5" runat="server" class="form-control" TextMode="Email" placeholder="e.g., abc@gmail.com"></asp:TextBox></div>

      <div class="col-sm-3">
      <asp:Label ID="Label6" runat="server" Text="Street Name/No." Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="e.g.,Link Way/730"></asp:TextBox></div>
  
</div></br>

<div class="row">
<div class="col-sm-1"></div>

<div class="col-sm-5">
  <asp:Label ID="Label16" runat="server" Text="Address" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox12" runat="server" class="form-control" 
        TextMode="MultiLine" ></asp:TextBox></div>

      <div class="col-sm-5">
      <asp:Label ID="Label17" runat="server" Text="City" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox13" runat="server" class="form-control" ></asp:TextBox></div>
</div></br>
<br />

<div class="row">
<div class="col-sm-1"></div>

<div class="col-sm-5">
  <asp:Label ID="Label7" runat="server" Text="State" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox7" runat="server" class="form-control" value="Maharashtra" disabled></asp:TextBox></div>

      <div class="col-sm-5">
      <asp:Label ID="Label8" runat="server" Text="Country" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox8" runat="server" class="form-control" value="India" disabled></asp:TextBox></div>
</div></br><br />


<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-5">
  <asp:Label ID="Label9" runat="server" Text="PinCode" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox9" runat="server" class="form-control" TextMode="Number" placeholder="416416"></asp:TextBox></div>

      <div class="col-sm-5">
      <asp:Label ID="Label10" runat="server" Text="Police Station" Font-Bold="True"></asp:Label>
          <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
              <asp:ListItem>a</asp:ListItem>
              <asp:ListItem>b</asp:ListItem>
              <asp:ListItem>c</asp:ListItem>
              <asp:ListItem>d</asp:ListItem>
              <asp:ListItem>e</asp:ListItem>
              <asp:ListItem></asp:ListItem>
          </asp:DropDownList>
</div>
    </div></br><br />


    <%--<div class="row">
    <div class="col-sm-1"></div>

<div class="col-sm-10">
  <asp:Label ID="Label18" runat="server" Text="Complaint Type" Font-Bold="True"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
    <asp:ListItem>Select </asp:ListItem>
              <asp:ListItem>Missing Person</asp:ListItem>
              <asp:ListItem></asp:ListItem>
              <asp:ListItem>d</asp:ListItem>
              <asp:ListItem>e</asp:ListItem>
              <asp:ListItem></asp:ListItem>
    </asp:DropDownList></div>
</div></br>--%>


    <div class="row">
    <div class="col-sm-1"></div>

<div class="col-sm-10">
  <asp:Label ID="Label11" runat="server" Text="Complaint" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox10" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox></div>
</div></br>
<br />
<div class="row">
<div class="col-sm-1"></div>

<div class="col-sm-10">
<asp:Label ID="Label12" runat="server" Text="Select Files to Upload" Font-Bold="False"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"/><asp:Label ID="Label18" runat="server" ></asp:Label>
</div>
</div></br></br>

<%--<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-5">
    <cap:CaptchaControl ID="captcha1" runat="server" CaptchaLength="5" CaptchaHeight="50" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="3" CaptchaMaxTimeout="240" ForeColor="Blue" BackColor="Yellow" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWX123456789" Height="46px" Width="200px" />

</div>
<div class="col-sm-5">
<asp:Label ID="Label19" runat="server" Text=""></asp:Label>
    <asp:TextBox ID="TextBox14" runat="server" class="form-control"></asp:TextBox>

</div>
</div>
    <asp:Label ID="Label20" runat="server" Text=""></asp:Label><br/>
--%>

<div class="row">
<div class="col-sm-1"></div>

<div class="col-sm-1">
    <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" AutoPostBack="True" 
        oncheckedchanged="CheckBox1_CheckedChanged"  />
  </div>

      <div class="col-sm-9" style="font-size: medium; font-weight: lighter">
      I certify that the information provided by me in above form is accurate and correct as per best of my knowledge. I understand that withholding of information or giving false information is a criminal offense and may result in legal action against me.
</br><br/>
          <asp:Label ID="Label13" runat="server" Text="DISCLAIMER :" Font-Bold="True" Font-Size="X-Large"></asp:Label>

As per the prevailing laws, FIR of a major crime (′cognizable crimes like theft, burglary, motor vehicle theft, accident, chain-snatching, assault, rape, murder, attempt to commit murder, robbery, dacoity, extortion etc) can only be registered at a Police Station. Please contact your nearest Police Station for the same.
</br><br/>
This site shall only entertain complaints about minor crimes (′non-cognizable crimes′).Your complaint shall be referred to the concerned Police Station, where you may be called for further clarification and/or to give statement.
      </div>
</div></br>

<div class="row">

<div class="col-sm-5"></div>
<div class="col-sm-2">
    <asp:Button ID="Button4" runat="server" class="form-control" Text="Submit" 
        BackColor="#3333FF" ForeColor="White" Font-Size="Large" 
        onclick="Button4_Click" />
</div>
<div class="col-sm-5">
    <br />
    </div>
</div>
<p>

    <center><asp:Label ID="Label20" runat="server"></asp:Label></center>

    <center><asp:Label ID="Label19" runat="server" Font-Size="Larger" Font-Bold="True" 
            ForeColor="#009933"></asp:Label></center>

</p>
</asp:Content>

