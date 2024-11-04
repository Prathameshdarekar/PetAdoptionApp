<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YourNamespace.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <style>
        
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: lightblue;
        }

        
        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            height: 25px;
            padding-bottom:27px
        }

        nav {
            text-align: right; 
            padding-top: 9px;
        }

            nav ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
            }

                nav ul li {
                    display: inline;
                    margin-right: 20px;
                }

                    nav ul li a {
                        color: #fff;
                        text-decoration: none;
                        transition: color 0.3s; 
                        font-size: 20px;
                    }

        .navbar-nav li a:hover {
            color: #ffd700; 
        }

        
        .container {
            width: 22%;
            margin: 20px auto;
            border: 1px solid black;
            padding: 40px;
            border-radius: 30px;
            background-color: white;
        }

        
        .form-group {
            margin-bottom: 15px;
            width: 250px;
        }

            .form-group label {
                display: block;
                margin-bottom: 5px;
            }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 18px;
            cursor: pointer;
            width: 272px;
        }

        .btn-primary {
            background-color: #007bff;
        }

        
        .error-message {
            color: red;
            margin-top: 10px;
        }

        .fbook {
            border: 1px solid black;
            border-radius: 18px;
            padding: 7px;
            width: 256px;
            background-color: skyblue;
            text-align: center;
        }

        .apple {
            border: 1px solid black;
            border-radius: 18px;
            padding: 7px;
            width: 256px;
            background-color: black;
            text-align: center;
            color: white;
        }

        #googleSignInButton {
            border: 1px solid black;
            border-radius: 18px;
            padding: 7px;
            width: 256px;
            background-color: black;
            text-align: center;
            color: white;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
        }

        .footer-content {
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <ul class="navbar-nav">
                <%-- <li>
                    <input class="form-control me-2" type="text" placeholder="Search" />
                    <button class="btn btn-primary" type="button">Search</button>
                </li>--%>
                <%--<li><a href="Home.aspx""><img src="images/husky.jpg" style="height:30px; width:30px; padding-right:730px;"</a></li>--%>
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="About.aspx">About</a></li>
                <li><a href="#">Login</a></li>
                <li><a href="Registration.aspx">Register</a></li>
                <li><a href="Contact.aspx">Contact</a></li>
                <li><a href="Volunteering.aspx">Volunteering</a></li> 
            </ul>
        </nav>
    </header>
    <div class="container">
        <h2>User Login</h2>
        <form runat="server">
            <div class="form-group">
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                <input type="checkbox" id="chkShowPassword" onclick="togglePassword()" />
                <br />
                <a href="#" onclick="showErrorMessage(); return false;">Forgot Password?</a>
                <asp:Label ID="lblErrorMessage" runat="server" CssClass="error-message" Text=""></asp:Label>
            </div>
            <asp:Button ID="btnLogin" Text="Login" OnClick="btnLogin_Click" runat="server" CssClass="btn btn-primary" />
            <br />
            <div style="text-align: center; margin-bottom: 10px;">
                <hr style="width: 40%; display: inline-block; margin-top: 20px;" />
                <span style="font-weight: bold; font-size: 14px; color: #888; margin: 0 10px;">OR</span>
                <hr style="width: 40%; display: inline-block; margin-top: 20px;" />
            </div>

            <div class="fbook">
                <a href="https://www.facebook.com/v13.0/dialog/oauth?client_id=YOUR_APP_ID&redirect_uri=YOUR_REDIRECT_URI&response_type=code&scope=email,user_gender,user_birthday" target="_blank">
                    <img src="images/facebooklogo.jfif" style="height: 19px" alt="Sign in with Facebook" />
                    Sign in with facebook
                </a>
            </div>
            <br />

            <div class="apple">
                <!-- Sign in with Apple button -->
                <%-- <button onclick="signInWithApple()">Sign in with Apple</button>--%>
                <a href="#" class="text-white" target="_blank">Sign in with Apple
                </a>
            </div>
            <br />

            <!-- Sign in with Google button -->
            <div id="googleSignInButton">Sign in with Googgle</div>

        </form>
    </div>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 PawsitiveAdoptions. All rights reserved.</p>
        </div>
    </footer>
    <script>
        function showErrorMessage() {
            var errorMessage = "Meri taraf mat dekhiye main aapki koi sahayata nahi kar paunga🙏";
            var lblErrorMessage = document.getElementById('<%= lblErrorMessage.ClientID %>');
            lblErrorMessage.innerHTML = errorMessage;
            lblErrorMessage.style.display = "block";
        }
        function togglePassword() {
            var passwordField = document.getElementById('<%= txtPassword.ClientID %>');
            if (passwordField.type === "password") {
                passwordField.type = "text";
            } else {
                passwordField.type = "password";
            }
        }
        function signInWithApple() {
            // Your Sign in with Apple integration code
        }

        // Load Google Sign-In button
        function renderGoogleSignInButton() {
            gapi.signin2.render('googleSignInButton', {
                'scope': 'email',
                'width': 240,
                'height': 50,
                'longtitle': true,
                'theme': 'light',
                'onsuccess': onSuccess,
                'onfailure': onFailure
            });
        }

        // Google Sign-In callback functions
        function onSuccess(googleUser) {
            // Handle successful Google Sign-In
        }

        function onFailure(error) {
            // Handle Google Sign-In failure
        }
    </script>
</body>
</html>
