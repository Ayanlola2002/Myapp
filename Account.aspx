<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Account" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Account</title>
    <link href="css/materialize.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/hover.css" rel="stylesheet" media="all" />
    <link href="font-awesome-4.5.0/css/font-awesome.css" rel="stylesheet" />
    <link href="css/normalize.css" rel="stylesheet" />
    <link href="Images/Logo/electronica.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
        <nav>
            <div class="container">
                <div class="nav-wrapper">
                    <a href="#!" class="brand-logo">
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
                                <a class="" id="count"><span>0</span></a>
                            </i>
                        </div>
                    </div>
                    <%-- mobile --%>
                    <ul class="side-nav" id="mobile-demo">
                        <li><a href="Index.aspx">Home</a></li>
                        <li><a class="dropdown-button" href="#!" data-activates="dropdown">Products</a></li>
                        <li><a href="About.aspx">About</a></li>
                        <li><a href="Contact.aspx">Contact</a></li>
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
            <%--userprofile drop down --%>
            <div id="usersdrop" class="dropdown-content">
                <a href="Account.aspx">Account Details</a>
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
        <%--userprofile drop down --%>
        <div id="mobile-side-users">
            <div id="mobile-users" class="dropdown-content">
                <asp:Label ID="mobileusername" runat="server" Text="Welcome"></asp:Label>
                <a href="/">Account Details</a>
                <a href="Login.aspx">Logout</a>
            </div>
        </div>

        <%-- User Account Profile --%>

        <div class="tab-layout container">
            <ul class="tabs z-depth-1">

                <li class="tab col s3"><a href="#Account">Account Settings</a></li>

            </ul>
            <div class="bg-layout">


                <div id="Account" class="col s12 container">
                    <div class="row">

                        <div class="col s12 m6 l8 Account-form">
                            <div class="card z-depth-0">
                                <div class="card-content">
                                    <h5>Edit Information</h5>

                                    <div class="row">
                                        <div class="col s12">
                                            <div class="row">
                                                <div class="input-field col s12 m6 l6">
                                                    <asp:TextBox ID="user_name" runat="server" type="text" class="validate" required="true"></asp:TextBox>
                                                    <label for="User_name">UserName</label>

                                                </div>
                                                <div class="input-field col s12 m6 l6">
                                                    <asp:TextBox ID="current_password" runat="server" type="password" class="validate" required="true"></asp:TextBox>
                                                    <label for="password">current passowrd</label>

                                                </div>
                                                <div class="input-field col s12 m6 l6">
                                                    <asp:TextBox ID="New_Password" runat="server" type="password" class="validate" required="true"></asp:TextBox>
                                                    <label for="password">New password</label>

                                                </div>
                                                <div class="input-field col s12 m6 l6">
                                                    <asp:TextBox ID="confirm_password" runat="server" type="password" class="validate" required="true"></asp:TextBox>
                                                    <label for="password">Confirm_New_password</label>

                                                </div>
                                                <div class="clearfix"></div>
                                                <asp:Label ID="lblerr" runat="server" Text="label" Visible="false" ForeColor="#CC0000" Font-Size="15px" CssClass="right"></asp:Label>
                                                <asp:Label ID="Label1" runat="server" Text="label" Visible="false" ForeColor="#CC0000" Font-Size="15px" CssClass="right"></asp:Label>
                                                <asp:Button runat="server" Text="Change password" class="hvr-pulse-grow" ID="Chbtn" OnClick="Chbtn_Click"/>
                                            </div>
                                        </div>
                                        <div class="divider"></div>

                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>

                </div>


            </div>
        </div>


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
        <script src="js/main.js" type="text/javascript"></script>
        <script src="js/modernizr.js"></script>

    </form>
</body>
</html>
