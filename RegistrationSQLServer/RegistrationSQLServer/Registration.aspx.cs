using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationSQLServer
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enterInfoButton_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                // send the user information to the database:

                BusinessLayer.UserInformation userInfo = new BusinessLayer.UserInformation();

                userInfo.FirstName = Server.HtmlEncode(firstNameTextBox.Text);
                userInfo.LastName = Server.HtmlEncode(lastNameTextBox.Text);
                userInfo.Address = Server.HtmlEncode(addressTextBox.Text);
                userInfo.City = Server.HtmlEncode(cityTextBox.Text);
                userInfo.Province = Server.HtmlEncode(stateOrProvinceTextBox.Text);
                userInfo.PostalCode = Server.HtmlEncode(zipCodeTextBox.Text);
                userInfo.Country = Server.HtmlEncode(countryTextBox.Text);

                // DatabaseLayer.DBUtlities.InsertUserInformation(userInfo);

                if(DatabaseLayer.DBUtlities.InsertUserInformation(userInfo) == 1)
                    this.lblResultMessage.Text = "The user information was successfully inserted into DB table.";
                else
                    this.lblResultMessage.Text = "There was an error while inserting user information !!!";

                /*
                Session["firstName"] = Server.HtmlEncode(firstNameTextBox.Text);
                Session["lastName"] = Server.HtmlEncode(lastNameTextBox.Text);
                Session["address"] = Server.HtmlEncode(addressTextBox.Text);
                Session["city"] = Server.HtmlEncode(cityTextBox.Text);
                Session["stateOrProvince"] = Server.HtmlEncode(stateOrProvinceTextBox.Text);
                Session["zipCode"] = Server.HtmlEncode(zipCodeTextBox.Text);
                Session["country"] = Server.HtmlEncode(countryTextBox.Text);
                */
            }
        }
    }
}