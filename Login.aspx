<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width" />
    <title>Ectronica Login</title>
    <link href="css/materialize.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/preloader.css" rel="stylesheet" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="font-awesome-4.5.0/css/font-awesome.css" rel="stylesheet" />
    <link href="css/normalize.css" rel="stylesheet" />
    <link href="Images/Logo/electronica.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- End Page Loading -->
        <%-- Navigation --%>
        <nav>
            <div class="container">
                <div class="nav-wrapper">
                    <a href="#!" class="brand-logo">
                        <img src="Images/Logo/electronica.png" />
                        <span class="title">Electronica</span>
                    </a>
                    <%-- For mobile display --%>
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons mdi-navigation-menu"></i></a>
                    <div class="right hide-on-med-and-down">
                        <span>Dont have an Account?</span>
                        <a id="Register" href="#modal1" class="modal-trigger">Register</a>
                    </div>
                    <div class="side-nav center" id="mobile-demo">
                        <span>Dont have an Account?</span>
                        <a id="MobileRegister" href="#modal1" class="modal-trigger">Register</a>
                    </div>
                </div>
            </div>
        </nav>
        <div class="strips"></div>

        <%-- modal --%>
        <div id="modal1" class="modal">
            <div class="modal-content">
                <h4>SIGNUP TO GET STARTED</h4>

                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <%-- Registration form section --%>
                        <div class="row">
                            <div class="col s12">
                                <div class="row">
                                    <div class="input-field col s6">
                                        <asp:TextBox ID="first_name" runat="server" type="text" class="validate" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="Firstnamevalid" runat="server" ErrorMessage="please enter your first name" ControlToValidate="first_name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <label for="first_name">First Name</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <asp:TextBox ID="last_name" runat="server" type="text" class="validate" AutoCompleteType="Disabled"></asp:TextBox>
                                        <label for="last_name">Last Name</label>
                                        <asp:RequiredFieldValidator ID="lastnamevalid" runat="server" ErrorMessage="please enter your last name" ControlToValidate="last_name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="input-field col s6">
                                        <asp:TextBox ID="user_name" runat="server" type="text" class="validate" AutoCompleteType="Disabled"></asp:TextBox>
                                        <label for="User_name">UserName</label>
                                        <asp:RequiredFieldValidator ID="usernamevalid" runat="server" ErrorMessage="please enter your user name" ControlToValidate="user_name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="input-field col s6">
                                        <asp:TextBox ID="password" runat="server" type="password" class="validate" AutoCompleteType="Disabled"></asp:TextBox>
                                        <label for="password">Password</label>
                                        <asp:RequiredFieldValidator ID="passwordvalid" runat="server" ErrorMessage="please enter your password name" ControlToValidate="password" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="input-field col s6">
                                        <asp:TextBox ID="confirm_password" runat="server" type="password" class="validate" AutoCompleteType="Disabled"></asp:TextBox>
                                        <label for="password">confirm_password</label>
                                        <asp:RequiredFieldValidator ID="conpasswordvalid" runat="server" ErrorMessage="please retype password" ControlToValidate="confirm_password" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="Comparepassword" runat="server" ErrorMessage="**Passwords do not match**" ControlToCompare="password" ControlToValidate="confirm_password"></asp:CompareValidator>
                                    </div>

                                    <div class="input-field col s6">
                                        <asp:TextBox ID="Email" runat="server" type="email" class="validate" AutoCompleteType="Disabled"></asp:TextBox>
                                        <label for="email" data-error="wrong" data-success="right">Email</label>
                                        <label for="Email">Email ID</label>

                                    </div>
                                    <div class="input-field col s6">
                                        <asp:TextBox ID="Address" runat="server" type="text" class="validate" AutoCompleteType="Disabled"></asp:TextBox>
                                        <label for="Address">Adress</label>
                                        <asp:RequiredFieldValidator ID="Addressvalid" runat="server" ErrorMessage="please enter your address" ControlToValidate="Address" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="input-field col s6">
                                        <asp:TextBox ID="Mobile_Number" runat="server" type="number" class="validate" AutoCompleteType="Disabled"></asp:TextBox>
                                        <label for="Mobile Number">Mobile Number</label>
                                        <asp:RequiredFieldValidator ID="MobileNumber" runat="server" ErrorMessage="please enter your mobile number" ControlToValidate="Mobile_Number" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                
                                <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False" ForeColor="#CC0000" Font-Size="20px"></asp:Label>
                                <asp:LinkButton ID="signup" type="submit" runat="server" Text="SiGNUP" ToolTip="register" OnClick="signup_Click" />
                                <div id="socailicon">
                                    <a href="http://facebook.com/swift_parcel">
                                        <img src="Images/facebook2.png" alt="facebook page">
                                    </a>
                                    <a href="http://twiiter.com/swift_parcel">
                                        <img src="Images/twitter2.png" alt="twitter page">
                                    </a>
                                    <a href="http://linkedin.com/u/swift_parcel">
                                        <img src="Images/linkedin2.png" alt="linkedin page">
                                    </a>
                                </div>
                            </div>

                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>

        <%-- Overlay / Login form section --%>
        <div class="overlay">
            <div class="parallax-container">
                <div class="parallax">
                    <img src="Images/hh.jpg" />
                      </div>
                   <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <div class="container">
                            <div id="loginform">
                                <div class="card white-1">
                                    <h1>LOGIN TO YOUR ACCOUNT</h1>
                                    <div class="input-field col l6">
                                        <asp:TextBox ID="username" runat="server" type="text" AutoCompleteType="Disabled"></asp:TextBox>
                                        <label for="Username">Enter your username</label>
                                    </div>
                                    <div class="input-field col l6">
                                        <asp:TextBox ID="Loginpassword" runat="server" type="password"></asp:TextBox>
                                        <label for="Loginpassword">Enter password</label>
                                    </div>
                                    <asp:CheckBox ID="rpass" runat="server" />
                                    <label for="rpass">Remember Password</label>
                                    <div class="forgotpass">
                                        <a href="!/">Forgot passsword?</a>
                                    </div>
                                    <div class="clearfix">
                                        <asp:Label ID="lblerror" runat="server" class="error" Text="Label" Visible="False"></asp:Label>
                                        <asp:Button ID="Signin" runat="server" Text="Login" class="btn" type="submit" ToolTip="signin" OnClick="Signin_Click" CausesValidation="False" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <%-- welcome title --%>
                <div class="text2 col s12 hide-on-small-only">
                    <ul class="texts wow flipInX">
                        <li class="typed">WELCOME TO ELECTRONICA</li>
                        <li>THE NO1. ONLINE ELECTRONIC STORE</li>
                    </ul>
                </div>
                <div class="platform">
                    <img src="Images/1.png" />
                    <img src="Images/2.png" />
                </div>

            </div>
        </div>
        <%-- Content section--%>
        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="col s12 m4 wow bounceInLeft">
                        <div class="icon-block">
                            <h2 class="center pink-text"><i class="fa fa-flash"></i></h2>
                            <h5 class="center">Quick Delive</h5>
                            <p class="light">We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.</p>
                        </div>
                    </div>
                    <div class="col s12 m4 wow bounceInUp">
                        <div class="icon-block">
                            <h2 class="center pink-text"><i class="fa fa-bus"></i></h2>
                            <h5 class="center">Free Delivery </h5>

                            <p class="light">
                                By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. Additionally, a single underlying responsive system across all platforms allow for a more unified user experience.  By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. 
  
                            </p>
                        </div>
                    </div>
                    <div class="col s12 m4 wow bounceInRight">
                        <div class="icon-block">
                            <h2 class="center pink-text"><i class="fa fa-lock"></i></h2>
                            <h5 class="center">Top Notch Security</h5>

                            <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%-- Brands Section --%>
        <div id="Brand">

            <h4>OUR TOP BRANDS</h4>
            <div class="container">
                <div class="col s12 wow flipInY">
                    <div class="row">
                        <div class="col s4 m6 l2">
                            <img src="Images/Brands/01.png" class="responsive-img" />
                        </div>
                        <div class="col s4 m6 l2">
                            <img src="Images/Brands/02.png" class="responsive-img" />
                        </div>
                        <div class="col s4 m6 l2">
                            <img src="Images/Brands/03.png" class="responsive-img" />
                        </div>
                        <div class="col s4 m6 l2">
                            <img src="Images/Brands/04.png" class="responsive-imgs" />
                        </div>
                        <div class="col s4 m6 l2">
                            <img src="Images/Brands/05.png" class="responsive-img" />
                        </div>
                        <div class="col s4 m6 l2">
                            <img src="Images/Brands/06.png" class="responsive-img" />
                        </div>
                    </div>
                </div>
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
        <script src="js/wow.js"></script>
        <script src="js/preloader.js"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <script src="js/typewriter.js"></script>
        <script src="js/typed.js"></script>
        <script src="js/modernizr.js"></script>
    </form>
</body>
</html>
