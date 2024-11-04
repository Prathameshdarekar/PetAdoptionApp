<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bear.aspx.cs" Inherits="YourNamespace.Bear" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bear</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
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
        <h1>Bear</h1>
        <hr class="separator" />
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Pet Name: Bear</h2>
                    <br />
                    <h5>
                        <pre style="color: red; font-size: larger">Gender: Male              Vaccinated: Yes
Age: 4 years old        Size: XL
Breed: Spanish Mastiff</pre>
                    </h5>
                    <p>Poor Bear is still looking for his forever home, he has been in and out of rescue since he was born in Spain.  He was originally rehomed and was very happy, but sadly the couple split, and neither were able to take him.</p>
                    <p>Bear is a fabulous XL dog who ideally needs a quiet rural home or a home where there is enough room for him to stretch his long limbs and lots of rural areas close by to walk him.  Bear will pull on the lead especially, if he sees a squirrel or a cat - so his new family need to be strong and active.</p>
                    <p>Bear would prefer a patient, adult, large breed experienced only home, where he is the only pet.</p>
                    <p>Bear is ok with dogs he meets and loves playing with our other large rescue, Orla, but can be dominant in a home hence the reason he needs to be the only pet.</p>
                    <p>Bear is ok with dogs he meets and loves playing with our other large rescue, Orla, but can be dominant in a home hence the reason he needs to be the only pet.</p>
                    <p>We have tried Bear in a number of traditional domestic settings but it hasn't worked out, but despite this, this poor boy needs a chance of stability.</p>
                    <p>If you are interested or just want to discuss and find out more please complete the form.</p>
                    <a href="AdoptionApplication.aspx" class="btn btn-primary">Enquire Now</a>
                </div>

                <div class="col-md-6">
                    <img src="images/adopt3.jpg" alt="Pawsitive Adoptions Image" />
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
