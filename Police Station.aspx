<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Police Station.aspx.cs" Inherits="Police_Station" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<p>
<br />
</p>
    <p>
        &nbsp;


        <%--<div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
        <asp:Button ID="Button2" runat="server" Text="Add Police Station" class="form-control" 
                    BackColor="White" ForeColor="#3333FF" Font-Size="Large" 
                    BorderColor="#3333FF" PostBackUrl="~/Admin/AddPoliceStation.aspx" />
        </div>
        

        </div>--%>
        <br/>


        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
        <asp:Button ID="Button1" runat="server" Text="Police Station Information" class="form-control" BackColor="#3333FF" ForeColor="White" Font-Size="Large" disabled />
        </div>
        </div>
        <br/>



        <center><asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <br />
                <table class="w-100">
                    <tr>
                        <td rowspan="4" style="border-style: solid; border-width: thin; width: 200px;">
                            &nbsp;<center>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="166px" 
                                ImageUrl='<%# Eval("Photo") %>' Width="137px" /></center>
                            &nbsp;</td>
                        <td style="border-style: solid; border-width: thin; width: 400px;">
                            &nbsp;<strong>Police Station:&nbsp;</strong><asp:Label ID="Label2" runat="server" 
                                Text='<%# Eval("PoliceStation") %>'></asp:Label>
                        </td>
                        <td style="border-style: solid; border-width: thin; width: 400px;">
                            &nbsp;<strong>PoliceStation Code:</strong> &nbsp;<asp:Label ID="Label3" runat="server" 
                                Text='<%# Eval("StationCode") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: solid; border-width: thin; width: 400px;">
                            <strong>&nbsp;Telephone No: </strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Code") %>'></asp:Label>
                            -<asp:Label ID="Label5" runat="server" Text='<%# Eval("TelephoneNo") %>'></asp:Label>
                        </td>
                        <td style="border-style: solid; border-width: thin; width: 400px;">
                            <strong>&nbsp;Alternate No: </strong>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Code") %>'></asp:Label>
                            -<asp:Label ID="Label7" runat="server" Text='<%# Eval("AltTeleNo") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: solid; border-width: thin; width: 400px;">
                            <strong>&nbsp;&nbsp;Address: </strong>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                        </td>
                        <td style="border-style: solid; border-width: thin; width: 400px;">
                            &nbsp;<strong>&nbsp;Pincode: </strong>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Pincode") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: solid; border-width: thin; width: 400px;">
                            &nbsp;<strong>&nbsp;City: </strong>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                            <strong>&nbsp;</strong></td>
                        <td style="border-style: solid; border-width: thin; width: 400px;">
                            <strong>&nbsp;District: </strong>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("District") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: solid; border-width: thin; width: 200px;">
                           <center> <asp:Label ID="Label1" runat="server" Text='<%# Eval("Incharge") %>'></asp:Label></center>
                        </td>
                        <td style="border-style: solid; border-width: thin; width: 400px;">
                            &nbsp;</td>
                        <td style="border-style: solid; border-width: thin; width: 400px;">
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CrimeConnectionString %>" 
            SelectCommand="SELECT * FROM [PoliceStations]"></asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>

</asp:Content>

