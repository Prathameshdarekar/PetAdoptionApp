using System;
using System.Web.UI;

namespace YourNamespace
{
    public partial class ThankYou : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic you want to execute on page load
        }

        protected void btnBackToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx"); // Redirect to the home page
        }

        protected void btnMakeNewDonation_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donation.aspx"); // Redirect to the donation page
        }
    }
}
