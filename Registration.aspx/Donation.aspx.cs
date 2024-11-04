using System;
using System.Configuration;
using System.Data.SqlClient;

namespace YourNamespace
{
    public partial class donation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDonate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Retrieve values from form controls
                string donationAmount = ddlDonationAmount.SelectedValue;
                string frequency = ddlFrequency.SelectedValue;
                string note = txtNote.Text;
                bool postAmount = chkPostAmount.Checked;
                bool postName = chkPostName.Checked;

                // Save the donation details to the database
                string ConnectionString = "Server=.\\sqlexpress;database=AspAssignment;integrated security = true;";
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    string query = "INSERT INTO Donations (DonationAmount, Frequency, Note, PostAmount, PostName) VALUES (@DonationAmount, @Frequency, @Note, @PostAmount, @PostName)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@DonationAmount", donationAmount);
                        command.Parameters.AddWithValue("@Frequency", frequency);
                        command.Parameters.AddWithValue("@Note", note);
                        command.Parameters.AddWithValue("@PostAmount", postAmount);
                        command.Parameters.AddWithValue("@PostName", postName);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                // Redirect the user to a thank you page
                Response.Redirect("PaymentPage.aspx");
            }
        }
    }
}