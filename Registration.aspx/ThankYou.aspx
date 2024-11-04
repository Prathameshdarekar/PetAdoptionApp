<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="YourNamespace.ThankYou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank You!</title>
    <style>
        body {
            background-color: lightblue;
        }


        .container {
            display: flex;
        }

        .text-content1 {
            flex: 1;
            padding: 20px;
            margin-top: 113px;
            margin-left: 90px;
            font-size: 25px;
        }

        .image-content h1 {
            color: #007bff;
            margin-bottom: 10px;
            margin-left: 500px;
        }

        .image-content {
            flex: 1;
            padding: 20px;
        }

            .image-content img {
                width: 100%;
                max-width: 100%;
                height: 531px;
                display: block;
                margin-left: -109px;
            }

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
            margin-top: 148px;
        }

        .footer-content {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="text-content1" runat="server">
                <pre><h2>Thank you
for your donation!</h2></pre>
                <pre>You have just made a 
dog very happy!</pre>
                <div>
                    <asp:Button ID="btnBackToHome" runat="server" Text="Back to Home" OnClick="btnBackToHome_Click" CssClass="btn btn-primary bg-primary" Width="229px" Height="34px" BackColor="blue" Font-Size="20px" />
                    <br />
                    <br />
                    <asp:Button ID="btnMakeNewDonation" runat="server" Text="Make a New Donation" OnClick="btnMakeNewDonation_Click" CssClass="btn btn-primary bg-primary" Width="229px" Height="34px" BackColor="blue" Font-Size="20px" />
                </div>
            </div>
            <div class="image-content">
                <!-- Right side image -->
                <img src="images/thank you.jpg" alt="Thank You Image" />
            </div>
        </div>
        <%--<div>
            <!-- Left side content -->
        </div>--%>
    </form>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 PawsitiveAdoptions. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
