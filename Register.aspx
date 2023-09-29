<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<br/>
 <center> <h1> Register Here </h1> </center> <br/>
  <%--<p>The .input-group class is a container to enhance an input by adding an icon, text or a button in front or behind it as a "help text".</p>
  <p>The .input-group-addon class attaches an icon or help text next to the input field.</p>--%>
  
  <form>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <%--<input id="email" type="text" class="form-control" name="email" placeholder="Email">--%>
       <%-- <asp:Label ID="Label1" runat="server" Text="Label">Email:</asp:Label>
        <br />
        <br/>--%>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" 
            placeholder="Name" TextMode="SingleLine" ></asp:TextBox>

    </div><br />
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        <%--<asp:Label ID="Label2" runat="server" Text="Label">Password:</asp:Label>
        <br />
        <br/>--%>
      <%--<input id="password" type="password" class="form-control" name="password" placeholder="Password">--%>
      <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
      <%--<span class="input-group-btn ">
            <button class="btn btn-default reveal" type="button"><i class="glyphicon glyphicon-eye-open"></i></button>
          </span>  --%>        
    </div>
    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    <br />

    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <%--<input id="email" type="text" class="form-control" name="email" placeholder="Email">--%>
       <%-- <asp:Label ID="Label1" runat="server" Text="Label">Email:</asp:Label>
        <br />
        <br/>--%>
        <asp:TextBox ID="TextBox3" runat="server" class="form-control" 
            placeholder="Password" TextMode="Password" required></asp:TextBox>

    </div>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="TextBox4" ControlToValidate="TextBox3" ForeColor="Red"></asp:CompareValidator>
    &nbsp;
 <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
  </asp:ScriptManager>
  <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="TextBox4" MinimumUpperCaseCharacters="1" MinimumSymbolCharacters="1" MinimumNumericCharacters="1" MinimumLowerCaseCharacters="1" PreferredPasswordLength="8">
  </asp:PasswordStrength>--%>
  <br/>

    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <%--<input id="email" type="text" class="form-control" name="email" placeholder="Email">--%>
       <%-- <asp:Label ID="Label1" runat="server" Text="Label">Email:</asp:Label>
        <br />
        <br/>--%>
        <asp:TextBox ID="TextBox4" runat="server" class="form-control" 
            placeholder="Confirm Password" TextMode="Password" required></asp:TextBox>

    </div>
    <asp:CompareValidator ID="CompareValidator2" runat="server" 
        ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
        ErrorMessage="Password Doesn't Match" ForeColor="Red"></asp:CompareValidator>
    <br/>

    <%--<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>--%>
      <%--<input id="email" type="text" class="form-control" name="email" placeholder="Email">--%>
       <%-- <asp:Label ID="Label1" runat="server" Text="Label">Email:</asp:Label>
        <br />
        <br/>--%>
       <%-- <asp:TextBox ID="TextBox5" runat="server" class="form-control" 
            placeholder="Confirm Password" TextMode="Password" ></asp:TextBox>

    </div></br>--%>


    <br />
    
    <center><div>
    <%--<button type="button" class="btn btn-success btn-block">Login</button>--%>
        <asp:Button ID="Button1" runat="server" class="btn btn-success btn-block" 
            Text="Sign Up" onclick="Button1_Click" />

    </div></center>

  </form>
    <br />
  <div class="text-center mt-5">
<p class="light-gray">Already have an account?<%--<a href="LogIn.aspx">Sign In</a>--%><a
    href="Login.aspx">Sign In</a></p>
</div><br />

  
</div>

</asp:Content>

