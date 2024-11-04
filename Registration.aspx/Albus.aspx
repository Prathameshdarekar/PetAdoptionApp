<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Albus.aspx.cs" Inherits="YourNamespace.Albus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Albus</title>
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

        img{
            margin-left: 63px;
        }
    </style>
</head>
<body>
    <div class="text-content1">
        <h1>Albus</h1>
        <hr class="separator" />
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Pet Name: Albus</h2>
                    <br />
                    <h5>
                        <pre style="color:red; font-size:larger">Gender: Male              Vaccinated: Yes
Age: Two years old        Size: Small
Breed: Bichon x Poodle</pre>
                    </h5>
                    <p>Albus has been in his current home since he was a tiny puppy, but he isn't enjoying living with young children.</p>
                    <p>Albus is full of energy and fun - he needs an adult only active and experienced home. Any visiting children will need to be aged 14+, calm and know how to behave around a dogs (understand signals etc.).</p>
                    <p>He has never lived with any other animal, but is fine, when he meets dogs on a walk, but sometimes a little too playful. But we feel he would be best as the only pet.</p>
                    <p>Confident Albus has done his training classes, he is good on his lead, has good recall and travels well in the car. He is also good in the home, house-trained, can be left for a for short periods.</p>
                    <p>Please note that Albus can be a little nervous of strangers and needs time to gain trust.  He gives clear signals of when he is uncomfortable, but has never bitten m- but once he knows you, he shows what a lovely boy he is and just wants cuddles.</p>
                    <p>If you meet the criteria to offer cute Albus a home, please apply ASAP.</p>
                    <a href="AdoptionApplication.aspx" class="btn btn-primary">Enquire Now</a>
                </div>

                <div class="col-md-6">
                    <img src="images/adopt1.jpg" alt="Pawsitive Adoptions Image" />
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
