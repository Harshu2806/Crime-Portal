<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeFile="EditPersons.aspx.cs" Inherits="Admin_EditPersons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p>
<!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                       <%-- <div class="col-12">
                            <h2>Online Complaint</h2>
                        </div>--%>
                        <div class="col-12">
                            <a href="AdminDefault.aspx">Home</a>
                            <a href="MissingPersons.aspx">Missing Persons</a>
                            <a href="">Edit</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            </br>
</p>
<p>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CompNo" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CompNo" HeaderText="CompNo" InsertVisible="False" 
                ReadOnly="True" SortExpression="CompNo" />
            <asp:BoundField DataField="Pre" HeaderText="Pre" SortExpression="Pre" />
            <asp:BoundField DataField="First" HeaderText="First" SortExpression="First" />
            <asp:BoundField DataField="Middle" HeaderText="Middle" 
                SortExpression="Middle" />
            <asp:BoundField DataField="Last" HeaderText="Last" SortExpression="Last" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Prefix" HeaderText="Prefix" 
                SortExpression="Prefix" />
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="Mname" HeaderText="Mname" SortExpression="Mname" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Body" HeaderText="Body" SortExpression="Body" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Height" HeaderText="Height" 
                SortExpression="Height" />
            <asp:BoundField DataField="Skin" HeaderText="Skin" SortExpression="Skin" />
            <asp:BoundField DataField="Cloth" HeaderText="Cloth" SortExpression="Cloth" />
            <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
            <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="PoliceStation" HeaderText="PoliceStation" 
                SortExpression="PoliceStation" />
            <asp:BoundField DataField="OtherDetails" HeaderText="OtherDetails" 
                SortExpression="OtherDetails" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>

</p>
    <p>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:CrimeConnectionString %>" 
            DeleteCommand="DELETE FROM [MissingPerson] WHERE [CompNo] = @original_CompNo AND (([Pre] = @original_Pre) OR ([Pre] IS NULL AND @original_Pre IS NULL)) AND (([First] = @original_First) OR ([First] IS NULL AND @original_First IS NULL)) AND (([Middle] = @original_Middle) OR ([Middle] IS NULL AND @original_Middle IS NULL)) AND (([Last] = @original_Last) OR ([Last] IS NULL AND @original_Last IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Prefix] = @original_Prefix) OR ([Prefix] IS NULL AND @original_Prefix IS NULL)) AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Mname] = @original_Mname) OR ([Mname] IS NULL AND @original_Mname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Body] = @original_Body) OR ([Body] IS NULL AND @original_Body IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([Height] = @original_Height) OR ([Height] IS NULL AND @original_Height IS NULL)) AND (([Skin] = @original_Skin) OR ([Skin] IS NULL AND @original_Skin IS NULL)) AND (([Cloth] = @original_Cloth) OR ([Cloth] IS NULL AND @original_Cloth IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL)) AND (([Place] = @original_Place) OR ([Place] IS NULL AND @original_Place IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([PoliceStation] = @original_PoliceStation) OR ([PoliceStation] IS NULL AND @original_PoliceStation IS NULL)) AND (([OtherDetails] = @original_OtherDetails) OR ([OtherDetails] IS NULL AND @original_OtherDetails IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" 
            InsertCommand="INSERT INTO [MissingPerson] ([Pre], [First], [Middle], [Last], [Mobile], [Email], [Prefix], [Fname], [Mname], [Lname], [Gender], [Body], [Age], [Height], [Skin], [Cloth], [Photo], [Place], [Date], [PoliceStation], [OtherDetails], [Status]) VALUES (@Pre, @First, @Middle, @Last, @Mobile, @Email, @Prefix, @Fname, @Mname, @Lname, @Gender, @Body, @Age, @Height, @Skin, @Cloth, @Photo, @Place, @Date, @PoliceStation, @OtherDetails, @Status)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [MissingPerson]" 
            UpdateCommand="UPDATE [MissingPerson] SET [Pre] = @Pre, [First] = @First, [Middle] = @Middle, [Last] = @Last, [Mobile] = @Mobile, [Email] = @Email, [Prefix] = @Prefix, [Fname] = @Fname, [Mname] = @Mname, [Lname] = @Lname, [Gender] = @Gender, [Body] = @Body, [Age] = @Age, [Height] = @Height, [Skin] = @Skin, [Cloth] = @Cloth, [Photo] = @Photo, [Place] = @Place, [Date] = @Date, [PoliceStation] = @PoliceStation, [OtherDetails] = @OtherDetails, [Status] = @Status WHERE [CompNo] = @original_CompNo AND (([Pre] = @original_Pre) OR ([Pre] IS NULL AND @original_Pre IS NULL)) AND (([First] = @original_First) OR ([First] IS NULL AND @original_First IS NULL)) AND (([Middle] = @original_Middle) OR ([Middle] IS NULL AND @original_Middle IS NULL)) AND (([Last] = @original_Last) OR ([Last] IS NULL AND @original_Last IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Prefix] = @original_Prefix) OR ([Prefix] IS NULL AND @original_Prefix IS NULL)) AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Mname] = @original_Mname) OR ([Mname] IS NULL AND @original_Mname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Body] = @original_Body) OR ([Body] IS NULL AND @original_Body IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([Height] = @original_Height) OR ([Height] IS NULL AND @original_Height IS NULL)) AND (([Skin] = @original_Skin) OR ([Skin] IS NULL AND @original_Skin IS NULL)) AND (([Cloth] = @original_Cloth) OR ([Cloth] IS NULL AND @original_Cloth IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL)) AND (([Place] = @original_Place) OR ([Place] IS NULL AND @original_Place IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([PoliceStation] = @original_PoliceStation) OR ([PoliceStation] IS NULL AND @original_PoliceStation IS NULL)) AND (([OtherDetails] = @original_OtherDetails) OR ([OtherDetails] IS NULL AND @original_OtherDetails IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CompNo" Type="Decimal" />
                <asp:Parameter Name="original_Pre" Type="String" />
                <asp:Parameter Name="original_First" Type="String" />
                <asp:Parameter Name="original_Middle" Type="String" />
                <asp:Parameter Name="original_Last" Type="String" />
                <asp:Parameter Name="original_Mobile" Type="Decimal" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Prefix" Type="String" />
                <asp:Parameter Name="original_Fname" Type="String" />
                <asp:Parameter Name="original_Mname" Type="String" />
                <asp:Parameter Name="original_Lname" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Body" Type="String" />
                <asp:Parameter Name="original_Age" Type="Int32" />
                <asp:Parameter Name="original_Height" Type="String" />
                <asp:Parameter Name="original_Skin" Type="String" />
                <asp:Parameter Name="original_Cloth" Type="String" />
                <asp:Parameter Name="original_Photo" Type="String" />
                <asp:Parameter Name="original_Place" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Date" />
                <asp:Parameter Name="original_PoliceStation" Type="String" />
                <asp:Parameter Name="original_OtherDetails" Type="String" />
                <asp:Parameter Name="original_Status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Pre" Type="String" />
                <asp:Parameter Name="First" Type="String" />
                <asp:Parameter Name="Middle" Type="String" />
                <asp:Parameter Name="Last" Type="String" />
                <asp:Parameter Name="Mobile" Type="Decimal" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Prefix" Type="String" />
                <asp:Parameter Name="Fname" Type="String" />
                <asp:Parameter Name="Mname" Type="String" />
                <asp:Parameter Name="Lname" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Body" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Height" Type="String" />
                <asp:Parameter Name="Skin" Type="String" />
                <asp:Parameter Name="Cloth" Type="String" />
                <asp:Parameter Name="Photo" Type="String" />
                <asp:Parameter Name="Place" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="PoliceStation" Type="String" />
                <asp:Parameter Name="OtherDetails" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pre" Type="String" />
                <asp:Parameter Name="First" Type="String" />
                <asp:Parameter Name="Middle" Type="String" />
                <asp:Parameter Name="Last" Type="String" />
                <asp:Parameter Name="Mobile" Type="Decimal" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Prefix" Type="String" />
                <asp:Parameter Name="Fname" Type="String" />
                <asp:Parameter Name="Mname" Type="String" />
                <asp:Parameter Name="Lname" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Body" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Height" Type="String" />
                <asp:Parameter Name="Skin" Type="String" />
                <asp:Parameter Name="Cloth" Type="String" />
                <asp:Parameter Name="Photo" Type="String" />
                <asp:Parameter Name="Place" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="PoliceStation" Type="String" />
                <asp:Parameter Name="OtherDetails" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="original_CompNo" Type="Decimal" />
                <asp:Parameter Name="original_Pre" Type="String" />
                <asp:Parameter Name="original_First" Type="String" />
                <asp:Parameter Name="original_Middle" Type="String" />
                <asp:Parameter Name="original_Last" Type="String" />
                <asp:Parameter Name="original_Mobile" Type="Decimal" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Prefix" Type="String" />
                <asp:Parameter Name="original_Fname" Type="String" />
                <asp:Parameter Name="original_Mname" Type="String" />
                <asp:Parameter Name="original_Lname" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Body" Type="String" />
                <asp:Parameter Name="original_Age" Type="Int32" />
                <asp:Parameter Name="original_Height" Type="String" />
                <asp:Parameter Name="original_Skin" Type="String" />
                <asp:Parameter Name="original_Cloth" Type="String" />
                <asp:Parameter Name="original_Photo" Type="String" />
                <asp:Parameter Name="original_Place" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Date" />
                <asp:Parameter Name="original_PoliceStation" Type="String" />
                <asp:Parameter Name="original_OtherDetails" Type="String" />
                <asp:Parameter Name="original_Status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

</p>
    <p>

        &nbsp;
        <%--<asp:Button ID="Button1" runat="server" BackColor="#66FF33" Height="45px" 
            onclick="Button1_Click" Text="Download data in Excel Sheet" Width="382px" />--%>
        &nbsp;</p>
    <p>

        &nbsp;</p>
</asp:Content>

