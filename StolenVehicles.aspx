<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="StolenVehicles.aspx.cs" Inherits="Admin_StolenVehicles" %>

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
                            <a href="">Lost / Stolen Vehicles</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            <br/>

            <p><div class="row">
            <div class="col-sm-9"></div>
            <div class="col-sm-2">
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" 
                    ForeColor="#3366FF" BorderColor="Blue" AutoPostBack="True" 
                   >
                    <asp:ListItem>Car</asp:ListItem>
                    <asp:ListItem>Bike</asp:ListItem>
                    <asp:ListItem>Moped(Gear-Less)</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </div>
            </div>
    </p>
              <br/>
                 <center>  <asp:DataList ID="DataList1" runat="server" DataKeyField="ComplaintNo" 
                      DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal" 
                         BackColor="White">
                      <ItemTemplate>
                          <br />
                          <br />
                          <table class="w-100" bgcolor="#FFFFCC">
                              <tr>
                                  <td rowspan="3" style="border-style: solid; border-width: thin; width: 200px;">
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
                                 <center> 
                                     <td style="border-style: solid; border-width: thin; width: 200px; height: 34px;">
                                      &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("Brand") %>' 
                                             style="font-weight: 700"></asp:Label>
                                      &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("Model") %>' 
                                             style="font-weight: 700"></asp:Label>
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
                                 <center> <td style="border-style: solid; border-width: thin; width: 200px;">
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
                      
        
        SelectCommand="SELECT [ComplaintNo], [PoliceStation], [FullName], [City], [Brand], [Model], [Type], [Colour], [RegNo], [Date], [Place], [Other], [Photo], [District], [Contact] FROM [LostVehicle] WHERE ([Type] = @Type)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="DropDownList1" Name="Type" 
                              PropertyName="SelectedValue" Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>
    </p>
    <p>
       <div class="row">
            <div class="col-sm-9"></div>
            <div class="col-sm-2">
                <asp:Button ID="Button1" runat="server" Text="Edit / Delete Data" 
                    class="form-control" BackColor="#33CC33" Font-Size="Large" ForeColor="White" 
                    PostBackUrl="~/Admin/EditVehicle.aspx"/>
            </div>
            </div><br />
            
             &nbsp;</p>
    <p>

</asp:Content>

