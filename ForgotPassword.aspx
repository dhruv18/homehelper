﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Forgot Password</title> <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom-cs.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    <a class="navbar-brand" href="Default.aspx" ><span><img alt="logo" src="images/logo.png" height="50" /></span>HOME HELPER</a>
              </div>
              <div class="navbar-collapse collapse">
                  <ul class="nav navbar-nav navbar-right">
                      <li><a href="Default.aspx">HOME</a></li>
                      <li><a href="Calculate.aspx">Calculate</a></li>
                      <li><a href="Contactus.aspx">Contact</a></li>
                      <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                          <ul class="dropdown-menu">
                              <li class="dropdown-header">Tiles</li>
                              <li role="separator" class="divider"></li>
                              <li><a href="#">wood</a></li>
                              <li><a href="#">marbel</a></li>
                              <li><a href="#">greyneight</a></li>
                              <li role="separator" class="divider"></li>
                              <li class="dropdown-header">Paints</li>
                               <li role="separator" class="divider"></li>
                              <li><a href="#">plastic</a></li>
                              <li><a href="#">orignal</a></li>
                              <li><a href="#">dublicate</a></li>
                          </ul>
                      </li>
                     
                      <li class="active"><a href="SignIn.aspx">SignIn</a></li>
                  </ul>
              </div>
            </div>
        </div>
    </div>

        <div class="container">
            <div class="form-horizontal">
                <h2>Recover Password</h2>
                <hr />
                <h4>Please enter your email address,we will send you the instructionst to recover your password.</h4>
         
            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" CssClass="col-md-2 control-label" Text="Your Email"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="tbEmailId" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="requiredfieldvalidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="enter the valid email id" ControlToValidate="tbEmailId"></asp:RequiredFieldValidator>
                </div>
                </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btPassRec" runat="server" CssClass="btn btn-default" Text="send" OnClick="btPassRec_Click" />
                    <asp:Label ID="lblPassRec" runat="server"></asp:Label>
                </div>
            </div>
              </div>
        </div>
    </form> <hr />
     <!---footer start-->
        <footer <%--class="footer-pos"--%>>
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; dhruv mevada &middot;<a href="Default.aspx">Home</a>&middot;<a href="Default.aspx">about</a>&middot;<a href="Default.aspx">Contact</a>&middot;<a href="Default.aspx">Products</a></p>



        </div>
            </footer>

        <!---footer start-->

      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
