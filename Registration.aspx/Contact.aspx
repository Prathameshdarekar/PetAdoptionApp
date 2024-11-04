<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="YourNamespace.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: lightblue;
        }

        .container {
            width: 50%;
            margin: 0 auto;
            padding: 40px;
            border-radius: 10px;
            background-color: white;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        textarea {
            resize: vertical;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .ErrorMessage {
            color: red;
            margin-top: 10px;
            text-align: center;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        .footer-content {
            text-align: center;
        }

        #Contact {
            margin-left: 450px;
            margin-right: 329px;
            margin-top: 36px;
            border: 1px solid black;
            padding: 35px;
            padding-right: 57px;
            border-radius: 30px;
            background-color: white;
            margin-bottom: 27px;
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

        button {
            width: 378px;
            height: 35px;
            background-color: blue;
            border-radius: 27px;
        }

        .text-content1 h1 {
            color: #007bff;
            margin-bottom: 10px;
            margin-left: 415px;
        }

        .separator {
            width: 100%;
            height: 1px;
            background-color: #ccc;
            margin: 20px 0;
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
               <%-- <li><a href="Home.aspx""><img src="images/husky.jpg" style="height:30px; width:30px; padding-right:730px;"</a></li>--%>
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="About.aspx">About</a></li>
                <li><a href="Login.aspx">Login</a></li>
                <li><a href="Registration.aspx">Register</a></li>
                <li><a href="Contact.aspx">Contact</a></li>
                <li><a href="Volunteering.aspx">Volunteering</a></li>
            </ul>
        </nav>
    </header>
    <div class="text-content1">
        <h1>Contact Us at Pawsitive Adoptions</h1>
        <hr class="separator" />
    </div>
    <form runat="server">
        <div id="Contact">
            <h2>Contact Us</h2>
            <div>
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server" />
                <asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtName" ErrorMessage="Name is required" runat="server" />
            </div>
            <div>
                <label for="txtMobile">Mobile Number:</label>
                <asp:TextBox ID="txtMobile" runat="server" />
                <asp:RequiredFieldValidator ID="rfvMobile" ControlToValidate="txtMobile" ErrorMessage="Mobile Number is required" runat="server" />
            </div>
            <div>
                <label for="txtEmail">Your Email Address:</label>
                <asp:TextBox ID="txtEmail" runat="server" />
                <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="Email Address is required" runat="server" />
            </div>
            <div>
                <label for="txtSubject">Subject:</label>
                <asp:TextBox ID="txtSubject" runat="server" />
                <asp:RequiredFieldValidator ID="rfvSubject" ControlToValidate="txtSubject" ErrorMessage="Subject is required" runat="server" />
            </div>
            <div>
                <label for="txtMessage">Message:</label>
                <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server" />
                <asp:RequiredFieldValidator ID="rfvMessage" ControlToValidate="txtMessage" ErrorMessage="Message is required" runat="server" />
            </div>
            <div>
                <asp:Button ID="btnSubmit" Text="SEND MESSAGE" OnClick="btnSubmit_Click" runat="server" CssClass="btn btn-primary" Width="375px" />
            </div>
        </div>
    </form>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 PawsitiveAdoptions. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
