<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdoptionInfo.aspx.cs" Inherits="YourNamespace.AdoptionInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adoption Information</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
            background-color: #f5f5f5;
            background-color: lightsteelblue;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 50px;
            text-align: center;
            margin-left: 27px;
        }

        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            grid-gap: 20px;
            justify-items: center;
            align-items: center;
            margin-left: 101px;
        }

        .card {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            cursor: pointer;
        }

            .card img {
                max-width: 100%;
                height: auto;
                transition: transform 0.3s ease;
            }

        .card-title,
        .card-text {
            display: none;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="card-grid">
            <div class="card">
                <img src="images/adopt1.jpg" alt="Card Image"/>
                <div class="card-body">
                    <h5 class="card-title">Albus</h5>
                    <pre class="card-text">Gender: Male
Age: Two years old</pre>
                    <p class="card-text">Albus has been in his current home since he was a tiny...</p>
                    <%--<button class="btn btn-primary card-button">More Info</button>--%>
                    <a href="Albus.aspx" class="btn btn-primary">More Info</a>
                </div>
            </div>

            <div class="card">
                <img src="images/adopt2.jpg" alt="Card Image"/>
                <div class="card-body">
                    <h5 class="card-title">Vimto</h5>
                    <pre class="card-text">Gender: Male
Age: 7 years old</pre>
                    <p class="card-text">Vimto loves men! Lovely boy Vimto can be very nervous when...</p>
                    <a href="Vimto.aspx" class="btn btn-primary">More Info</a>
                </div>
            </div>

            <div class="card">
                <img src="images/adopt3.jpg" alt="Card Image"/>
                <div class="card-body">
                    <h5 class="card-title">Bear</h5>
                    <pre class="card-text">Gender: Male
Age: 4 years old</pre>
                    <p class="card-text">Poor Bear is still looking for his forever home, he has...</p>
                    <a href="Bear.aspx" class="btn btn-primary">More Info</a>
                </div>
            </div>

            <div class="card">
                <img src="images/adopt4.jpg" alt="Card Image"/>
                <div class="card-body">
                    <h5 class="card-title">Orla</h5>
                    <pre class="card-text">Gender: Female
Age: 4 years</pre>
                    <p class="card-text">Orla is a big girl, but that is just even more to love! ...</p>
                    <a href="Orla.aspx" class="btn btn-primary">More Info</a>
                </div>
            </div>

            <div class="card">
                <img src="images/adopt5.jpg" alt="Card Image"/>
                <div class="card-body">
                    <h5 class="card-title">Honey</h5>
                    <pre class="card-text">Gender: Female
Age: 2 years</pre>
                    <p class="card-text">Beautiful Honey is looking for a new home through no fault...</p>
                   <a href="Honey.aspx" class="btn btn-primary">More Info</a>
                </div>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            // Toggle card title and text on image click
            $('.card img').click(function () {
                var cardBody = $(this).siblings('.card-body');
                cardBody.find('.card-title, .card-text').toggle();
            });
        });

        //// Show more info modal on button click
        //$('.card-button').click(function () {
        //    // Get the card details and show them in a modal
        //    var cardBody = $(this).closest('.card-body');
        //    var title = cardBody.find('.card-title').text();
        //    var info = cardBody.find('.card-text').text();
        //    // Modify this part to show the modal with the information
        //    alert(title + '\n' + info);
        //});
    </script>

</body>
</html>
