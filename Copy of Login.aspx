<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Copy of Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">
<br/>
 <center> <h1>User Login</h1> </center> <br/>
  <%--<p>The .input-group class is a container to enhance an input by adding an icon, text or a button in front or behind it as a "help text".</p>
  <p>The .input-group-addon class attaches an icon or help text next to the input field.</p>--%>
  
  <form>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <%--<input id="email" type="text" class="form-control" name="email" placeholder="Email">--%>
       <%-- <asp:Label ID="Label1" runat="server" Text="Label">Email:</asp:Label>
        <br />
        <br/>--%><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" 
            placeholder="Email" TextMode="Email" ></asp:TextBox>

    </div></br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        <%--<asp:Label ID="Label2" runat="server" Text="Label">Password:</asp:Label>
        <br />
        <br/>--%>
      <%--<input id="password" type="password" class="form-control" name="password" placeholder="Password">--%>
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
      <%--<span class="input-group-btn ">
            <button class="btn btn-default reveal" type="button"><i class="glyphicon glyphicon-eye-open"></i></button>
          </span>    --%>      
        <%--<asp:CheckBox ID="CheckBox2" runat="server" onclick="myFunction()" style="text-align: left" 
            Text="Show password" />--%></div>
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />
    </br>
    
    <center><div>
    <%--<button type="button" class="btn btn-success btn-block">Login</button>--%>
        <asp:Button ID="Button1" runat="server" class="btn btn-success btn-block" 
            Text="Sign In" onclick="Button1_Click" />

    </div></center>

  </form>
    <%--<br />--%>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
  <div class="text-center mt-5">
      
<p class="light-gray">Don’t have an account? <%--<a href="Register.aspx">Sign Up</a>--%><a
    href="Register.aspx" style="color: #000080">Sign Up</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" 
        PostBackUrl="~/ForgotPassword.aspx" ForeColor="#000080">Forgot Password?</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#000080">Admin Login</asp:LinkButton>
      </p>
</div><br>

  
</div>
</asp:Content>

