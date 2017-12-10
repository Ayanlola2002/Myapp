<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Electronica Online store</title>
    <link href="css/materialize.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/preloader.css" rel="stylesheet" />
    <link href="font-awesome-4.5.0/css/font-awesome.css" rel="stylesheet" />
    <link href="css/hover.css" rel="stylesheet" />
    <link href="css/normalize.css" rel="stylesheet" />
    <link href="Images/Logo/electronica.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Start Page Loading -->
        <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- End Page Loading -->
        <%-- navigation starts --%>
        <nav>
            <div class="container">
                <div class="nav-wrapper">
                    <a href="Home.aspx" class="brand-logo">
                        <img src="Images/Logo/electronica.png" />
                        <span class="title">Electronica</span></a>
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons mdi-navigation-menu"></i></a>
                    <div id="navigation">
                        <ul class="right hide-on-med-and-down">
                            <li class="active"><a href="Home.aspx">Home</a></li>
                            <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Products</a></li>
                            <li><a href="Aboutus.aspx">About Us</a></li>
                            <li><a href="Contact.aspx">Contact</a></li>
                            <li><i class="fa fa-user"></i>
                                <a class='dropdown-button' href='#' data-activates='usersdrop'>
                                    <asp:Label ID="LUsername" runat="server" Text="welcome"></asp:Label>
                                    <i class="fa fa-sort-down"></i></a>

                            </li>
                        </ul>
                        <div class="shopping-bag-header">
                            <i class="fa fa-shopping-bag open-cart-popup">
                               <a href="~/Products/cart.aspx" id="count" runat="server"><span id="cartCount" runat="server"></span></a>
                            </i>
                        </div>
                    </div>
                    <%-- mobile --%>
                    <ul class="side-nav" id="mobile-demo">
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a class="dropdown-button" href="#!" data-activates="dropdown">Products</a></li>
                        <li><a href="Aboutus.aspx">About</a></li>
                        <li><a href="contact.aspx">Contact</a></li>
                        <li>
                            <a class='dropdown-button' href='#' data-activates='mobile-users'><i class="fa fa-user"></i></a>
                            <li class="shopping-bag-head">
                                <i class="fa fa-shopping-bag open-cart-popup">
                                    <a class="" id="count-nav"><span>0</span></a>
                                </i>
                            </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="strips"></div>
        <%-- Drop downs --%>
        <div id="products">
            <div id="dropdown1" class="dropdown-content">
                <ul>
                    <li><a href="Products/Tv.aspx">Tv</a></li>
                    <li class="divider"></li>
                    <li><a href="Products/Computers.aspx">Computer</a></li>
                    <li class="divider"></li>
                    <li><a href="Products/washing meachines.aspx">washing-Machines</a></li>
                    <li class="divider"></li>
                    <li><a href="Products/computer games.aspx">playstations</a></li>
                    <li class="divider"></li>
                    <li><a href="Products/Refigirators.aspx">Refigirators</a></li>
                </ul>
            </div>
        </div>
        <div id="users">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
            <%--userprofile drop down --%>
            <div id="usersdrop" class="dropdown-content">
                <a href="Account.aspx">Account Details</a>
                <asp:LinkButton ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
            </div>
        </div>
              </ContentTemplate>
        </asp:UpdatePanel>
        
        <%-- Mobile sid nav drop down --%>
        <div class="products">
            <ul id="dropdown" class="dropdown-content">
                <li><a href="#!">TV</a></li>
                <li><a href="#!">COMPUTERS</a></li>
                <li class="divider"></li>
                <li><a href="#!">WASHING MEACHINES</a></li>
            </ul>
        </div>
        <%--userprofile drop down --%>
        <div id="mobile-side-users">
            <div id="mobile-users" class="dropdown-content">
                <asp:Label ID="mobileusername" runat="server" Text="Welcome"></asp:Label>
                <a href="/">Account Details</a>
                <a href="Login.aspx">Logout</a>
            </div>
        </div>
        <%-- End of page navigation --%>

        <%-- Home slider --%>
        <section id="home_slider">
            <div class="slider" style="min-height: 500px">
                <ul class="slides" style="height: 500px">
                    <li>
                        <img src="Images/04.jpg" />
                        <div class="caption center-align ">
                            <h3>We give the best quility experice in Technologies</h3>
                            <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                        </div>
                    </li>
                    <li>
                        <img src="Images/slide1.jpg" />
                        <div id="overlay1"></div>
                        <div class="caption left-align">
                            <h3>We serve you the best in every thing we do</h3>
                            <h5 class="light grey-text text-lighten-3">regardless of religion, race, gender or nationality.</h5>
                        </div>
                    </li>
                    <li>
                        <img src="Images/Herro.jpg" />
                        <div class="caption right-align">
                            <h3>we make Life more better and confortable with our latest techs,</h3>
                            <h5 class="light grey-text text-lighten-3">make you feel good.</h5>
                        </div>
                    </li>
                    <li>
                        <img src="Images/slid4.jpg" />
                        <div class="caption center-align">
                            <h3>We promote impact oriented development electronics,</h3>
                            <h5 class="light grey-text text-lighten-3">in line with the our brands.</h5>
                        </div>

                    </li>
                    <li>
                        <img src="Images/bg-3.jpg" />
                        <div class="caption center-align">
                            <h3>We promote impact oriented development electronics,</h3>
                            <h5 class="light grey-text text-lighten-3">in line with the our brands.</h5>
                        </div>
                    </li>

                </ul>
            </div>
        </section>
        <%-- End of Home slider --%>
        <%-- New arivals --%>
        <div class="arriv">
            <div class="container">
                <div class="row">
                    <div class="col s12 l6 wow fadeInLeft">
                        <div class="arriv-top">
                            <div class="arriv-overlay"></div>
                            <img class="responsive-img " src="Images/rr.jpg" />
                            <div class="arriv-info">
                                <h3>BEST LUNDARY MEACHINES</h3>
                                <p>MAKE USE OF OUR BEST PRODUCT</p>
                                <div class="crt-btn hvr-bubble-right">
                                    <a href="Products/washing meachines.aspx">TAKE A LOOK</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col s12 l6 wow fadeInDown">
                        <div class="arriv-top">
                            <div class="arriv-overlay"></div>
                            <img class="responsive-img" src="Images/home.jpg" />
                            <div class="arriv-info">
                                <h3>ElEGANT DESIGNS</h3>
                                <p>MAKE USE OF OUR BEST PRODUCT</p>
                                <div class="crt-btn hvr-bubble-right">
                                    <a href="Products/Refigirators.aspx">TAKE A LOOK</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>


        <div class="arriv">
            <div class="container">
                <div class="row">
                    <div class="col s12 m8 wow fadeInRight">
                        <div class="arriv-top">
                            <div class="arriv-overlay"></div>
                            <img class="responsive-img" src="Images/banner04.jpg" />
                            <div class="arriv-info">
                                <h3>BEST HOME ELECTRONICS</h3>
                                <p>Make Your Home Look Good</p>
                                s
                        <div class="crt-btn hvr-pulse">
                            <a href="Products/Tv.aspx">TAKE A LOOK</a>
                        </div>
                            </div>
                        </div>
                    </div>
                    <div class="col s12 m4 wow fadeInRight">
                        <div class="arriv-top">
                            <div class="arriv-overlay"></div>
                            <img class="responsive-img" src="Images/ps4.jpg" />
                            <div class="arriv-info">
                                <h3>OUTSTANDING PRODUCTS</h3>
                                <p>Revive yor life with better Gagdet</p>
                                <div class="crt-btn hvr-pulse">
                                    <a href="Products/computer games.aspx">TAKE A LOOK</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>

        <div class="arriv">
            <div class="container">
                <div class="row">
                    <div class="col s12 m4 wow fadeInLeftBig">
                        <div class="arriv-top">

                            <img class="responsive-img" src="Images/apple.jpg" />
                            <div class="arriv-info">
                                <h3>GAMING LAPTOP</h3>
                                <p>Make Your Home Look Good</p>

                                <div class="crt-btn hvr-hang">
                                    <a href="Products/Computers.aspx">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col s12 m4 wow fadeInUpBig">
                        <div class="arriv-top">
                            <img class="responsive-img" src="Images/product.jpg" />
                            <div class="arriv-info">
                                <h3>APPLE TV </h3>
                                <p>Revive yor life with better Gagdet</p>
                                <div class="crt-btn hvr-hang">
                                    <a href="Products/Tv.aspx">SHOP NOW</a>
                                </div>
                            </div>
                        </div>
                    </div>
                     
                 <div class="col s12 m4 wow fadeInRightBig">
                        <div class="arriv-top">
                            <div class="arriv-overlay"></div>
                            <div class="off"/>
                            <div class="arriv-info">
                                <h3>BIG SALES</h3>
                                <h3>30% off</h3>
                                <div class="crt-btn hvr-hang">
                                    <a href="Products/Refigirators.aspx">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <%-- TRENDING OFFERS --%>
        <div class="container">
            <div class="special">
                <h3>TRENDING</h3>
            </div>
            <div class="row">
                <div class="col s12 m6 l3 wow bounceInDown" data-wow-duration="2s">
                    <div class="card">
                        <div class="card-image">
                            <img src="Images/product.jpg" />
                        </div>
                        <div class="card-content">
                            <p>APPLE TV.</p>
                            <div class="price-slected">
                                <div class="current">
                                    <span class="naira">N</span>73,500
                                </div>
                                <div class="prev"><span class="naira">N</span>85,500</div>
                            </div>
                        </div>
                        <div class="card-action">
                            <span class="add-to-basket" onclick="Materialize.toast('Item added to cart', 4000,'rounded')">Add to cart<i class="fa fa-shopping-cart"></i></span>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3 wow bounceInLeft" data-wow-duration="2s">
                    <div class="card">
                        <div class="card-image">
                            <img src="Images/lap.jpg" />
                        </div>
                        <div class="card-content">
                            <p>HP PAVALION G6</p>
                            <div class="price-slected">
                                <div class="current"><span class="naira">N</span>80,000</div>
                                <div class="prev"><span class="naira">N</span>98,000</div>
                            </div>
                        </div>
                        <div class="card-action">
                            <span class="add-to-basket" onclick="Materialize.toast('Item added to cart', 4000,'rounded')">Add to cart<i class="fa fa-shopping-cart"></i></span>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3 wow bounceInUp" data-wow-duration="2s">
                    <div class="card">
                        <div class="card-image">
                            <img src="Images/lg-washing.jpg" />
                        </div>
                        <div class="card-content">
                            <p>LG WASHING MEACHINE</p>
                            <div class="price-slected">
                                <div class="current"><span class="naira">N</span>56,000</div>
                                <div class="prev"><span class="naira">N</span>70,000</div>
                            </div>
                        </div>
                        <div class="card-action">
                            <span class="add-to-basket" onclick="Materialize.toast('Item added to cart', 4000,'rounded')">Add to cart<i class="fa fa-shopping-cart"></i></span>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3 wow bounceInRight" data-wow-duration="2s">
                    <div class="card">
                        <div class="card-image">
                            <img src="Images/play.jpg" />
                        </div>
                        <div class="card-content">
                            <p>PLAY STATION 4</p>
                            <div class="price-slected">
                                <div class="current"><span class="naira">N</span>120,000</div>
                                <div class="prev"><span class="naira">N</span>140,000</div>
                            </div>
                        </div>

                        <div class="card-action">
                            <span class="add-to-basket" onclick="Materialize.toast('Item added to cart', 4000,'rounded')">Add to cart <i class="fa fa-shopping-cart"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hide-on-med-and-down">
            <div id="fixed-social">
                <a class="fb" href="!"><i class="fa fa-facebook"></i></a>
                <a class="tw" href="!"><i class="fa fa-twitter"></i></a>
                <a class="in" href="!"><i class="fa fa-instagram"></i></a>
                <a class="gp" href="!"><i class="fa fa-google-plus"></i></a>
            </div>
        </div>

        <%--Footer section--%>
          <footer class="page-footer">
            <div class="container">
                <div class="row">
                    <div class="col l6 s12">
                        <h4 class="white-text">Keep In Touch</h4>
                        <p class="grey-text text-lighten-4">Subscribe To our Newsletters and get the right updates and right in your inbox</p>
                        <input type="email" placeholder="Subscribe" style="color: #fff" />
                        <i class="fa fa-arrow-circle-right"></i>
                    </div>
                    <div class="col l4 offset-l2 s12">
                        <h4 class="white-text">Can we help?</h4>
                        <ul>
                            <li><a class="grey-text text-lighten-3" href="Feedback.aspx">Feedback</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">Delivery Charges</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">Privacy policy</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">Terms and Conditions</a></li>

                        </ul>
                        <div class="mail">
                            <i class="fa fa-envelope"></i>
                            <span>info@Electronica.com</span>
                        </div>

                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    <span style="color: #fff">© 2016 Copyright Electronica online store </span>
                    <a class="grey-text text-lighten-4 right" href="#!">powered by Jerry Designs</a>
                </div>
            </div>
        </footer>

        <%-- JS script files --%>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/materialize.min.js" type="text/javascript"></script>
        <script src="js/preloader.js"></script>
        <script src="js/wow.js"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <script src="js/modernizr.js"></script>
        <%-- End of Js script --%>
    </form>
</body>
</html>
