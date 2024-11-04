<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="YourNamespace.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
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
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-primary {
            background-color: #007bff;
        }

        
        .error-message {
            color: red;
            margin-top: 10px;
        }

        .chkAgree {
            display: -webkit-inline-box;
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
                <%--<li><a href="Home.aspx""><img src="images/husky.jpg" style="height:30px; width:30px; padding-right:730px;"/></a></li>--%>
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="About.aspx">About</a></li>
                <li><a href="Login.aspx">Login</a></li>
                <li><a href="#">Register</a></li>
                <li><a href="Contact.aspx">Contact</a></li>
                <li><a href="Volunteering.aspx">Volunteering</a></li> 
            </ul>
        </nav>
    </header>
    <div class="container">
        <h2>User Registration</h2>
        <form runat="server">
            <div class="form-group">
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="ddlGender">Gender:</label>
                <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="chkAgree">
                <label for="chkAgree">I agree to the <a href="TermsOfService.aspx" target="_blank">Terms of Service</a> and <a href="#" target="_blank">Privacy Policy</a>.</label>
                <asp:CheckBox ID="chkAgree" runat="server" />
            </div>
            <br /><br />
            <asp:Button ID="btnRegister" Text="Register" OnClick="btnRegister_Click" runat="server" CssClass="btn btn-primary" Width="272px" />
            <asp:Label ID="lblErrorMessage" runat="server" CssClass="error-message" Text=""></asp:Label>
        </form>
    </div>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 PawsitiveAdoptions. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>