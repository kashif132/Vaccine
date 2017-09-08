﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Application.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" />
</head>

<body class="background">
    <div class="login-page">
        <div class="form">
            <form class="register-form" id="form1" runat="server">
                <asp:TextBox ID="Textuname" runat="server" placeholder="username" required="required" Width="100%"></asp:TextBox>
                <asp:TextBox ID="Textemail" runat="server" placeholder="email" required="required" Width="100%"></asp:TextBox>
                <asp:TextBox ID="Textpass" runat="server" TextMode="Password" placeholder="password" required="required" Width="100%"></asp:TextBox>
                <asp:TextBox ID="Textrepass" runat="server" TextMode="Password" placeholder="confirm password" required="required" Width="100%" ValidateRequestMode="Enabled"></asp:TextBox>
                <asp:CompareValidator ID="CV" runat="server" ErrorMessage="Passwords don't match" ControlToValidate="Textrepass" ControlToCompare="Textpass" Operator="Equal" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
                <asp:Button CssClass="btn" ID="button" runat="server" Text="create" Style="background-color: #1abc9c;" OnClick="btn_Click" />
                <p class="message">Already registered? <a href="page.aspx">Home</a></p>
            </form>
        </div>
    </div>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="js/index.js"></script>
</body>
</html>