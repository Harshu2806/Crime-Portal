<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyComplaints.aspx.cs" Inherits="MyComplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<p>



    <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="OnComNo" 
>
        <Columns>
            <asp:BoundField DataField="OnComNo" HeaderText="OnComNo" InsertVisible="False" 
                ReadOnly="True" SortExpression="OnComNo" />
            <asp:BoundField DataField="Prefix" HeaderText="Prefix" 
                SortExpression="Prefix" />
            <asp:BoundField DataField="First" HeaderText="First" SortExpression="First" />
            <asp:BoundField DataField="Middle" HeaderText="Middle" 
                SortExpression="Middle" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                SortExpression="Pincode" />
            <asp:BoundField DataField="PoliceStation" HeaderText="PoliceStation" 
                SortExpression="PoliceStation" />
            <asp:BoundField DataField="Complaint" HeaderText="Complaint" 
                SortExpression="Complaint" />
            <asp:BoundField DataField="Doc" HeaderText="Doc" SortExpression="Doc" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
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
    </asp:GridView></center>



</p>
    <p>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CrimeConnectionString %>" 
            SelectCommand="SELECT [OnComNo], [Prefix], [First], [Middle], [Mobile], [Email], [State], [Pincode], [PoliceStation], [Complaint], [Doc], [Status] FROM [OnlineComplaint]">
        </asp:SqlDataSource>



</p>

</asp:Content>

