<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="YourNamespace.PaymentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Details</title>
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
            margin-left: 635px;
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
        
    </style>
</head>
<body>
    <div class="text-content1">
        <h1>Details</h1>
        <hr class="separator" />
    </div>
    <form id="form1" runat="server">
        <div>
            <h3>Your Order</h3>
            <asp:Label ID="lblOrderAmount" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <h3>Payment</h3>
            <label for="txtFullName">Full Name (as it appears on the card)</label>
            <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Please enter your full name"></asp:RequiredFieldValidator>
            <br />
            <br />
            <label for="txtCardNumber">Card Number</label>
            <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Please enter your card number"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revCardNumber" runat="server" ErrorMessage="Only numbers are allowed" ControlToValidate="txtCardNumber" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            <br />
            <br />
            <label for="ddlExpMonth">Expiration Month:</label>
            <asp:DropDownList ID="ddlExpMonth" runat="server">
                <asp:ListItem Text="-- Select Month --" Value=""></asp:ListItem>
                <asp:ListItem Text="January" Value="1"></asp:ListItem>
                <asp:ListItem Text="February" Value="2"></asp:ListItem>
                <asp:ListItem Text="March" Value="3"></asp:ListItem>
                <asp:ListItem Text="April" Value="4"></asp:ListItem>
                <asp:ListItem Text="May" Value="5"></asp:ListItem>
                <asp:ListItem Text="June" Value="6"></asp:ListItem>
                <asp:ListItem Text="July" Value="7"></asp:ListItem>
                <asp:ListItem Text="August" Value="8"></asp:ListItem>
                <asp:ListItem Text="September" Value="9"></asp:ListItem>
                <asp:ListItem Text="October" Value="10"></asp:ListItem>
                <asp:ListItem Text="November" Value="11"></asp:ListItem>
                <asp:ListItem Text="December" Value="12"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <label for="ddlExpYear">Expiration Year:</label>
            <asp:DropDownList ID="ddlExpYear" runat="server">
                <asp:ListItem Text="-- Select Year --" Value=""></asp:ListItem>
                <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
                <asp:ListItem Text="2026" Value="2026"></asp:ListItem>
                <asp:ListItem Text="2027" Value="2027"></asp:ListItem>
                <asp:ListItem Text="2028" Value="2028"></asp:ListItem>
                <asp:ListItem Text="2029" Value="2029"></asp:ListItem>
                <asp:ListItem Text="2030" Value="2030"></asp:ListItem>
                <asp:ListItem Text="2031" Value="2031"></asp:ListItem>
                <asp:ListItem Text="2032" Value="2032"></asp:ListItem>
                <asp:ListItem Text="2033" Value="2033"></asp:ListItem>
                <asp:ListItem Text="2034" Value="2034"></asp:ListItem>
                <asp:ListItem Text="2035" Value="2035"></asp:ListItem>
                <asp:ListItem Text="2036" Value="2036"></asp:ListItem>
                <asp:ListItem Text="2037" Value="2037"></asp:ListItem>
                <asp:ListItem Text="2038" Value="2038"></asp:ListItem>
                <asp:ListItem Text="2039" Value="2039"></asp:ListItem>
                <asp:ListItem Text="2040" Value="2040"></asp:ListItem>
                <asp:ListItem Text="2041" Value="2041"></asp:ListItem>
                <asp:ListItem Text="2042" Value="2042"></asp:ListItem>
                <asp:ListItem Text="2043" Value="2043"></asp:ListItem>
                <asp:ListItem Text="2044" Value="2044"></asp:ListItem>
                <asp:ListItem Text="2045" Value="2045"></asp:ListItem>
                <asp:ListItem Text="2046" Value="2046"></asp:ListItem>
                <asp:ListItem Text="2047" Value="2047"></asp:ListItem>
                <asp:ListItem Text="2048" Value="2048"></asp:ListItem>
                <asp:ListItem Text="2049" Value="2049"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <label for="txtSecurityCode">Security Code:</label>
            <asp:TextBox ID="txtSecurityCode" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSecurityCode" runat="server" ControlToValidate="txtSecurityCode" ErrorMessage="Please enter your security code"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revSecurityCode" runat="server" ErrorMessage="Only numbers are allowed and must be 4 digits" ControlToValidate="txtSecurityCode" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
        </div>
        <div>
            <h3>Billing Address</h3>
            <label for="txtStreetAddress">Street Address:</label>
            <asp:TextBox ID="txtStreetAddress" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server" ControlToValidate="txtStreetAddress" ErrorMessage="Please enter your street address"></asp:RequiredFieldValidator>
            <br />
            <br />
            <label for="txtStreetAddress2">Street Address 2:</label>
            <asp:TextBox ID="txtStreetAddress2" runat="server"></asp:TextBox>
            <br />
            <br />
            <label for="txtCity">City:</label>
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="Please enter your city"></asp:RequiredFieldValidator>
            <br />
            <br />
            <label for="txtState">State:</label>
            <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="txtState" ErrorMessage="Please enter your state"></asp:RequiredFieldValidator>
            <br />
            <br />
            <label for="txtCountry">Country:</label>
            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="txtCountry" ErrorMessage="Please enter your country"></asp:RequiredFieldValidator>
            <br />
            <br />
            <label for="txtPhoneNumber">Phone Number:</label>
            <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Please enter your phone number"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnComlete" runat="server" Text="Complete" OnClick="btnComplete_Click" CssClass="btn btn-primary bg-primary" Width="139px" Height="34px" BackColor="blue" Font-Size="25px" />
        </div>
        <%--<div>
            <asp:Button ID="btnComplete" runat="server" Text="Complete" OnClick="btnComplete_Click" CssClass="btn btn-primary bg-primary" Width="139px" Height="34px" BackColor="blue" Font-Size="25px" />
        </div>--%>
        <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
