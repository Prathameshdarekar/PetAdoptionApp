<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdoptionApplication.aspx.cs" Inherits="YourNamespace.AdoptionApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adoption Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: lightblue;
        }

        .text-content1 h1 {
            color: #007bff;
            margin-bottom: 10px;
            margin-left: 518px;
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
        label{
            color:blue;
        }
    </style>
</head>
<body>
    <div class="text-content1">
        <h1>Adoption Application</h1>
        <hr class="separator" />
    </div>
    <form id="form1" runat="server">
        <div>
            <label for="txtPetInterest">What pet are you interested in:</label>
            <asp:TextBox ID="txtPetInterest" runat="server" Required></asp:TextBox>
            <br />
            <br />
            <label for="txtFirstName">Your First Name:</label>
            <asp:TextBox ID="txtFirstName" runat="server" Required></asp:TextBox>
            <br />
            <br />
            <label for="txtSurname">Your Surname:</label>
            <asp:TextBox ID="txtSurname" runat="server" Required></asp:TextBox>
            <br />
            <br />
            <label for="txtAddress">Your Full Address and Postcode:</label>
            <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server" Required></asp:TextBox>
            <br />
            <br />
            <label for="txtPhoneNumber">Your Phone Number:</label>
            <asp:TextBox ID="txtPhoneNumber" runat="server" Required></asp:TextBox>
            <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" ErrorMessage="Please enter a valid phone number" ControlToValidate="txtPhoneNumber" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
            <br />
            <br />
            <label for="txtEmailAddress">Your Email Address:</label>
            <asp:TextBox ID="txtEmailAddress" runat="server" Required></asp:TextBox>
            <asp:RegularExpressionValidator ID="revEmailAddress" runat="server" ErrorMessage="Please enter a valid email address" ControlToValidate="txtEmailAddress" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b"></asp:RegularExpressionValidator>
            <br />
            <br />
            <label for="ddlHadPetsBefore">Have you had pets before:</label>
            <asp:DropDownList ID="ddlHadPetsBefore" runat="server" Required>
                <asp:ListItem Text="-- Select --" Value=""></asp:ListItem>
                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="No"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <label for="txtPetsLocation">Where are your pets kept during the day/night:</label>
            <asp:TextBox ID="txtPetsLocation" TextMode="MultiLine" runat="server" Required></asp:TextBox>
            <br />
            <br />
            <label for="txtVets">Which vets do you use:</label>
            <asp:TextBox ID="txtVets" runat="server" Required></asp:TextBox>
            <br />
            <br />
            <label for="txtAdultsAtHome">How many adults live at home:</label>
            <asp:TextBox ID="txtAdultsAtHome" runat="server" Required></asp:TextBox>
            <br />
            <br />
            <label for="ddlChildrenAtHome">Do you have children living at home:</label>
            <asp:DropDownList ID="ddlChildrenAtHome" runat="server" Required>
                <asp:ListItem Text="-- Select --" Value=""></asp:ListItem>
                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="No"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <label for="txtConsent">Do all adults in your home consent to have in a new pets:</label>
            <asp:TextBox ID="txtConsent" runat="server" Required></asp:TextBox>
            <br />
            <br />
            <label for="ddlHomeMostOfDay">Is someone home most of the day:</label>
            <asp:DropDownList ID="ddlHomeMostOfDay" runat="server" Required>
                <asp:ListItem Text="-- Select --" Value=""></asp:ListItem>
                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="No"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <label for="ddlHomeOwnership">Is your home:</label>
            <asp:DropDownList ID="ddlHomeOwnership" runat="server" Required>
                <asp:ListItem Text="-- Select --" Value=""></asp:ListItem>
                <asp:ListItem Text="Owned" Value="Owned"></asp:ListItem>
                <asp:ListItem Text="Rented" Value="Rented"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:CheckBox ID="chkTermsAndConditions" runat="server" Text="By submitting this form I agree to the terms and conditions" Required />
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary bg-primary" Width="139px" Height="34px" BackColor="blue" Font-Size="25px" />
            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
