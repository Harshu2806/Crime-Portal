<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Live.aspx.cs" Inherits="Live" %>

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
                            <a href="">Live Complaints</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            <br>
            <br/><div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10" style="font-size: xx-large">
                <strong>These are the live complaints received. Do work on it as soon as possible.
                </strong>
            </div>
            </div>
            <p>
            <center>
            
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                    Height="542px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="CompNo" HeaderText="CompNo" InsertVisible="False" 
                            ReadOnly="True" SortExpression="CompNo" />
                        <asp:BoundField DataField="PoliceStation" HeaderText="PoliceStation" 
                            SortExpression="PoliceStation" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="Other" HeaderText="Other" SortExpression="Other" />
                        <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="District" HeaderText="District" 
                            SortExpression="District" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Myself" HeaderText="Myself" 
                            SortExpression="Myself" />
                        <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" />
                        <asp:BoundField DataField="Doc1" HeaderText="Doc1" SortExpression="Doc1" />
                        <asp:BoundField DataField="Doc2" HeaderText="Doc2" SortExpression="Doc2" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </center>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CrimeConnectionString %>" 
        SelectCommand="SELECT [CompNo], [PoliceStation], [Type], [Other], [Area], [City], [District], [Date], [Myself], [Description], [Doc1], [Doc2] FROM [SpotComplaint] ORDER BY [CompNo] DESC">
    </asp:SqlDataSource>
            </p>
    <br></br>
</asp:Content>

