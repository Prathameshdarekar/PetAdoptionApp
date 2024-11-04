<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VolunteerApplication.aspx.cs" Inherits="YourNamespace.VolunteerApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Volunteer Application</title>
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
            color: #007bff; /* Blue color for headers */
            margin-bottom: 10px;
            margin-left: 504px;
        }

        .separator {
            width: 100%; /* Full width */
            height: 1px; /* Thickness of the line */
            background-color: #ccc; /* Gray color */
            margin: 20px 0; /* Margin above and below the line */
        }

        #form1 {
            margin-left: 450px;
            margin-right: 388px;
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
        }

        .footer-content {
            text-align: center;
        }

        #submit {
            margin-left: 25px;
            margin-top: 13px;
            width: 113px;
            height: 32px;
            /* background-color: blue;*/
            border-radius: 9px;
        }

        .error-message {
            color: red;
            margin-top: 10px;
            text-align: center;
        }
        .name .txtName{
            margin-left:64px;
            height:25px;
        }
        .txtAddress{
            margin-left: 48px;
            height:25px;
        }
        .Preference{
            margin-left:31px;
            height:25px;
        }
        .Number{
            height:25px;
        }

        .date{
            height:25px;
        }

        /*#application {*/
            /*margin-left: 450px;
            margin-right: 450px;
            margin-top: 36px;
            border: 1px solid black;
            padding: 35px;
            padding-right: 57px;
            border-radius: 30px;
            background-color: white;
            margin-bottom: 27px;*/
        /*}*/
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
        <h1>Volunteer Application</h1>
        <hr class="separator" />
    </div>
    <form id="form1" runat="server">
        <div>
            <h2>Volunteer Application Form</h2>
            <div class="name">
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server" class="txtName" />
                <asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtName" ErrorMessage="Name is required" runat="server" />
            </div>
            <div>
                <label for="ddlMonth">Date of Birth:</label>
                <asp:DropDownList ID="ddlMonth" runat="server"></asp:DropDownList>
                <asp:DropDownList ID="ddlDay" runat="server"></asp:DropDownList>
                <asp:DropDownList ID="ddlYear" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvDateOfBirth" ControlToValidate="ddlMonth" InitialValue="0" ErrorMessage="Date of Birth is required" runat="server" class="date"/>
                <asp:RequiredFieldValidator ID="rfvDateOfBirthDay" ControlToValidate="ddlDay" InitialValue="0" ErrorMessage="Date of Birth is required" runat="server" class="date"/>
                <asp:RequiredFieldValidator ID="rfvDateOfBirthYear" ControlToValidate="ddlYear" InitialValue="0" ErrorMessage="Date of Birth is required" runat="server" class="date"/>
            </div>
            <div>
                <label for="txtAddress">Address:</label>
                <asp:TextBox ID="txtAddress" runat="server"  class="txtAddress"/>
                <asp:RequiredFieldValidator ID="rfvAddress" ControlToValidate="txtAddress" ErrorMessage="Address is required" runat="server" />
            </div>
            <div>
                <label for="txtPhoneNumber">Phone Number:</label>
                <asp:TextBox ID="txtPhoneNumber" runat="server" Class="Number" />
                <asp:RequiredFieldValidator ID="rfvPhoneNumber" ControlToValidate="txtPhoneNumber" ErrorMessage="Phone Number is required" runat="server" />
            </div>
            <div>
                <label for="ddlPreference">Preference:</label>
                <asp:DropDownList ID="ddlPreference" runat="server" Class="Preference">
                    <asp:ListItem Text="Dog Walking" Value="DogWalking"></asp:ListItem>
                    <asp:ListItem Text="Event Planning" Value="EventPlanning"></asp:ListItem>
                    <asp:ListItem Text="Administrative Task" Value="AdministrativeTask"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div id="submit">
                <asp:Button ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" runat="server" CssClass="btn btn-primary" Width="288px" height="29" BackColor="Blue" Font-Size="16" />
            </div>
            <asp:Label ID="lblErrorMessage" runat="server" CssClass="error-message" Text=""></asp:Label>
        </div>
    </form>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 PawsitiveAdoptions. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
