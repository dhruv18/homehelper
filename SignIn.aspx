<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SignIn Page</title>

    <!-- Bootstrap -->
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
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img alt="logo" src="images/logo.png" height="50" /></span>HOME HELPER</a>
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

            <!-- SIgn in Start -->

            <div class="container">
                <div class="form-horizontal">
                    <h2>Login</h2>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username:"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>


                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ControlToValidate="UserName" ErrorMessage="UserName is required !"></asp:RequiredFieldValidator>


                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password:"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>


                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ControlToValidate="Password" ErrorMessage="Password is Required !"></asp:RequiredFieldValidator>


                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Login" OnClick="Button1_Click" />
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SignUp.aspx" CausesValidation="False" ValidateRequestMode="Disabled" ViewStateMode="Disabled">Sign up</asp:LinkButton>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:LinkButton ID="lbForgotPass" runat="server" CausesValidation="False" PostBackUrl="~/ForgotPassword.aspx">Forgot Password</asp:LinkButton>
                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>

                        </div>
                    </div>

                </div>

            </div>
            <!-- SIgn in End -->





        </div>


    </form>
    <hr />
    <!---footer start-->
    <footer class="footer-pos">
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
