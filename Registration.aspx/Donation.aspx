<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donation.aspx.cs" Inherits="YourNamespace.donation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donate to Rescue Dogs</title>
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

        .text-content1 h1 {
            color: #007bff;
            margin-bottom: 10px;
            margin-left: 307px;
        }

        .separator {
            width: 100%;
            height: 1px;
            background-color: #ccc;
            margin: 20px 0;
        }

        #form1 {
            margin-left: 500px;
            margin-right: 389px;
            margin-top: 36px;
            border: 1px solid black;
            padding: 35px;
            padding-right: 57px;
            border-radius: 30px;
            background-color: white;
            margin-bottom: 27px;
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
    <header>
        <nav>
            <ul class="navbar-nav">
                <%-- <li>
            <input class="form-control me-2" type="text" placeholder="Search" />
            <button class="btn btn-primary" type="button">Search</button>
        </li>--%>
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
        <h1>Help us save lives: donate to rescue dogs in need</h1>
        <hr class="separator" />
    </div>
    <form id="form1" runat="server">
        <div>
            <label for="ddlDonationAmount">Donation Amount:</label>
            <asp:DropDownList ID="ddlDonationAmount" runat="server">
                <asp:ListItem Value="">-- Select Amount --</asp:ListItem>
                <asp:ListItem Value="500">500</asp:ListItem>
                <asp:ListItem Value="1000">1000</asp:ListItem>
                <asp:ListItem Value="2000">2000</asp:ListItem>
                <asp:ListItem Value="5000">5000</asp:ListItem>
                <asp:ListItem Value="10000">10000</asp:ListItem>
                <asp:ListItem Value="20000">20000</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvDonationAmount" runat="server" ControlToValidate="ddlDonationAmount" ErrorMessage="Please select a donation amount" InitialValue=""></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="ddlFrequency">Select Donate Frequency:</label>
            <asp:DropDownList ID="ddlFrequency" runat="server">
                <asp:ListItem Value="">-- Select Frequency --</asp:ListItem>
                <asp:ListItem Value="One-time">One-time</asp:ListItem>
                <asp:ListItem Value="Monthly">Monthly</asp:ListItem>
                <asp:ListItem Value="Quarterly">Quarterly</asp:ListItem>
                <asp:ListItem Value="Annually">Annually</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvFrequency" runat="server" ControlToValidate="ddlFrequency" ErrorMessage="Please select a donate frequency" InitialValue=""></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="txtNote">Your Note for the Donor:</label>
            <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
        <div>
            <input id="chkPostAmount" type="checkbox" runat="server" /><label for="chkPostAmount">Post my donation amount</label>
        </div>
        <div>
            <input id="chkPostName" type="checkbox" runat="server" /><label for="chkPostName">Post my name</label>
        </div>
        <br />
        <asp:Button ID="btnDonate" runat="server" Text="Donate" OnClick="btnDonate_Click" CssClass="btn btn-primary bg-primary" Width="139px" Height="34px" BackColor="blue" Font-Size="25px" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 PawsitiveAdoptions. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
