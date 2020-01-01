<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="ComplaintResolverSystem.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
        * {
      box-sizing: border-box;
    }

    .reg-input, select, textarea {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 4px;
      resize: vertical;
    }

    .reg-label {
      padding: 12px 12px 12px 0;
      display: inline-block;
      float: left;
    }

    .submitbtn {
            padding: 8px 24px 7px 24px;
            color: #ffffff;
            border: solid 2px #19a0d3;
            border-radius: 100px;
            background-color: #19a0d3;
            height: 40px;
            width: 200px;
            font-weight: 400;
            float:right;
            margin:10px;
    }

    .submitbtn:hover {
        background-color: #9B9B9B;
        color: #fffff;
    }
    
     .cancelbtn {
          padding: 8px 24px 7px 24px;
          color: #ffffff;
          border: solid 2px #19a0d3;
          border-radius: 100px;
          background-color: #9B9B9B;
          height: 40px;
          width: 200px;
          font-weight: 400;
          float:right;
          margin:10px;
    }

    .cancelbtn:hover {
        background-color: #19a0d3;
        color: #fffff;
    }


    .reg-container {
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 20px;
      margin-bottom: 100px;
      -webkit-box-shadow: 0 0 10px #9D9D9D;
      box-shadow: 0 0 10px #9D9D9D;
    }

    .reg-col-25 {
      float: left;
      width: 25%;
      margin-top: 6px;
    }

    .reg-col-75 {
      float: left;
      width: 75%;
      margin-top: 6px;
    }

    /* Clear floats after the columns */
    .row:after {
      content: "";
      display: table;
      clear: both;
    }

    /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
    @media screen and (max-width: 600px) {
      .reg-col-25, .reg-col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
      }
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Registration</h2>

    <div class="reg-container">
      <form action="" runat="server">
    
        <div class="row">
          <div class="reg-col-25">
            <asp:Label ID="namelabel" CssClass="reg-label" runat="server" Text="Name*"></asp:Label>
          </div>
          <div class="reg-col-75">
            <asp:TextBox ID="name" CssClass="reg-input" name="name" placeholder="Your name.." runat="server" required></asp:TextBox>
            <asp:RegularExpressionValidator ID="namevalidator" runat="server" 
             ControlToValidate="name" ErrorMessage="Enter Valid Name"                       
             ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
          </div>
      

        <div class="reg-row">
          <div class="reg-col-25">
            <asp:Label ID="emaillabel" CssClass="reg-label" runat="server" Text="Email*"></asp:Label>
          </div>
          <div class="reg-col-75">
            <asp:TextBox ID="email" CssClass="reg-input" name="email" placeholder=" Email.." runat="server" required></asp:TextBox>
            <asp:RegularExpressionValidator ID="eamilvalidator" runat="server" 
             ControlToValidate="email" ErrorMessage="Enter Valid Name"                       
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </div>
        </div>

        <div class="row">
          <div class="reg-col-25">
            <asp:Label ID="usernamelabel" CssClass="reg-label" runat="server" Text="Username*"></asp:Label>
          </div>
          <div class="reg-col-75">
            <asp:TextBox ID="username" CssClass="reg-input" name="username" placeholder=" Username.." runat="server" required></asp:TextBox>
            <asp:RegularExpressionValidator ID="usernamealidator" runat="server" 
              ControlToValidate="username" ErrorMessage="Please Enter Valid Username" 
              ValidationExpression="[A-Za-z][A-Za-z0-9._]{5,14}" ></asp:RegularExpressionValidator>
          </div>
        </div>

        <div class="row">
          <div class="reg-col-25">
            <asp:Label ID="passwordlabel" CssClass="reg-label" runat="server" Text="Password*"></asp:Label>
          </div>
          <div class="reg-col-75">
            <asp:TextBox ID="password" CssClass="reg-input" name="password" placeholder="Password..." runat="server" required></asp:TextBox>
            <asp:RegularExpressionValidator ID="passwordvalidator" runat="server" 
              ControlToValidate="password" ErrorMessage="Enter Valid Password" 
              ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" ></asp:RegularExpressionValidator>
          </div>
        </div>

        <div class="row">
          <div class="reg-col-25">
            <asp:Label ID="cpasswordlabel" CssClass="reg-label" runat="server" Text="Confirm Password*"></asp:Label>
          </div>
          <div class="reg-col-75">
            <asp:TextBox ID="cpassword" CssClass="reg-input" name="cpassword" placeholder=" Confirm Password.." runat="server" required></asp:TextBox>
            <asp:CompareValidator ID="passwordcomparealidator" runat="server"  ControlToValidate="password"
                 ControlToCompare="cpassword" ErrorMessage="Password must be the same"  />
          </div>
        </div>

        <div class="reg-row">
          <div class="reg-col-25">
            <asp:Label ID="cotactlabel" CssClass="reg-label" runat="server" Text="Contact*"></asp:Label>
          </div>
          <div class="reg-col-75">
            <asp:TextBox ID="contact" CssClass="reg-input" name="contact" placeholder=" Contact Number.." runat="server" required></asp:TextBox>
            <asp:RegularExpressionValidator ID="contactvalidator" runat="server" 
             ControlToValidate="contact" ErrorMessage="Enter Valid Contact Number"                       
             ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
          </div>
        </div>


        <div class="row">
          <div class="reg-col-25">
            <asp:Label ID="doblabel" CssClass="reg-label" runat="server" Text="Date of Birth*"></asp:Label>
          </div>
          <div class="reg-col-75">
            <asp:TextBox ID="dob" CssClass="reg-input" name="dob" placeholder=" Date of Birth.." runat="server" Textmode="Date" required></asp:TextBox>
            <br>
            <asp:Label ID="Label" runat="server" Text="."></asp:Label>
          </div>
        </div>

        <div class="row">
          <div class="reg-col-25">
            <asp:Label ID="genderlabel"  CssClass="reg-label" runat="server" Text="Gender*"></asp:Label>
          </div>
          <div class="reg-col-75">
            <asp:DropDownList  ID="gender"  CssClass="reg-input" runat="server" required>
                <asp:ListItem Enabled="true" Text="Select Gender" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem> </asp:DropDownList>
                <br>
             <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
          </div>
        </div>

        <asp:Button ID="submitbtn" CssClass="submitbtn" runat="server" Text="Submit" onclick="Submitbtn_Click" />
        <asp:Button ID="cancelbtn"  CssClass="cancelbtn" runat="server" Text="Cancel" onclick="Canceltbtn_Click" />
        
        </div>
      
      </form>
    </div>

</asp:Content>
