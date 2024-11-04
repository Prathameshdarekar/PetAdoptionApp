<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="YourNamespace.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
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
        }

        nav {
            text-align: right;
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
            width: 100%;
            /*margin: 20px auto;
            */ text-align: center;
        }

            .container h1 {
                font-size: 36px;
                /* margin-bottom: 20px;
               */ padding-right: 54px;
            }

        /*.container p {
                font-size: 18px;
                line-height: 1.5;
            }*/
        /*body {
            background-image: url('images/missionmangal.jfif');
            background-size: cover;*/ /* This ensures that the image covers the entire background */
        /*background-repeat: no-repeat;*/ /* Prevents the image from repeating */
        /*}*/
        body {
            background-image: url('images/dog.jpg_1.jpg');
            background-size: 100% 600px;
            background-repeat: no-repeat;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            /*margin-top: 148px;*/
        }

        .footer-content {
            text-align: center;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: end;
            align-items: center;
            height: 79vh;
        }

        .content {
            max-width: 500px;
            /*text-align: right; */
            /*margin-top: 79px;*/
            margin-right: 71px;
        }

        .buttons {
            margin-top: 20px;
            text-align: center;
            margin-left: -36px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin-right: 10px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            margin: 28px;
            margin-top: 0px;
        }

            .button:hover {
                background-color: #0056b3;
            }



        .navbar ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .navbar li {
            display: inline-block;
            position: relative;
        }

        .navbar a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: black;
        }

        .navbar ul ul {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .navbar ul ul li {
                display: block;
            }

        nav ul {
            padding-right: 30px;
        }
        .dropdown-menu{
            display:contents;
        }

    </style>
    <%-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>--%>
</head>
<body>
    <header>
        <nav>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <%--<li><a href="Home.aspx""><img src="images/husky.jpg" style="height:30px; width:30px; padding-right:730px;"</a></li>--%>
                    <li><a href="#">Home</a></li>
                    <li><a href="About.aspx">About</a></li>
                    <li><a href="Login.aspx">Login</a></li>
                    <li><a href="Registration.aspx">Register</a></li>
                    <li><a href="Contact.aspx">Contact</a></li>
                    <li><a href="Volunteering.aspx">Volunteering</a></li>
                   <%-- <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" id="adviceSubmenu">Advice</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Find a Do</a></li>
                            <li><a class="dropdown-item" href="#">Fibd a Cat</a></li>
                            <li><a class="dropdown-item" href="#">A third link</a></li>
                        </ul>
                    </li>--%>
                </ul>
            </div>
        </nav>
    </header>
    <div class="container">
        <div class="content">
            <h1>How can you help?</h1>
            <h3 style="font-size:16px">
                <p>
                    Your support through adoption or donation can make a tremendous
difference in the lives of these animals. Please consider adoption or
donating today and become a hero to our animals in need.
                </p>
            </h3>

            <div class="buttons">
                <div class="buttons">
                    <a href="AdoptionInfo.aspx" target="_blank" class="button ms-3">Adoption</a>
                    <a href="Donation.aspx" target="_blank" class="button">Donation</a>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 PawsitiveAdoptions. All rights reserved.</p>
        </div>
    </footer>
    <%--<script>
        function toggleSubmenu() {
            var submenu = document.getElementById("adviceSubmenu");
            if (submenu.style.display === "block") {
                submenu.style.display = "none";
            } else {
                submenu.style.display = "block";
                var adviceDropdown = document.getElementById("adviceDropdown");
                submenu.style.left = "0";
                submenu.style.top = adviceDropdown.offsetHeight + "px";
            }
        }
    </script>--%>


</body>
</html>
