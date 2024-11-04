<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Volunteering.aspx.cs" Inherits="YourNamespace.Volunteering" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Volunteering at Warrington Animal Welfare</title>
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

        /*.container {
            width: 100%;
            text-align: center;
        }

        .content {
            max-width: 500px;
            margin-right: 71px;
        }

        .buttons {
            margin-top: 20px;
            text-align: center;
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
        }

            .button:hover {
                background-color: #0056b3;
            }

        .info {
            padding: 20px;
            margin: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
        }

            .info h2 {
                text-align: center;
            }

            .info p {
                text-align: left;
                font-size: 16px;
            }

        .image-container {
            float: right;
            width: 50%;
            text-align: center;
        }

            .image-container img {
                max-width: 100%;
                height: auto;
                border-radius: 5px;
            }*/

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
        }

        .footer-content {
            text-align: center;
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
                width: 95%;
                max-width: 100%;
                height: auto;
                display: block;
            }

        .text-content {
            width: 80%; 
            padding: 20px;
        }

        .text-content1 h1 {
            color: #007bff;
            margin-bottom: 10px;
            margin-left: 378px;
        }

        .separator {
            width: 100%;
            height: 1px;
            background-color: #ccc;
            margin: 20px 0;
        }

        .regbtn {
            margin-bottom: 20px;
            /*height: 40px;*/
            margin-left: 220px;
            /*background-color: blue;*/
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <ul class="navbar-nav">
                <%--<li><a href="Home.aspx""><img src="images/husky.jpg" style="height:30px; width:30px; padding-right:730px;"</a></li>--%>
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
        <h1>Volunteering at Pawsitive Adoption</h1>
        <hr class="separator" />
    </div>
    <div class="container">
        <div class="text-content">

            <h2>Volunteering at Pawsitive Adoption</h2>
            <p>Volunteers are the life-blood of charities like Pawsitive Adoption, there are lots of roles at Pawsitive Adoption that we need volunteers to fill.</p>
            <p>Complete the ‘Volunteer Application’ form.</p>
            <p>Pawsitive Adoption could not continue to run and deliver our positive outcomes without good, reliable, committed and enthusiastic volunteers.</p>



            <h2>Volunteer Eligibility</h2>
            <p>
                Volunteers must be aged 18+ and able to work unsupervised, understand processes and follow instructions.
            Unfortunately we are not able to support individuals or groups who require supervision or care and are not able to work unsupervised.  Volunteers must be able to understand issues in regards their own and other people’s health and safety in regards to handling animals, the use of cleaning chemicals and general on site safety. You will be required to provide a reference, this can be an employer/ex-employer or a person of good standing, but not a family member.  Applications will not be continued without a reference.
            </p>
        </div>
        <div class="image-content">
            <img src="images/volunteer.jpg" alt="Volunteering Image" />
        </div>
    </div>
    <div>
        <form id="form1" runat="server" class="regbtn">
            <asp:Button ID="btnRegister" Text="Register" runat="server" PostBackUrl="~/VolunteerApplication.aspx" CssClass="btn btn-primary bg-primary" Width="200px" Height="40" BackColor="blue" Font-Size="25px" />
        </form>
    </div>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 My Website. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
