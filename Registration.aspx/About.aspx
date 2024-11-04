<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="YourNamespace.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us - Warrington Animal Welfare</title>
    <style>
        body {
            background-color: lightblue;
        }

        .container {
            display: flex;
        }

        .text-content {
            flex: 1;
            padding: 20px;
        }

        .image-content {
            flex: 1;
            padding: 20px;
        }

            .image-content img {
                width: 100%;
                max-width: 100%;
                height: auto;
                display: block;
            }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            height: 25px;
            padding-bottom: 27px;
            margin-top: -8px;
            margin-left:-8px;
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

        .text-content {
            width: 80%;
            padding: 20px;
        }

        .text-content1 h1 {
            color: #007bff;
            margin-bottom: 10px;
            margin-left: 500px;
        }

        .separator {
            width: 100%;
            height: 1px;
            background-color: #ccc;
            margin: 20px 0;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
            margin-top: -17px;
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
               <%-- <li><a href="Home.aspx""><img src="images/husky.jpg" style="height:30px; width:30px; padding-right:763px;" /></a></li>--%>
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
        <h1>About Pawsitive Adoptions</h1>
        <hr class="separator" />
    </div>
    <div class="container">
        <div class="text-content">
            <%--<div class="text-content">
                <h1>About Pawsitive Adoptions</h1>
                <hr class="separator" />
            </div>--%>
            <h2>Helping Animals in Need - Pawsitive Adoptions</h2>
            <p>Welcome to Pawsitive Adoptions, a registered charity dedicated to the welfare of abandoned, abused, and unwanted domestic animals in our community.</p>

            <h2>About Us</h2>
            <p>At Pawsitive Adoptions, we believe that every pet deserves love, care, and a forever home. Our team is committed to providing compassionate care to all animals in need.</p>

            <h2>Our Mission</h2>
            <p><strong>Raise Awareness:</strong> We aim to educate the public about the importance of responsible pet ownership, including the benefits of neutering and microchipping.</p>
            <p><strong>Provide Support:</strong> We offer low-cost neutering services for pets belonging to owners on benefits or low income. By reducing the number of stray and unwanted pets, we strive to create a safer and more humane community.</p>

            <h2>Community Support</h2>
            <p>We actively engage with our local community to rescue, rehabilitate, and rehome animals in need. Our dedicated volunteers provide essential care, including food, shelter, love, medication, and socialization, to prepare pets for their forever homes.</p>

            <h2>Get Involved</h2>
            <p>Join us in making a difference in the lives of animals! Here are some ways you can get involved:</p>
            <ul>
                <li><strong><a href="AdoptionInfo.aspx">Adopt:</a></strong> Consider opening your heart and home to a pet in need. Visit our adoption center to meet our lovable animals awaiting their forever families.</li>
                <li><strong><a href="Donation.aspx">Donate:</a></strong> Your generous donations help us provide essential care and support to animals in need. Every contribution makes a difference.</li>
                <li><strong><a href="Volunteering.aspx">Volunteer:</a></strong> Become a part of our dedicated team of volunteers. Whether it's walking dogs, socializing cats, or assisting with administrative tasks, your time and skills are invaluable.</li>
            </ul>
            <p>Together, we can make a positive impact on the lives of animals in India and beyond. Thank you for supporting Pawsitive Adoptions!</p>
            <p>If there's anything that you'd like to know that isn’t covered on our website, please <a href="Contact.aspx"> contact us</a>.</p>
        </div>
        <div class="image-content">
            <img src="images/husky.png" alt="Pawsitive Adoptions Image" />
        </div>
    </div>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 PawsitiveAdoptions. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
