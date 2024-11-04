<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vimto.aspx.cs" Inherits="YourNamespace.Vimto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vimto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        .text-content1 h1 {
            color: #007bff;
            margin-bottom: 10px;
            margin-left: 629px;
        }

        .separator {
            width: 100%;
            height: 1px;
            background-color: #ccc;
            margin: 20px 0;
        }

        /* body {
        font-family: 'Open Sans', sans-serif;
        font-size: 16px;
        line-height: 1.6;
        font-weight: 400;
        color: #808080;
    }*/

        .label {
            text-align: center;
            white-space: nowrap;
            vertical-align: baseline;
            border-radius: 0.25em;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
            margin-top: 5px;
        }

        .footer-content {
            text-align: center;
        }

        img {
            margin-left: 63px;
            width: 500px;
        }
    </style>
</head>
<body>
        <div class="text-content1">
        <h1>Vimto</h1>
        <hr class="separator" />
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Pet Name: Vimto</h2>
                    <br />
                    <h5>
                        <pre style="color:red; font-size:larger">Gender: Male              Vaccinated: Yes
Age: 7 years old        Size: Medium
Breed: Cockapoo</pre>
                    </h5>
                    <p>Vimto loves men!</p>
                    <p>Lovely boy Vimto can be very nervous when meeting new people but friendly and relaxed once he gets to know you, however, he isn’t a fan of the ladies, so ideally, he needs a male only home.</p>
                    <p>Intelligent Vimto loves to play fetch and chase with his ball and fluffy squeaky toys.</p>
                    <p>We are looking for an adult only forever home for Vimto with no visiting children - Vimto would suit single person/quiet home.</p>
                    <p>Vimto would suit an active fit retired person as he can be strong on the lead.</p>
                    <p>We have tried Vimto in a few homes, he has loved the men, but has a distrust of women, resulting in him being returned.</p>
                    <p>Vimto is good in the home and house trained.</p>
                    <p>Please don't keep him waiting any longer, apply today.</p>
                    <a href="AdoptionApplication.aspx" class="btn btn-primary">Enquire Now</a>
                </div>

                <div class="col-md-6">
                    <img src="images/adopt2.jpg" alt="Pawsitive Adoptions Image" />
                </div>
            </div>
        </div>
    </form>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 PawsitiveAdoptions. All rights reserved.</p>
        </div>
    </footer>
    <script>
        $(document).ready(function () {
            alert("Welcome to Albus's page!");
        });
    </script>
</body>
</html>
