<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Honey.aspx.cs" Inherits="YourNamespace.Honey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Honey</title>
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
        <h1>Honey</h1>
        <hr class="separator" />
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Pet Name: Honey</h2>
                    <br />
                    <h5>
                        <pre style="color:red; font-size:larger">Gender: female          Vaccinated: Yes
Age: 2 years old        Size: Large
Breed: Golden Retriever</pre>
                    </h5>
                    <p>Beautiful Honey is looking for a new home through no fault of her own.</p>
                    <p>Loving Honey is good with other dogs, does not want to live with cats. She needs a quiet, adult home (or with calm children 12+).</p>
                    <p>Honey needs an active home where she has company for most of the day, ideally with breed (or similar) experience.</p>
                    <p>Honey walks well on the lead however, her recall and some basic training needs a little work.</p>
                    <a href="AdoptionApplication.aspx" class="btn btn-primary">Enquire Now</a>
                </div>

                <div class="col-md-6">
                    <img src="images/adopt5.jpg" alt="Pawsitive Adoptions Image" />
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
