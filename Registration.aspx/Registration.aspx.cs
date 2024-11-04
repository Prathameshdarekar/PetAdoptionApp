using System;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.UI.WebControls;

namespace YourNamespace
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (IsValidInput())
            {
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                string email = txtEmail.Text;
                string gender = ddlGender.SelectedValue;

                string ConnectionString = "Server=.\\sqlexpress;database=AspAssignment;integrated security = true;";
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    string query = "INSERT INTO Users (Username, Password, Email, Gender) VALUES (@Username, @Password, @Email, @Gender)";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Gender", gender);

                    try
                    {
                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            Response.Redirect("Login.aspx");
                        }
                        else
                        {
                            lblErrorMessage.Text = "Registration failed. Please try again.";
                        }
                    }
                    catch (Exception ex)
                    {
                        lblErrorMessage.Text = "An error occurred: " + ex.Message;
                    }
                }
            }
        }

        private bool IsValidInput()
        {
            bool isValid = true;
            lblErrorMessage.Text = ""; 

            if (string.IsNullOrWhiteSpace(txtUsername.Text))
            {
                lblErrorMessage.Text += "Username is required.<br />";
                isValid = false;
            }

            if (string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                lblErrorMessage.Text += "Password is required.<br />";
                isValid = false;
            }

            if (!IsValidEmail(txtEmail.Text))
            {
                lblErrorMessage.Text += "Invalid email format.<br />";
                isValid = false;
            }

            if (string.IsNullOrWhiteSpace(ddlGender.SelectedValue))
            {
                lblErrorMessage.Text += "Gender is required.<br />";
                isValid = false;
            }

            if (!chkAgree.Checked)
            {
                lblErrorMessage.Text += "Please agree to the terms of service and privacy policy.<br />";
                isValid = false;
            }

            return isValid;
        }

        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }
    }
}