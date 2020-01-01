<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ComplaintResolverSystem.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <style>
      
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="loginWrapper">
        <h1 class="text-center my-5 cust-h1">LOG IN</h1>
          <form id="login" class="loginForm form" method="POST" novalidate="novalidate">
            <input type="hidden" name="next" value="dashboard.php">
            <div class="fullRow">
              <div class="label">Username / Email Address:</div>
              <input type="text" id="username" class="textField" name="username">
            </div>
            <div class="fullRow">
              <div class="label">Password:</div>
              <input type="password" id="password" class="textField" name="password">
            </div>
            <div class="fullRow">
              <label class="checkbox_container">Remember me
                <input type="checkbox" id="rememberme" class="rememberme" name="rememberme" checked="checked">
                <span class="checkmark"></span>
              </label>
                <a href="" class="forgot-link js-forgot-link">Forgot Your Password?</a>
            </div>
            <div class="fullRow g_captcha">
               <div id="signUpRecaptcha" class="g-recaptcha"><div style="width: 304px; height: 78px;"><div><iframe src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6Le0Y5UUAAAAAMZ15Ntjn578iUNowCSsgstfM4Sn&amp;co=aHR0cHM6Ly9iZW50b2ZveC5pbzo0NDM.&amp;hl=en&amp;v=mhgGrlTs_PbFQOW4ejlxlxZn&amp;size=normal&amp;cb=tjnk9x536ks0" width="304" height="78" role="presentation" name="a-53thy277bskt" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div></div>
               <input type="hidden" class="hiddenRecaptcha" name="hiddenRecaptcha" id="hiddenRecaptcha">
            </div>
            <div id="loginErrorMessage" class="errorMessage">
                Please enter correct email/username and password
            </div>
            <div class="fullRow">
              <button class="button">Log In</button>
            </div>
          </form>
          <div class="loaderWrapper">
            <img src="/assets/img/loader.gif" class="loader">
            <div class="pleaseWait">Please Wait...</div>
          </div>
      </div>
</asp:Content>
