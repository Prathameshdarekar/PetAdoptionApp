<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orla.aspx.cs" Inherits="YourNamespace.Orla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orla</title>
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
        <h1>Orlo</h1>
        <hr class="separator" />
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Pet Name: Orlo</h2>
                    <br />
                    <h5>
                        <pre style="color:red; font-size:larger">Gender: female          Vaccinated: Yes
Age: 7 years old        Size: Medium
Breed: Spanish Mastiff</pre>
                    </h5>
                    <p>Cross</p>
                    <p>Orla is a big girl, but that is just even more to love!  She has been waiting for her forever home since 2021!</p>
                    <p>At only four years old and originally from a Spanish rescue, coming over as a puppy only to be rejected as she was too big and has then spent most of her young life in rescue and is one of our longest stay residents.</p>
                    <p>Spanish Mastiff Cross Orla was a little nervous when she arrived at Pawsitive adoption back in 2021 but now she is confident, playful, and very funny, she is so affectionate and loves cuddles.</p>
                    <p>Orla needs an active, rural home, or a home where there is enough room for her to stretch his long limbs and lots of rural areas close by to walk him.  A home with experience of large breeds and plenty of time to spend with her.</p>
                    <p>Orla can be a little unsure of new people, so her new family would need to be prepared to get to know her and have experience of nervousness.</p>
                    <p>Orla is good with dogs she meets, and loves playing with our other large Spanish rescue, <a href="Bear.aspx">Bear</a>.  She is well-behaved overall but can be strong willed at times, we feel in a home environment she can be dominant therefore, we feel she needs to be an only dog where there are no children under 16 (non-planned).</p>
                    <p>We have tried Orla in several traditional domestic settings, but it hasn't worked out, but despite this, this poor girl needs a chance of stability.</p>
                    <p>Orla just wants a home to call her own, if you are interested or just want to discuss and find out more, please complete the form.</p>
                    <a href="AdoptionApplication.aspx" class="btn btn-primary">Enquire Now</a>
                </div>

                <div class="col-md-6">
                    <img src="images/adopt4.jpg" alt="Pawsitive Adoptions Image" />
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