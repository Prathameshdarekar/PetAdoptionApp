using System;
using System.Configuration;
using System.Data.SqlClient;

namespace YourNamespace
{
    public partial class AdoptionApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Retrieve form data
                string petInterest = txtPetInterest.Text;
                string firstName = txtFirstName.Text;
                string surname = txtSurname.Text;
                string address = txtAddress.Text;
                string phoneNumber = txtPhoneNumber.Text;
                string emailAddress = txtEmailAddress.Text;
                string hadPetsBefore = ddlHadPetsBefore.SelectedValue;
                string petsLocation = txtPetsLocation.Text;
                string vetsUsed = txtVets.Text;
                string adultsAtHome = txtAdultsAtHome.Text;
                string childrenAtHome = ddlChildrenAtHome.SelectedValue;
                string consent = txtConsent.Text;
                string homeMostOfDay = ddlHomeMostOfDay.SelectedValue;
                string homeOwnership = ddlHomeOwnership.SelectedValue;

                // Insert into database
                string ConnectionString = "Server=.\\sqlexpress;database=AspAssignment;integrated security = true;";
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                    if (ConnectionString != null)
                {
                    string query = @"INSERT INTO AdoptionApplications 
                                    (PetInterest, FirstName, Surname, Address, PhoneNumber, EmailAddress, 
                                    HadPetsBefore, PetsLocation, VetsUsed, AdultsAtHome, ChildrenAtHome, 
                                    Consent, HomeMostOfDay, HomeOwnership) 
                                    VALUES 
                                    (@PetInterest, @FirstName, @Surname, @Address, @PhoneNumber, @EmailAddress, 
                                    @HadPetsBefore, @PetsLocation, @VetsUsed, @AdultsAtHome, @ChildrenAtHome, 
                                    @Consent, @HomeMostOfDay, @HomeOwnership)";

                    using (SqlConnection Connection = new SqlConnection(ConnectionString))
                    {
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@PetInterest", petInterest);
                            command.Parameters.AddWithValue("@FirstName", firstName);
                            command.Parameters.AddWithValue("@Surname", surname);
                            command.Parameters.AddWithValue("@Address", address);
                            command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                            command.Parameters.AddWithValue("@EmailAddress", emailAddress);
                            command.Parameters.AddWithValue("@HadPetsBefore", hadPetsBefore);
                            command.Parameters.AddWithValue("@PetsLocation", petsLocation);
                            command.Parameters.AddWithValue("@VetsUsed", vetsUsed);
                            command.Parameters.AddWithValue("@AdultsAtHome", adultsAtHome);
                            command.Parameters.AddWithValue("@ChildrenAtHome", childrenAtHome);
                            command.Parameters.AddWithValue("@Consent", consent);
                            command.Parameters.AddWithValue("@HomeMostOfDay", homeMostOfDay);
                            command.Parameters.AddWithValue("@HomeOwnership", homeOwnership);

                            try
                            {
                                connection.Open();
                                int rowsAffected = command.ExecuteNonQuery();
                                if (rowsAffected > 0)
                                {
                                        Response.Redirect("Home.aspx");
                                    }
                                else
                                {
                                    lblErrorMessage.Text = "Failed to submit application. Please try again later.";
                                }
                            }
                            catch (Exception ex)
                            {
                                lblErrorMessage.Text = "An error occurred: " + ex.Message;
                            }
                        }
                    }
                }
                else
                {
                    lblErrorMessage.Text = "Connection string not found.";
                }
            }
            else
            {
                lblErrorMessage.Text = "Please fill in all required fields.";
            }
        }

        private void ClearFormFields()
        {
            txtPetInterest.Text = "";
            txtFirstName.Text = "";
            txtSurname.Text = "";
            txtAddress.Text = "";
            txtPhoneNumber.Text = "";
            txtEmailAddress.Text = "";
            ddlHadPetsBefore.SelectedIndex = 0;
            txtPetsLocation.Text = "";
            txtVets.Text = "";
            txtAdultsAtHome.Text = "";
            ddlChildrenAtHome.SelectedIndex = 0;
            txtConsent.Text = "";
            ddlHomeMostOfDay.SelectedIndex = 0;
            ddlHomeOwnership.SelectedIndex = 0;
        }
    }
}
