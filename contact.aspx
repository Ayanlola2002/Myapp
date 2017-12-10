<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact us</title>
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
                    <a href="#!" class="brand-logo">
                        <img src="Images/Logo/electronica.png" />
                        <span class="title">Electronica</span></a>

                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons mdi-navigation-menu"></i></a>
                    <div id="navigation">
                        <ul class="right hide-on-med-and-down">
                            <li><a href="Home.aspx">Home</a></li>
                            <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Products</a></li>
                            <li><a href="Aboutus.aspx">About Us</a></li>
                            <li class="active"><a href="Contact.aspx">Contact</a></li>
                            <li><i class="fa fa-user"></i>
                                <a class='dropdown-button' href='#' data-activates='usersdrop'>
                                    <asp:Label ID="LUsername" runat="server" Text="welcome"></asp:Label></a>
                            </li>
                            <li class="shopping-bag-header">
                                <i class="fa fa-shopping-bag open-cart-popup">
                                      <a href="~/Products/cart.aspx" id="count" runat="server"><span id="cartCount" runat="server"></span></a>
                                </i>
                            </li>
                        </ul>
                    </div>
                    <%-- mobile --%>
                    <ul class="side-nav" id="mobile-demo">
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a class="dropdown-button" href="#!" data-activates="dropdown">Products</a></li>
                        <li><a href="About.aspx">About</a></li>
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
                <a href="Login.aspx">logout</a>
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
            <div id="contact-banner" ></div>
        </div>
        <div id="company-details">
            <div class="container">
                <div class="row">
                    <div class="col l6 wow fadeInLeft">
                        <h3>COMPANY DETAILS</h3>
                        <h4>Email us:</h4>
                        <div class="flow-text">Use one of the following emails to direct your enquiry to the relevant department and get the fastest response.Please give us as much information to enable us to answer your query.For confirmed / pending order enquries: <a>sales@Electronica.com</a></div>


                        <h4>Phone Us:</h4>
                        <div class="flow-text">Opening hours are between 8am-4pm:</div>
                        <ul>
                            <li>Telephone (Nigeria):08160455544</li>
                            <li>Telephone (International): +2348160455544</li>
                        </ul>
                        <div class="address">
                            <h4>Address:</h4>
                            <i class="fa fa-map-marker" style="margin: 0.3em 0.9em 0px 0.3em;"></i>
                            <div class="contact_address">
                                Plot2 Lekki Shopping Mall.Olusegun Obasanjo Presidential way Lekki Lagos
                            </div>
                        </div>
                    </div>
                    <div id="message" class="wow bounceInRight">
                        <h3>LEAVE A MESSAGE </h3>
                        <div class="input-field col s12 m12 l6">
                            <input id="first_name" type="text" class="validate" />
                            <label for="first_name">First Name</label>
                        </div>
                        <div class="input-field col s12 m12 l6">
                            <asp:TextBox ID="last_name" runat="server" type="text" class="validate"></asp:TextBox>
                            <label for="last_name">Last Name</label>
                        </div>

                        <div class="input-field col l6">
                            <asp:TextBox ID="email" runat="server" type="email" class="validate"></asp:TextBox>
                            <label for="email">Email</label>
                        </div>
                        <div class="input-field col s12 m12 l6">
                            <asp:TextBox ID="subject" runat="server" type="text" class="validate"></asp:TextBox>
                            <label for="subject">subject</label>
                        </div>

                        <div class="input-field col s12 m12 l6">
                            <textarea id="textarea1" class="materialize-textarea" length="120"></textarea>
                            <label for="textarea1">Textarea</label>
                        </div>
                        <asp:Button ID="button" runat="server" class="waves-effect waves-light btn" Text="SEND" />
                    </div>
                </div>
            </div>
        </div>
        <div id="fixed-social" class="hide-on-med-and-down">
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
