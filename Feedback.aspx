<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
    <meta name="viewport" content="width=device-width" />

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
        <nav>
            <div class="container">
                <div class="nav-wrapper">
                    <a href="Home.aspx" class="brand-logo">
                        <img src="Images/Logo/electronica.png" />
                        <span class="title">Electronica</span></a>
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons mdi-navigation-menu"></i></a>
                    <div id="navigation">
                        <ul class="right hide-on-med-and-down">
                            <li><a href="Home.aspx">Home</a></li>
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
            <%--userprofile drop down --%>
            <div id="usersdrop" class="dropdown-content">
                <a href="Account.aspx">Account Details</a>
                <asp:LinkButton ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
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
        <%--userprofile drop down --%>
        <div id="mobile-side-users">
            <div id="mobile-users" class="dropdown-content">
                <asp:Label ID="mobileusername" runat="server" Text="Welcome"></asp:Label>
                <a href="/">Account Details</a>
                <a href="Login.aspx">Logout</a>
            </div>
        </div>
        <div class="feed-bg">
            <div class="container">
                <h1>Tell us what you think about Electronica</h1>
                <p>Everything we do , is to move you Emotionally</p>
            </div>
        </div>
        <div class="feedbackmain">
            <div class="container">
                <h2 class="feedhead">FEEDBACK</h2>

                <div class="feed-back">
                    <h3>Please Take a minute to tell us what you feel about Electronica</h3>
                    <br />

                    <asp:TextBox ID="Fullname" runat="server" placeholder="Full Name" MaxLength="200" required="required" AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:TextBox ID="Email" runat="server" placeholder="Email" MaxLength="200" required="required" AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:TextBox ID="Ocupation" runat="server" placeholder="ocupation" MaxLength="200" required="required" AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:TextBox ID="MobileNum" runat="server" placeholder="Mobile No" MaxLength="200" required="required" AutoCompleteType="Disabled"></asp:TextBox>
                    <span>Is there anything you would like to tell us</span>
                    <asp:TextBox ID="message" runat="server" placeholder="Your View" MaxLength="200" required="required" AutoCompleteType="Disabled" TextMode="MultiLine"></asp:TextBox>

                    <asp:Button ID="send" runat="server" Text="SEND" OnClick="send_Click" />
                </div>
            </div>
        </div>
        <asp:Panel runat="server" ID="panel" CssClass="DialogueBackground" Visible="false">
            <div class="Dialogue">
                <div class="popup">
                    <asp:Image ID="Image" runat="server" ImageUrl="~/Images/check.png" />

                    <p>Thanks For the Feedback</p>
                    <div class="clear10">
                    </div>
                    <div id="Success">
                        <asp:Button ID="can1" runat="server" Text="Close" Class="Successbtn hvr-pulse" OnClick="can1_Click" CausesValidation="False" UseSubmitBehavior="False" />
                    </div>
                    <div class="clr">
                    </div>
                </div>
            </div>
        </asp:Panel>

         <%--Footer section--%>
        <footer class="page-footer">
            <div class="container">
                <div class="row">
                    <div class="col l6 s12">
                        <h4 class="white-text">Keep In Touch</h4>
                        <p class="grey-text text-lighten-4">Subscribe To our Newsletters and get the right updates and right in your inbox</p>
                        <input type="email" placeholder="Subscribe" style="color: #fff" />

                    </div>
                    <div class="col l4 offset-l2 s12">
                        <h4 class="white-text">Can we help?</h4>
                        <ul>
                            <li><a class="grey-text text-lighten-3" href="#!">Feedback</a></li>
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
