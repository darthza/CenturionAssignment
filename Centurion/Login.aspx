<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Centurion.Login" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxRichEdit.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxRichEdit" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body class="login">
    <div class="logo"style="margin:5px 5px 5px">
        <a >
           <img src="Content/iot-1024x746.png" style="width:200px;" />
        </a>
    </div>
    <!-- END LOGO -->
    <!-- BEGIN LOGIN -->
    <div class="content">
        <!-- BEGIN LOGIN FORM -->
        <form id="loginform" class="login-form visable" action="" method="" runat="server">

            <h3 class="form-title">Login to your account</h3>
            
            <div class="form-group">
                
                <label class="control-label visible-ie8 visible-ie9">Username</label>
                <div class="input-icon">
                    <i class="fa fa-user"></i>
                   
                     <dx:ASPxTextBox ID="txtUsername" runat="server" Width="100%" Font-Size="X-Large"></dx:ASPxTextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9">Password</label>
                <div class="input-icon">
                    <i class="fa fa-lock"></i>
                    <dx:ASPxTextBox ID="txtPassword" runat="server" Width="100%" Font-Size="X-Large"></dx:ASPxTextBox>
                    
                </div>
            </div>
            <div>
                <dx:ASPxButton ID="btnLogin" runat="server" Text="Login" Theme="Material" style="background-color:#0070BB" OnClick="btnLogin_Click"></dx:ASPxButton>         
            </div>

        </form>

  

      

    </div>
   
    <style >
     /* Cubic Bezier Transition */
/***
Login page
***/
/* logo page */
.login {
  background-color: #666 !important; }

.login .logo {
  margin: 60px auto 20px auto;
  padding: 15px;
  text-align: center; }

.login .content {
  background: url(../img/bg-white-lock.png) repeat;
  width: 360px;
  margin: 0 auto;
  margin-bottom: 0px;
  padding: 30px;
  padding-top: 20px;
  padding-bottom: 15px;
  -webkit-border-radius: 7px;
  -moz-border-radius: 7px;
  -ms-border-radius: 7px;
  -o-border-radius: 7px;
  border-radius: 7px; }

.login .content h3 {
  color: #eee; }

.login .content h4 {
  color: #eee; }

.login .content p,
.login .content label {
  color: #fff; }

.login .mt-checkbox > span:after {
  border-color: #eee; }

.login .content .login-form,
.login .content .forget-form {
  padding: 0px;
  margin: 0px; }

.login .content .form-control {
  background-color: #fff; }

.login .content .forget-form {
  display: none; }

.login .content .register-form {
  display: none; }

.login .content .form-title {
  font-weight: 300;
  margin-bottom: 25px; }

.login .content .form-actions {
  background-color: transparent;
  clear: both;
  border: 0px;
  padding: 0px 30px 25px 30px;
  margin-left: -30px;
  margin-right: -30px; }

.login .content .forget-form .form-actions {
  border: 0;
  margin-bottom: 0;
  padding-bottom: 20px; }

.login .content .register-form .form-actions {
  border: 0;
  margin-bottom: 0;
  padding-bottom: 0px; }

.login .content .form-actions .rememberme {
  margin-top: 8px;
  display: inline-block; }

.login .content .form-actions .btn {
  margin-top: 1px; }

.login .content .forget-password {
  margin-top: 25px; }

.login .content .create-account {
  border-top: 1px dotted #eee;
  padding-top: 10px;
  margin-top: 15px; }

.login .content .create-account a {
  display: inline-block;
  margin-top: 5px; }

/* select2 dropdowns */
.login .content .select2-container i {
  display: inline-block;
  position: relative;
  color: #ccc;
  z-index: 1;
  top: 1px;
  margin: 4px 4px 0px -1px;
  width: 16px;
  height: 16px;
  font-size: 16px;
  text-align: center; }

.login .content .has-error .select2-container i {
  color: #b94a48; }

.login .content .select2-container a span {
  font-size: 13px; }

.login .content .select2-container a span img {
  margin-left: 4px; }

/* footer copyright */
.login .copyright {
  text-align: center;
  margin: 0 auto;
  padding: 10px;
  color: #eee;
  font-size: 13px; }

@media (max-width: 480px) {
  /***
  Login page
  ***/
  .login .logo {
    margin-top: 10px; }
  .login .content {
    padding: 30px;
    width: 222px; }
  .login .content h3 {
    font-size: 22px; }
  .login .checkbox {
    font-size: 13px; } }

    </style>
</body>
</html>
