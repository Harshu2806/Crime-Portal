<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StolenVehicleList.aspx.cs" Inherits="StolenVehicleList" %>

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
                            <a href="">Lost / Stolen Vehicles</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            <br/>


             <div class="row">
            </div><br />
              <p>
                 <center>  <asp:DataList ID="DataList1" runat="server" DataKeyField="ComplaintNo" 
                      DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal">
                      <ItemTemplate>
                          <br />
                          <br />
                          <table class="w-100">
                              <tr>
                                  <td rowspan="3" style="border-style: solid; border-width: thin; width: 163px;">
                                      &nbsp;&nbsp;
                                   <center>   
                                       <asp:ImageButton ID="ImageButton1" runat="server" Height="169px" 
                                          ImageUrl='<%# Eval("Photo") %>' Width="137px" /></center>
                                  </td>
                                  <td style="border-style: solid; border-width: thin; width: 400px; height: 60px;">
                                      &nbsp;&nbsp;<strong>Complaint No:</strong> LV<asp:Label ID="Label1" runat="server" 
                                          Text='<%# Eval("ComplaintNo") %>'></asp:Label>
                                  </td>
                                  <td style="border-style: solid; border-width: thin; height: 60px; width: 399px;">
                                      &nbsp;&nbsp;<strong>Police Station: </strong>
                                      <asp:Label ID="Label5" runat="server" Text='<%# Eval("PoliceStation") %>'></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td style="border-style: solid; border-width: thin; width: 400px; height: 60px;">
                                      &nbsp;&nbsp;<strong>Registration No:</strong>
                                      <asp:Label ID="Label6" runat="server" Text='<%# Eval("RegNo") %>'></asp:Label>
                                  </td>
                                  <td style="border-style: solid; border-width: thin; height: 60px; width: 399px;">
                                      &nbsp;&nbsp;<strong>Color:</strong>
                                      <asp:Label ID="Label7" runat="server" Text='<%# Eval("Colour") %>'></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td style="border-style: solid; border-width: thin; width: 400px; height: 59px;">
                                      &nbsp;&nbsp;<strong>City: </strong>
                                      <asp:Label ID="Label8" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                  </td>
                                  <td style="border-style: solid; border-width: thin; height: 59px; width: 399px;">
                                      &nbsp;&nbsp;<strong>District: </strong>
                                      <asp:Label ID="Label12" runat="server" Text='<%# Eval("District") %>'></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                 <center> <td style="border-style: solid; border-width: thin; width: 163px; height: 34px;">
                                      &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("Brand") %>'></asp:Label>
                                      &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("Model") %>'></asp:Label>
                                      &nbsp;&nbsp;</td></center>
                                  <td style="border-style: solid; border-width: thin; width: 400px; height: 34px;">
                                      &nbsp;&nbsp;<strong>Owner Name:</strong>
                                      <asp:Label ID="Label10" runat="server" Text='<%# Eval("FullName") %>'></asp:Label>
                                  </td>
                                  <td style="border-style: solid; border-width: thin; height: 34px; width: 399px;">
                                      &nbsp;&nbsp;<strong>Contact No: </strong>
                                      <asp:Label ID="Label11" runat="server" Text='<%# Eval("Contact") %>'></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                 <center> <td style="border-style: solid; border-width: thin; width: 163px;">
                                      &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                                  </td></center>
                                  <td style="border-style: solid; border-width: thin; width: 400px;">
                                      &nbsp;&nbsp;</td>
                                  <td style="border-style: solid; border-width: thin; width: 399px;">
                                      &nbsp;&nbsp;</td>
                              </tr>
                          </table>
                      </ItemTemplate>
                  </asp:DataList></center> 
        <br />
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:CrimeConnectionString %>" 
                      
        
        SelectCommand="SELECT [ComplaintNo], [PoliceStation], [FullName], [City], [Brand], [Model], [Type], [Colour], [RegNo], [Date], [Place], [Other], [Photo], [District], [Contact] FROM [LostVehicle]" 
        DeleteCommand="DELETE FROM [LostVehicle] WHERE [ComplaintNo] = @ComplaintNo" 
        InsertCommand="INSERT INTO [LostVehicle] ([PoliceStation], [FullName], [City], [Brand], [Model], [Type], [Colour], [RegNo], [Date], [Place], [Other], [Photo], [District], [Contact]) VALUES (@PoliceStation, @FullName, @City, @Brand, @Model, @Type, @Colour, @RegNo, @Date, @Place, @Other, @Photo, @District, @Contact)" 
        UpdateCommand="UPDATE [LostVehicle] SET [PoliceStation] = @PoliceStation, [FullName] = @FullName, [City] = @City, [Brand] = @Brand, [Model] = @Model, [Type] = @Type, [Colour] = @Colour, [RegNo] = @RegNo, [Date] = @Date, [Place] = @Place, [Other] = @Other, [Photo] = @Photo, [District] = @District, [Contact] = @Contact WHERE [ComplaintNo] = @ComplaintNo">
                      <DeleteParameters>
                          <asp:Parameter Name="ComplaintNo" Type="Decimal" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="PoliceStation" Type="String" />
                          <asp:Parameter Name="FullName" Type="String" />
                          <asp:Parameter Name="City" Type="String" />
                          <asp:Parameter Name="Brand" Type="String" />
                          <asp:Parameter Name="Model" Type="String" />
                          <asp:Parameter Name="Type" Type="String" />
                          <asp:Parameter Name="Colour" Type="String" />
                          <asp:Parameter Name="RegNo" Type="String" />
                          <asp:Parameter DbType="Date" Name="Date" />
                          <asp:Parameter Name="Place" Type="String" />
                          <asp:Parameter Name="Other" Type="String" />
                          <asp:Parameter Name="Photo" Type="String" />
                          <asp:Parameter Name="District" Type="String" />
                          <asp:Parameter Name="Contact" Type="Decimal" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="PoliceStation" Type="String" />
                          <asp:Parameter Name="FullName" Type="String" />
                          <asp:Parameter Name="City" Type="String" />
                          <asp:Parameter Name="Brand" Type="String" />
                          <asp:Parameter Name="Model" Type="String" />
                          <asp:Parameter Name="Type" Type="String" />
                          <asp:Parameter Name="Colour" Type="String" />
                          <asp:Parameter Name="RegNo" Type="String" />
                          <asp:Parameter DbType="Date" Name="Date" />
                          <asp:Parameter Name="Place" Type="String" />
                          <asp:Parameter Name="Other" Type="String" />
                          <asp:Parameter Name="Photo" Type="String" />
                          <asp:Parameter Name="District" Type="String" />
                          <asp:Parameter Name="Contact" Type="Decimal" />
                          <asp:Parameter Name="ComplaintNo" Type="Decimal" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>

</asp:Content>

