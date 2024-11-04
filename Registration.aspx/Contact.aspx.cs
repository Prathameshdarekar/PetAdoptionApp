using System;
using System.Configuration;
using System.Data.SqlClient;

namespace YourNamespace
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string mobileNumber = txtMobile.Text;
            string email = txtEmail.Text;
            string subject = txtSubject.Text;
            string message = txtMessage.Text;

            // Insert the data into the database
            string ConnectionString = "Server=.\\sqlexpress;database=AspAssignment;integrated security = true;";
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                string query = @"INSERT INTO ContactMessages (Name, MobileNumber, Email, Subject, Message) 
                                VALUES (@Name, @MobileNumber, @Email, @Subject, @Message)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Name", name);
                    command.Parameters.AddWithValue("@MobileNumber", mobileNumber);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Subject", subject);
                    command.Parameters.AddWithValue("@Message", message);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // Optionally, you can redirect the user to a thank you page
            Response.Redirect("Home.aspx");
        }
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    // Check if user is authenticated
        //    if (!User.Identity.IsAuthenticated)
        //    {
        //        // Redirect user to the login page
        //        Response.Redirect("~/Login.aspx");
        //    }
        //}
    }
}