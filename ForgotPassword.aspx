<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<p>


            <center>
            <p style="font-size: xx-large">Forgot Password?</p>
            Enter your Email and Continue</center>
</p>
<br />

<center>
Enter Your Email ID: 
    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="242px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="Lime" Font-Size="Medium" 
        Height="37px" onclick="Button1_Click" Text="Continue" Width="127px" />
&nbsp;
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx">LogIn</asp:LinkButton>
</center>


</asp:Content>

