<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About-US</title>
    <link href="css/materialize.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/preloader.css" rel="stylesheet" />
    <link href="font-awesome-4.5.0/css/font-awesome.css" rel="stylesheet" />
    <link href="css/normalize.css" rel="stylesheet" />
    <link href="Images/Logo/electronica.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
          <!-- Start Page Loading -->
    <div id="loader-wrapper">
        <div id="loader"></div>        
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>
    <!-- End Page Loading -->
        <nav>
            <div class="container">
                <div class="nav-wrapper">
                    <a href="Images/Logo/electronica.png" class="brand-logo">
                        <img src="Images/Logo/electronica.png" />
                        <span class="title">Electronica</span></a>
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons mdi-navigation-menu"></i></a>
                    <div id="navigation">
                        <ul class="right hide-on-med-and-down">
                            <li><a href="Home.aspx">Home</a></li>
                            <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Products</a></li>
                            <li class="active"><a href="Aboutus.aspx">About Us</a></li>
                            <li><a href="Contact.aspx">Contact</a></li>
                            <li><i class="fa fa-user"></i>
                                <a class='dropdown-button' href='#' data-activates='usersdrop'>
                                    <asp:Label ID="LUsername" runat="server" Text="welcome"></asp:Label></a>
                            </li>
                            
                        </ul>
                        <div class="shopping-bag-header">
                                <i class="fa fa-shopping-bag open-cart-popup">
                                    <a class="" id="count"><span>0</span></a>
                                </i>
                            </div>
                    </div>
                    <%-- mobile --%>
                    <ul class="side-nav" id="mobile-demo">
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a class="dropdown-button" href="#!" data-activates="dropdown">Products</a></li>
                        <li><a href="Aboutus.aspx">About</a></li>
                        <li><a href="Contact.aspx">Contact</a></li>
                        <li><a class='dropdown-button' href='#' data-activates='mobile-users'><i class="fa fa-user"></i></a>
                            <li class="shopping-bag-head">
                                <i class="fa fa-shopping-bag open-cart-popup">
                                    <a class="" id="count-nav"><span>0</span></a>
                                </i>
                            </li>
                    </ul>
                </div>
            </div>
        </nav>

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
                    <li><a href="Product/Refigirators.aspx">Refigirators</a></li>
                </ul>
            </div>
        </div>
        <div id="users">
            <%--userprofile drop down --%>
            <div id="usersdrop" class="dropdown-content">
                <a href="/">Acccount Details</a>
                <a href="Login.aspx">Logout</a>
            </div>
        </div>
        <%-- Mobile sid nav drop down --%>
        <div class="products">
            <ul id="dropdown" class="dropdown-content">
                <li><a href="#!">TV</a></li>
                <li><a href="#!">COMPUTERS</a></li>
                <li class="divider"></li>
                <li><a href="#!">WASHING MEACHINES</a></li>
            </ul>
        </div>
        <div id="mobile-side-users">
            <%--userprofile drop down --%>
            <div id="mobile-users" class="dropdown-content">
                <asp:Label ID="mobileusername" runat="server" Text="Welcome"></asp:Label>
            </div>
        </div>

        <div class="col s12">
            <div class="about">
            </div>
        </div>
        <div id="content2" class="wow fadeInUpBig">
            <h3>About Electronica</h3>
            <div class="content2-text">
                <p>Electronica  is an online company in Nigeria. We specialize in U.K and U.S Electronics such as Astonishoned Tv's , Refigirators, Playstations,Laptops Even to sell Mobile Phones in the nearest Future, we are able to offer you a wide range of high quality Electronics products at very affordable prices. Available in stock all year round is a range of designs, brand names.We want all our customers to receive high quality products. If there is something wrong with the product you have received or if your delivery is not identical to your order (wrong product or if a product is missing), please contact our customer ....</p>
            </div>
        </div>
        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="col s12 m4 separator wow bounceInLeft">
                        <div class="icon-block">
                            <h2 class="center pink-text"><i class="fa fa-line-chart"></i></h2>
                            <h5 class="center">Customer Service</h5>
                            <p class="light">
                                We combine friendly and efficient customer service with speedy order processing and dispatch. Our hard working warehouse staff will get your order processed as quickly as possible: don't be surprised if your order arrives within 24 hours of placing it providing your order is placed and pai for before 12pm weekdays (Monday to Friday, Abeokuta,Lagos deliveries only).
                            </p>
                        </div>
                    </div>
                    <div class="col s12 m4 wow bounceIn">
                        <div class="icon-block">
                            <h2 class="center pink-text"><i class="fa fa-users"></i></h2>
                            <h5 class="center">Electronica Team</h5>
                            <p class="light">
                                Our small team of dedicated staff are available to answer your phone and email enquiries, although in the first instance most information regarding products, delivery, shipping and Terms and Conditions are available on this website.Our website is open for business 365 days a year, 24 hours a day and you can leave us a message or call a mobile number out of hours +2348160455544. 
                            </p>
                        </div>
                    </div>
                    <div class="col s12 m4">
                        <div class="icon-block wow bounceInRight">
                            <h2 class="center pink-text"><i class="fa fa-support"></i></h2>
                            <h5 class="center">Online Supports</h5>

                            <p class="light">
                                We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col s12 m4 separator wow flipInX">
                    <div class="icon-block">
                        <h2 class="center pink-text"><i class="fa fa-plane"></i></h2>
                        <h5 class="center">Delivery Policy outside Nigeria</h5>
                        <p class="light">
                            We combine friendly and efficient customer service with speedy order processing and dispatch. Our hard working warehouse staff will get your order processed as quickly as possible: don't be surprised if your order arrives within 24 hours of placing it providing your order is placed and pai for before 12pm weekdays (Monday to Friday, Abeokuta,Lagos deliveries only).
                        </p>
                    </div>
                </div>
                <div class="col s12 m4 wow shake">
                    <div class="icon-block">
                        <h2 class="center pink-text"><i class="fa fa-money"></i></h2>
                        <h5 class="center">Return Policy</h5>
                        <p class="light">
                            Our small team of dedicated staff are available to answer your phone and email enquiries, although in the first instance most information regarding products, delivery, shipping and Terms and Conditions are available on this website.Our website is open for business 365 days a year, 24 hours a day and you can leave us a message or call a mobile number out of hours +2348160455544. 
                        </p>
                    </div>
                </div>
                <div class="col s12 m4 wow bounceInDown">
                    <div class="icon-block">
                        <h2 class="center pink-text"><i class="fa fa-cc-mastercard"></i></h2>
                        <h5 class="center">Online-payment policy</h5>

                        <p class="light">
                            We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.
                        </p>
                    </div>
                </div>
            </div>
        </div>


        <div id="fixed-social">
            <a class="fb" href="!"><i class="fa fa-facebook"></i></a>
            <a class="tw" href="!"><i class="fa fa-twitter"></i></a>
            <a class="in" href="!"><i class="fa fa-instagram"></i></a>
            <a class="gp" href="!"><i class="fa fa-google-plus"></i></a>
        </div>
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



        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/materialize.min.js" type="text/javascript"></script>
        <script src="js/preloader.js"></script>
        <script src="js/wow.js"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <script src="js/modernizr.js"></script>
    </form>
</body>
</html>
