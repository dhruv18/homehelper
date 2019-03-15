<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home Page</title>
    <script
  src="http://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom-cs.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]--><script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/cart.aspx";
            });
        });
    </script>
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
                      <li class="active"><a href="Default.aspx">HOME</a></li>
                      <li><a href="#">About</a></li>
                      <li><a href="Contactus.aspx">Contact</a></li>
                      <li class="dropdown"> 
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                          <ul class="dropdown-menu">
                              <li class="dropdown-header">Tiles</li>
                              <li role="separator" class="divider"></li>
                              <li><a href="Products.aspx">wood</a></li>
                              <li><a href="Products.aspx">marbel</a></li>
                              <li><a href="Products.aspx">greyneight</a></li>
                              <li role="Products.aspx" class="divider"></li>
                              
                          </ul>
                      </li> <li>
                                <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                    Cart <span class="badge" id="pcount" runat="server"></span>
                                </button>
                            </li>
                      <li>
                          <asp:Button ID="btnSignOut" runat="server" CssClass="btn btn-default navbar-btn" Text="Sign Out" OnClick="btnSignOut_Click" />
                          <asp:Button ID="btnsignin" runat="server" CssClass="btn btn-default navbar-btn" Text="Sign IN" OnClick="btnsignin_Click" />

                      </li>
                    
                  </ul>
              </div>
            </div>
        </div>

        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success" Text="Label"></asp:Label>


    </div>
 <hr />
        <!---footer-->
        <footer>
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; dhruv mevada &middot;<a href="Default.aspx">Home</a>&middot;<a href="Default.aspx">about</a>&middot;<a href="Default.aspx">Contact</a>&middot;<a href="Default.aspx">Products</a></p>


        </div>
            </footer>


    </form>


     
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
