<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="ComplaintResolverSystem.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
           * {
          box-sizing: border-box;
        }

        .contact-input {
          width: 100%;
          padding: 12px;
          border: 1px solid #ccc;
          border-radius: 4px;
          resize: vertical;
        }
        .contact-msg {
          width: 100%;
          height: 50px;
          padding: 12px;
          border: 1px solid #ccc;
          border-radius: 4px;
          resize: vertical;
        }

        .contact-label {
          padding: 12px 12px 12px 0;
          display: inline-block;
          float: left;
        }

        input[type=submit] {
          background-color: #4CAF50;
          color: white;
          padding: 12px 20px;
          border: none;
          border-radius: 4px;
          cursor: pointer;
          float: right;
        }
        

        input[type=submit]:hover {
          background-color: #45a049;
        }

        .login-container {
          border-radius: 5px;
          background-color: #f2f2f2;
          padding: 20px;
          margin-bottom: 100px;
          -webkit-box-shadow: 0 0 10px #9D9D9D;
          box-shadow: 0 0 10px #9D9D9D;
        }

        .contact-col-25 {
          float: left;
          width: 25%;
          margin-top: 6px;
        }

        .contact-col-75 {
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
          .contact-col-25, .contact-col-75, input[type=submit] {
            width: 100%;
            margin-top: 0;
          }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

  <h2>Contact</h2>

    <div class="login-container">
      <form id="Form1" action="" runat="server">        

        <div class="row">
          <div class="contact-col-25">
            <asp:Label ID="namelabel" CssClass="contact-label" runat="server" Text="Name*"></asp:Label>
          </div>
          <div class="contact-col-75">
            <asp:TextBox ID="name" CssClass="contact-input" name="name" placeholder="Your name.." runat="server" required></asp:TextBox>
            <asp:RegularExpressionValidator ID="namevalidator" runat="server" 
             ControlToValidate="name" ErrorMessage="Enter Valid Name"                       
             ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
          </div>
    

        <div class="contact-row">
          <div class="contact-col-25">
            <asp:Label ID="emaillabel" CssClass="contact-label" runat="server" Text="Email*"></asp:Label>
          </div>
          <div class="contact-col-75">
            <asp:TextBox ID="email" CssClass="contact-input" name="email" placeholder=" Email.." runat="server" required></asp:TextBox>
            <asp:RegularExpressionValidator ID="eamilvalidator" runat="server" 
             ControlToValidate="email" ErrorMessage="Enter Valid Name"                       
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </div>
        </div>

        <div class="contact-row">
          <div class="contact-col-25">
            <asp:Label ID="cotactlabel" CssClass="contact-label" runat="server" Text="Contact*"></asp:Label>
          </div>
          <div class="contact-col-75">
            <asp:TextBox ID="contact" CssClass="contact-input" name="contact" placeholder=" Contact Number.." runat="server" required></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
             ControlToValidate="contact" ErrorMessage="Enter Valid Contact Number"                       
             ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
          </div>
        </div>

        <div class="contact-row">
          <div class="contact-col-25">
            <asp:Label ID="msglabel" CssClass="contact-label" runat="server" Text="Message*"></asp:Label>
          </div>
          <div class="contact-col-75">
              <textarea id="msg" CssClass="contact-msg" name="contact" placeholder=" Message.." runat="server" required></textarea>
          </div>
        </div>

        
    
      
        </div>
      </form>
    </div>


</asp:Content>
