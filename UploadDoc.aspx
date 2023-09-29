<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UploadDoc.aspx.cs" Inherits="UploadDoc" %>

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

            <div class="col-sm-5">
                <asp:Label ID="Label1" runat="server" Text="Upload PDF"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
            </div>

            </div>
            &nbsp;<br />
    <asp:Button ID="Button1" runat="server" Height="31px" onclick="Button1_Click" 
        Text="SUBMIT" Width="396px" />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="applicationid" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="applicationid" HeaderText="Application Id" 
                InsertVisible="False" ReadOnly="True" SortExpression="applicationid">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="Doc" HeaderText="PDF Document" 
                Text="View and Download Doc.">
            <ItemStyle HorizontalAlign="Center" ForeColor="Blue" />
            </asp:HyperLinkField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CrimeConnectionString %>" 
        SelectCommand="SELECT * FROM [PDF]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
            <br/>
</asp:Content>

