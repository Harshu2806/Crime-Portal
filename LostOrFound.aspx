<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LostOrFound.aspx.cs" Inherits="LostOrFound" MaintainScrollPositionOnPostback="true"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
                            <a href="">Lost Or Found</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            </br>

            <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-2">
              <asp:Button ID="Button1" runat="server" class="form-control" 
                    Text="Search Lost/Found Article" BackColor="White" Font-Bold="False" 
                    ForeColor="#3366FF" BorderColor="Blue" PostBackUrl="~/SearchItem.aspx" />
            </div>

            </div>
            <br/>

             <div class="row">
            <div class="col-sm-2"></div>

            <div class="col-sm-8">
                This application is for providing Lost and Found Information to Police. Information reported under this application is not a subject matter of enquiry/investigation. False report to Police is a punishable offence. Reporting person shall be solely responsible for any false information. Dial 100, if there is any emergency.
            </div>

            </div><br/>

            <div class="row">
            <div class="col-sm-1"></div>

           <%-- <div class="col-sm-2">
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" 
                    DataSourceID="SqlDataSource1" DataTextField="PoliceStation" 
                    DataValueField="PoliceStation">
                    <asp:ListItem>Select Police Station</asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                    <asp:ListItem>E</asp:ListItem>
                </asp:DropDownList>
            </div>--%>

            </div>
            <br/>


            <div class="row">

            <div class="col-sm-12">
                <asp:Button ID="Button2" runat="server" class="form-control" 
                    Text="Applicant Details" BackColor="#3366FF" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="White" />
            </div>

            </div><br />


            <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-5">
            <asp:Label ID="Label1" runat="server" Text="Full Name" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" required></asp:TextBox><asp:RegularExpressionValidator
              ID="RegularExpressionValidator1" runat="server" 
          ErrorMessage="Only Text Allowed" ValidationExpression="[a-zA-Z ]*$" 
          ControlToValidate="TextBox1" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>

             <div class="col-sm-5">
            <asp:Label ID="Label2" runat="server" Text="E-mail ID" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Email" required></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Valid Email ID" ControlToValidate="TextBox2" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            </div>
            <br/>

            <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-5">
            <asp:Label ID="Label3" runat="server" Text="Contact Number" Font-Size="Medium" Font-Bold="True"  MaxLength="10"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="Number" required></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                    runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter 10 Digits" 
                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </div>

             <div class="col-sm-5">
            <asp:Label ID="Label4" runat="server" Text="Address" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" class="form-control" required></asp:TextBox>
            </div>
            </div>
            <br/>

            <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-5">
            <asp:Label ID="Label5" runat="server" Text="Pincode" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" class="form-control" TextMode="Number" required></asp:TextBox>
            </div>

             
            </div>
            <br/>



            <div class="row">

            <div class="col-sm-12">
                <asp:Button ID="Button3" runat="server" class="form-control" 
                    Text="Article Details" BackColor="#3366FF" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="White" />
            </div>

            </div><br />


            <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-5">
            <asp:Label ID="Label6" runat="server" Text="Report Type" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                    <asp:ListItem>Select Report Type</asp:ListItem>
                    <asp:ListItem>Lost Item Report</asp:ListItem>
                    <asp:ListItem>Found Item Report</asp:ListItem>
                </asp:DropDownList>
            </div>

             <div class="col-sm-5">
            <asp:Label ID="Label7" runat="server" Text="Article Type" Font-Size="Medium" Font-Bold="True"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                <asp:ListItem>Select Article Type</asp:ListItem>
                <asp:ListItem>Driving License</asp:ListItem>
                <asp:ListItem>PAN Card</asp:ListItem>
                <asp:ListItem>Aadhaar Card</asp:ListItem>
                <asp:ListItem>Voter ID Card</asp:ListItem>
                <asp:ListItem>Ration Card</asp:ListItem>
                <asp:ListItem>Educational Documents</asp:ListItem>
                <asp:ListItem>Other Documents</asp:ListItem>
                </asp:DropDownList>    
            </div>
            </div>
            <br/>


            <div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-5">
            <asp:Label ID="Label17" runat="server" Text="Name as Per Document" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" class="form-control" required></asp:TextBox><asp:RegularExpressionValidator
              ID="RegularExpressionValidator2" runat="server" 
          ErrorMessage="Only Text Allowed" ValidationExpression="[a-zA-Z ]*$" 
          ControlToValidate="TextBox7" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>

             <div class="col-sm-5">
            <asp:Label ID="Label18" runat="server" Text="Document Number " Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox14" runat="server" class="form-control" TextMode="SingleLine" required></asp:TextBox>
            </div>
            </div>
            <br/>

<div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-5">
            <asp:Label ID="Label8" runat="server" Text="Lost/Found Date" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" class="form-control" TargetControlID="TextBox8" TextMode="Date" required></asp:TextBox>
            </div>
            
             <div class="col-sm-5">
            <asp:Label ID="Label9" runat="server" Text="Address of Lost/Found Article" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server" class="form-control" TextMode="SingleLine" required></asp:TextBox>
            </div>
            </div>
            <br/>



<div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-5">
            <asp:Label ID="Label10" runat="server" Text="Area / Street Name" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox10" runat="server" class="form-control"></asp:TextBox>
            </div>

             <div class="col-sm-5">
            <asp:Label ID="Label11" runat="server" Text="City/ District" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox11" runat="server" class="form-control" TextMode="SingleLine" required></asp:TextBox>
            </div>
            </div>
            <br/>


<div class="row">
            <div class="col-sm-1"></div>

            <div class="col-sm-5">
            <asp:Label ID="Label12" runat="server" Text="State" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox12" runat="server" class="form-control" value="Maharashtra" disabled></asp:TextBox>
            </div>

             <div class="col-sm-5">
            <asp:Label ID="Label13" runat="server" Text="Pin Code" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox13" runat="server" class="form-control" TextMode="Number" required></asp:TextBox>
            </div>
            </div>
            <br/>

            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
  <asp:Label ID="Label14" runat="server" Text="Article Description" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="TextBox6" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox></div>
</div></br>
            
                  
<div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-1">
                <asp:CheckBox ID="CheckBox1" runat="server"  Checked="True" AutoPostBack="True" 
                    oncheckedchanged="CheckBox1_CheckedChanged" />
            </div>
            <div class="col-sm-9">
            I certify that the information provided by me in above form is accurate and correct as per best of my knowledge. I understand that withholding of information or giving false information is a criminal offense and may result in legal action against me
            <br/><br/>
                <asp:Label ID="Label15" runat="server" Text="Note:" Font-Size="Large" Font-Bold="True"></asp:Label>
            <br/>
1) This is a digitally signed document and requires no signatureas per IT Act 2008.<br/>
2) If required approach the concerned Police Station for Police Stamp/Signature.<br/>
3) This application is for lodging report of Articles Lost / Found in Mumbai City only.<br/>
4) Authority issuing duplicate document / article may obtain proof of identity.<br/><br/>
<asp:Label ID="Label16" runat="server" Text="Disclaimer:" Font-Size="Large" Font-Bold="True"></asp:Label>
            <br/>

1) Report lodged with this application is not a subject matter of enquiry/investigation.<br/>
2) In case loss is due to theft or any other crime, contact nearest police station.<br/>
3) False report to police is a punishable offence as per IPC & IT Act.
            </div>
</div></br>


<div class="row">
<div class="col-sm-5"></div>
<div class="col-sm-2">
    <asp:Button ID="Button4" runat="server" class="form-control" Text="Submit" 
        BackColor="#3333FF" ForeColor="White" Font-Size="Large" 
        onclick="Button4_Click" />
</div>
<div class="col-sm-5">
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CrimeConnectionString %>" 
        SelectCommand="SELECT [PoliceStation] FROM [PoliceStations]">
    </asp:SqlDataSource>
    </div>
</div>
<p>

   
    <center><asp:Label ID="Label20" runat="server"></asp:Label></center>

    <center><asp:Label ID="Label19" runat="server" Font-Size="Larger" Font-Bold="True" 
            ForeColor="#009933"></asp:Label></center>
</p>
</asp:Content>

