<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MissingPersonsList.aspx.cs" Inherits="MissingPersonsList" %>

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
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
            In case you have any information regarding the Missing Persons given below, please call up the MAMBA City Police Control Room on direct lines 2223222, 22221983, 22225220, or Call 100.
            </div>
            </div></br>

            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10"></div>
            </div></br>


    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
      <center> 
          <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
               RepeatColumns="1" RepeatDirection="Horizontal" 
                         BackColor="White">
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td colspan="4" style="border-style: solid; border-width: thin; height: 55px;">
                          <center>  <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl='<%# Eval("Photo") %>' Width="100px" /></center>
                        </td>
                        <td colspan="1" style="border-style: solid; border-width: thin; height: 55px;">
                            <strong>Police Station:</strong>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("PoliceStation") %>'></asp:Label>
                        </td>
                        <td style="border-style: solid; border-width: thin; height: 55px;">
                            <strong>Reg. No. :</strong> MPC<asp:Label ID="Label13" runat="server" 
                                Text='<%# Eval("CompNo") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-width: thin; border-left-style: solid;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("First") %>'></asp:Label>
                        </td>
                        <td colspan="2" style="border-width: thin; border-left-style: solid;">
                            &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("Middle") %>'></asp:Label>
                            &nbsp;</td>
                        <td style="border-width: thin; border-left-style: solid;">
                            &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("Last") %>'></asp:Label>
                            &nbsp;</td>
                        <td colspan="1" style="border-style: solid; border-width: thin; width: 353px;">
                            <strong>Missing Date:</strong>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                        </td>
                        <td style="border-style: solid; border-width: thin">
                            <strong>Complainants Name:</strong>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("Fname") %>'></asp:Label>
                            &nbsp;<asp:Label ID="Label16" runat="server" Text='<%# Eval("Lname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="border-style: solid; border-width: thin">
                            <strong>Gender:</strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                        </td>
                        <td colspan="2" style="border-style: solid; border-width: thin">
                            <strong>Built:</strong>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Body") %>'></asp:Label>
                        </td>
                        <td colspan="1" style="border-style: solid; border-width: thin; width: 353px;">
                            <strong>Colour:</strong>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Skin") %>'></asp:Label>
                        </td>
                        <td style="border-style: solid; border-width: thin">
                            <strong>Cloth:</strong>
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("Cloth") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="border-style: solid; border-width: thin">
                            <strong>Height:</strong>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Height") %>'></asp:Label>
                        </td>
                        <td colspan="2" style="border-style: solid; border-width: thin">
                            <strong>Age:</strong>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                            &nbsp;Yrs</td>
                        <td colspan="1" style="border-style: solid; border-width: thin; width: 353px;">
                            <strong>Place of Missing:</strong>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("Place") %>'></asp:Label>
                        </td>
                        <td style="border-style: solid; border-width: thin">
                            <strong>Other Info.:</strong>
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("OtherDetails") %>'></asp:Label>
                        </td>
                    </tr>
                </table><br/><br/>
            </ItemTemplate>
        </asp:DataList></center><br/>
    </p><br />
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CrimeConnectionString %>" 
            
            SelectCommand="SELECT [First], [Middle], [Last], [Fname], [Mname], [Lname], [Gender], [Body], [Age], [Height], [Skin], [Cloth], [Photo], [Place], [Date], [OtherDetails], [PoliceStation], [CompNo] FROM [MissingPerson]">
        </asp:SqlDataSource>
    </p>
    <p>
    </p>



</asp:Content>

