using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace YourNamespace
{
    public partial class PaymentPage : Page
    {
        protected void btnComplete_Click(object sender, EventArgs e)
        {
            // Retrieve values from form controls
            string fullName = txtFullName.Text;
            string cardNumber = txtCardNumber.Text;
            string expMonth = ddlExpMonth.SelectedValue;
            string expYear = ddlExpYear.SelectedValue;
            string securityCode = txtSecurityCode.Text;
            string streetAddress = txtStreetAddress.Text;
            string streetAddress2 = txtStreetAddress2.Text;
            string city = txtCity.Text;
            string state = txtState.Text;
            string country = txtCountry.Text;
            string phoneNumber = txtPhoneNumber.Text;

            // Establish connection to SQL Server
            string ConnectionString = "Server=.\\sqlexpress;database=AspAssignment;integrated security = true;";
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                // Define SQL INSERT statement
                string insertQuery = "INSERT INTO PaymentDetails (FullName, CardNumber, ExpirationMonth, ExpirationYear, SecurityCode, StreetAddress, StreetAddress2, City, State, Country, PhoneNumber) " +
                                     "VALUES (@FullName, @CardNumber, @ExpirationMonth, @ExpirationYear, @SecurityCode, @StreetAddress, @StreetAddress2, @City, @State, @Country, @PhoneNumber)";

                // Create SqlCommand object
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    // Add parameters to SQL command
                    command.Parameters.AddWithValue("@FullName", fullName);
                    command.Parameters.AddWithValue("@CardNumber", cardNumber);
                    command.Parameters.AddWithValue("@ExpirationMonth", expMonth);
                    command.Parameters.AddWithValue("@ExpirationYear", expYear);
                    command.Parameters.AddWithValue("@SecurityCode", securityCode);
                    command.Parameters.AddWithValue("@StreetAddress", streetAddress);
                    command.Parameters.AddWithValue("@StreetAddress2", streetAddress2);
                    command.Parameters.AddWithValue("@City", city);
                    command.Parameters.AddWithValue("@State", state);
                    command.Parameters.AddWithValue("@Country", country);
                    command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);

                    try
                    {
                        // Open connection
                        connection.Open();
                        // Execute INSERT command
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            // Data inserted successfully
                            // Redirect to a thank you page or display a success message
                            Response.Redirect("ThankYou.aspx");
                        }
                        else
                        {
                            // Handle insertion failure
                            lblErrorMessage.Text = "Failed to insert data into database.";
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle exception
                        lblErrorMessage.Text = "An error occurred: " + ex.Message;
                    }
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate dropdown lists for expiration month and year
                PopulateExpirationMonths();
                PopulateExpirationYears();
            }
        }

        //protected void btnComplete_Click(object sender, EventArgs e)
        //{
        //    // Add code to handle completion of payment process
        //}

        private void PopulateExpirationMonths()
        {
            // Add code to populate dropdown list for expiration months
        }

        private void PopulateExpirationYears()
        {
            // Add code to populate dropdown list for expiration years
        }
    }
}