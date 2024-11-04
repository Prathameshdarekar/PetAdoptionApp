using System;
using System.Data.SqlClient;

namespace YourNamespace
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string ConnectionString = "Server=.\\sqlexpress;database=AspAssignment;integrated security = true;";
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username AND Password = @Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", txtUsername.Text);
                command.Parameters.AddWithValue("@Password", txtPassword.Text);

                try
                {
                    connection.Open();
                    int count = (int)command.ExecuteScalar();
                    if (count > 0)
                    {
                        // Redirect the user to the Home page upon successful login
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        // Display error message for wrong username or password
                        lblErrorMessage.Text = "Wrong username or password. Please try again.";
                    }
                }
                catch (Exception ex)
                {
                    // Handle the exception (e.g., log it, display an error message)
                    Console.WriteLine("Error during login: " + ex.Message);
                    // You may want to redirect the user to an error page or display a friendly message
                }

            }
        }
    }
}