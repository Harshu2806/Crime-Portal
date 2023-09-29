<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p>
<center>
<h1>Change Password</h1>
<h6 style="font-weight: normal">(Hello
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    , Change your password frequently)</h6>
</center>
</p>
<p>
    <p>
<center>
    
    <table style="width: 46%; margin-left: 209px;">
        <tr>
            <td style="width: 176px">
                <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
&nbsp;:</td>
            <td>
                &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 176px">
                <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
&nbsp;:</td>
            <td>
                &nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 176px">
                <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
&nbsp;:</td>
            <td>
                &nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 176px">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="28px" 
                    style="text-align: center" Text="Submit" Width="91px" 
                    onclick="Button1_Click" />
                &nbsp;</td>
        </tr>
    </table>
    
</center>
</p>
</asp:Content>

