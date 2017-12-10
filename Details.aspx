<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Details</title>
    <link href="../css/materialize.min.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="../font-awesome-4.5.0/css/font-awesome.css" rel="stylesheet" />
    <link href="css/hover.css" rel="stylesheet" />
    <link href="../css/normalize.css" rel="stylesheet" />
    <link href="../Images/Logo/electronica.png" rel="icon" />
</head>
<body>
    <form id="form" runat="server">
        <asp:ScriptManager ID="Script" runat="server">
                    </asp:ScriptManager>
        <asp:UpdatePanel ID="Update" runat="server">
             <ContentTemplate>
        <nav>
            <div class="container">
                <div class="nav-wrapper">
                    <a href="#!" class="brand-logo">
                        <img src="../Images/Logo/electronica.png" />
                        <span class="title">Electronica</span></a>
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons mdi-navigation-menu"></i></a>
                    <div id="navigation">
                        <ul class="right hide-on-med-and-down">
                            <li><a href="Home.aspx">Home</a></li>
                            <li><a class="dropdown-button active" href="#!" data-activates="dropdown1">Products</a></li>
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
                                    <a href="Products/cart.aspx" id="count"><span>0</span></a>
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
                    <li><a href="Products/washing meachines.aspx">washine-Machines</a></li>
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
                <a href="/">Account Details</a>
                <a href="../Login.aspx">Logout</a>
            </div>
        </div>
        <%--userprofile drop down --%>
        <div id="mobile-side-users">
            <div id="mobile-users" class="dropdown-content">
                <asp:Label ID="mobileusername" runat="server" Text="Welcome"></asp:Label>
                <a href="/">Account Details</a>
                <a href="Login.aspx">Logout</a>
            </div>
        </div>
        <%-- Retriving Products from Database --%>
        <% if (pro != null)
            {%>
        <div class="container">
            <div class="details">
                <div class="row">
                    <div class="col s12 m12 l3">
                        <div class="card">
                            <div class="card-image wow bounceIn">
                                <img src="<%=pro.ImageSource%>" alt="<%=pro.ProductName%>" />
                                <h3><%=pro.ProductName %></h3>
                                    <h3><span class="naira">N</span><%=String.Format("{0:c0}", pro.ProductPrice)%></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col s12 m12 l9">
                        <div class=" wrap card">
                            <div class="row">
                                <div class="col s12 m6 l6">
                                 <div class="details wow slideInLeft">
                                <h5>Product Details</h5>
                                <h1><%=pro.productDetails %></h1>
                            </div> 
                                </div>
                                <div class="col s12 m6 l6">
                                    <div class="single-details center-align wow slideInRight">
                                        <a href="Aboutus.aspx">Our Delivery Policy</a>
                                        <span>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                                        <a href="Aboutus.aspx">Our Return Policy</a>
                                        <div class="divider"></div>
                                        <h5>*AVALABILITY : In stock</h5>
                                        <div class="divider"></div>
                                        <div class="details-add-to-cart">
                                             <a href='<%="Details.aspx?name=" + pro.ID %>' class="cont-shop add-to-bag hvr-hang" onclick="Materialize.toast('Item added to cart', 4000,'rounded')">Add to cart<i class="fa fa-shopping-cart"></i></a>

                                  </div>
                                        <div class="clearfix checkout">
                                            <a class="checkout-button hvr-hang" href="Products/Tv.aspx">CONTINUE SHOPPING <i class="fa fa-recycle"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col s12 m6 l12 rel-card">

                        <div class="card z-depth-0">
                            <h5>We Recommend</h5>
                            <div class="divider"></div>
                            <% foreach (var item in recpro)
                                { %>
                            <ul class="rel-image wow slideInDown">
                                 <li>
                                    
                                <a href="Products/Tv.aspx ">
                                    <img src="<%=item.ImageSource %>" alt="<%=item.ProductName %>"/></a></li>
                                <li>
                                    <h4><%=item.ProductName %></h4>
                                </li>
                                <li>
                                    <div class="current"><span class="naira">N</span><%=String.Format("{0:c0}", item.ProductPrice)%></div>
                                </li>
                            </ul>

                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%} %>
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


        <script src="js/jquery.min.js"></script>
        <script src="js/materialize.min.js" type="text/javascript"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <script src="js/wow.js"></script>
        <script src="js/modernizr.js"></script>
           </ContentTemplate>
            </asp:UpdatePanel> 
    </form>
</body>
</html>