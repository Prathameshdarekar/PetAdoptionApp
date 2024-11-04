using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace YourNamespace
{
    public partial class VolunteerApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate month dropdown
                for (int i = 1; i <= 12; i++)
                {
                    ddlMonth.Items.Add(new ListItem(i.ToString("00"), i.ToString()));
                }

                // Populate day dropdown
                for (int i = 1; i <= 31; i++)
                {
                    ddlDay.Items.Add(new ListItem(i.ToString("00"), i.ToString()));
                }

                // Populate year dropdown
                int currentYear = DateTime.Now.Year;
                for (int i = currentYear - 100; i <= currentYear; i++)
                {
                    ddlYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string dateOfBirth = $"{ddlMonth.SelectedValue}/{ddlDay.SelectedValue}/{ddlYear.SelectedValue}";
            string address = txtAddress.Text;
            string phoneNumber = txtPhoneNumber.Text;
            string preference = ddlPreference.SelectedValue;

            // Insert data into the database
            string ConnectionString = "Server=.\\sqlexpress;database=AspAssignment;integrated security = true;";
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                string query = "INSERT INTO VolunteerApplications (Name, DateOfBirth, Address, PhoneNumber, Preference) VALUES (@Name, @DateOfBirth, @Address, @PhoneNumber, @Preference)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Name", name);
                    command.Parameters.AddWithValue("@DateOfBirth", dateOfBirth);
                    command.Parameters.AddWithValue("@Address", address);
                    command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    command.Parameters.AddWithValue("@Preference", preference);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // Data inserted successfully
                        lblErrorMessage.Text = "Thank you, your submission has been received.";
                        lblErrorMessage.CssClass = "success-message";
                    }
                    else
                    {
                        lblErrorMessage.Text = "Failed to submit application. Please try again.";
                        lblErrorMessage.CssClass = "error-message";
                    }
                }
            }
        }
    }
}