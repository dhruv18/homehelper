<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome1.aspx.cs" Inherits="UserHome1" %>

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
    <![endif]-->
    <script>
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

            <div class="navbar navbar-default navbar-fixed-top " role="navigation">
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
                            <li class="active"><a href="UserHome1.aspx">HOME</a></li>
                            <li><a href="Calculate.aspx">Calculate</a></li>
                            <li><a href="Contactus.aspx">Contact</a></li>
                            <li><a href="Products.aspx?CID=18">Products</a></li>
                          
                            <li>
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
            <!--carousel-->

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item  active">
                        <img src="images/slider/slider1.jpg" alt="..." />
                        <div class="carousel-caption">
                            <%--<h3> hello dhrv</h3>
          <p>images </p>--%>
                            <p><a class="btn btn-lg btn-primary" href="singUP.aspx" role="button">Welcome</a></p>

                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider/slider2.jpg" alt="..." />
                        <div class="carousel-caption">
                            <%--<h3> hello dhrv</</h3>
          <p>images </p>--%>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Welcome</a></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider/slider3.jpg" alt="..." />
                        <div class="carousel-caption">
                            <%--<h3> hello dhrv</</h3>
          <p>images </p>--%>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Welcome</a></p>
                        </div>
                    </div>
                    ...
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

        </div>
        <br />
        <br />
        <!--- middle contents-->
        <div class="container center">
            <asp:Repeater ID="rptproduct" runat="server">
                <ItemTemplate>
                    <div class="row">
                        <div class="col-lg-4">

                            <img class="img-thumbnail" src="images/middleimg/woodenfloringhomepage.gif" alt="thumb01" width="140" />
                            <h2>WoodTiles</h2>
                            <p>wooden tiles offer durability at an affordable price.it offers high performance qualities.</p>
                            <p><a class="btn btn-default" style="text-decoration: none;" href="Products.aspx?CID=5" role="button">view</a></p>
                            </a>
                        </div>

                        <div class="col-lg-4">

                            <img class=" img-thumbnail" src="images/middleimg/ceramichomepage.gif" alt="thumb01" width="140" />
                            <h2>CeramicTiles</h2>
                            <p>Ceramic tiles are made from a mixture of clay,sand and other natural materials. </p>
                            <p><a class="btn btn-default" style="text-decoration: none;" href="Products.aspx?CID=2" role="button">view</a></p>
                        </div>

                        <div class="col-lg-4">

                            <img class="img-thumbnail" src="images/middleimg/granitehomepage.gif" alt="thumb01" width="140" />
                            <h2>GraniteTiles</h2>
                            <p>Granite tiles remain popular flooring choice because of its overall strength,resiliency and number of unique colour option.</p>
                            <p><a class="btn btn-default" style="text-decoration: none;" href="Products.aspx?CID=3" role="button">view</a></p>
                        </div>

                        <div class="col-lg-4">

                            <img class="img-thumbnail" src="images/middleimg/marbale.jpg" alt="thumb01" width="140" />
                            <h2>Marbales</h2>
                            <p>when it comes to timeless style.no one can beat marble floor tiles.</p>
                            <p><a class="btn btn-default" style="text-decoration: none;" href="Products.aspx?CID=4" role="button">view</a></p>
                        </div>

                        <div class="col-lg-4">

                            <img class="img-thumbnail" src="images/middleimg/slateTiles.jpg" alt="thumb01" width="140" />
                            <h2>SlateTiles</h2>
                            <p>slate is beautiful natural stole with colour variation that give each tiles a distinctive look.</p>
                            <p><a class="btn btn-default" style="text-decoration: none;" href="Products.aspx?CID=6" role="button">view</a></p>
                        </div>

                        <div class="col-lg-4">

                            <img class="img-thumbnail" src="images/middleimg/Hexagon%20Nature01.jpg" alt="thumb01" width="140" />
                            <h2>Hexagon Tiles</h2>
                            <p>Create patterns using a 1" hex or go giant and cover the walls - Hexagon tiles will never go out of style.</p>
                            <p><a class="btn btn-default" style="text-decoration: none;" href="Products.aspx?CID=9" role="button">view</a></p>
                        </div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <!-- middle contents-->



    </form>




    <hr />
    <!---footer-->
    <footer>
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; dhruv mevada &middot;<a href="Default.aspx">Home</a>&middot;<a href="Default.aspx">about</a>&middot;<a href="Default.aspx">Contact</a>&middot;<a href="Default.aspx">Products</a></p>


        </div>
    </footer>







    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
