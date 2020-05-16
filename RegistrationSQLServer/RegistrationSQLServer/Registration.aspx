<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RegistrationSQLServer.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h3>User information</h3>
            <asp:Label ID="Msg" ForeColor="maroon" runat="server" /><br />
            <asp:Panel ID="enterUserInfoPanel" runat="server">
                <table cellpadding="3" border="0">
                    <tr>
                        <td>First name:</td>
                        <td>
                            <asp:TextBox ID="firstNameTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="firstNameTextBoxValidator"
                                ControlToValidate="firstNameTextBox" runat="server"
                                ErrorMessage="Please enter a First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Last name:</td>
                        <td>
                            <asp:TextBox ID="lastNameTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="lastNameTextBoxValidator"
                                ControlToValidate="lastNameTextBox" runat="server"
                                ErrorMessage="Please enter a Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="addressTextBoxValidator"
                                ControlToValidate="addressTextBox" runat="server"
                                ErrorMessage="Please enter an address" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>City:</td>
                        <td>
                            <asp:TextBox ID="cityTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="cityTextBoxValidator"
                                ControlToValidate="cityTextBox" runat="server"
                                ErrorMessage="Please enter a city" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>State or Province:</td>
                        <td>
                            <asp:TextBox ID="stateOrProvinceTextBox" MaxLength="2" runat="server" />

                            <asp:RequiredFieldValidator ID="provinceValidator1"
                                ControlToValidate="stateOrProvinceTextBox" runat="server"
                                ErrorMessage="Please enter a Province" ForeColor="Red"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="provinceValidator2" runat="server"
                                ControlToValidate="stateOrProvinceTextBox"
                                ValidationExpression="[A-Za-z]{2}"
                                ErrorMessage="Please enter 2 characters for Province" ForeColor="Red">
                            </asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Zip Code/Postal Code:</td>
                        <td>
                            <asp:TextBox ID="zipCodeTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="zipCodeTextBoxValidator"
                                ControlToValidate="zipCodeTextBox" runat="server"
                                ErrorMessage="Please enter a Zip Code/Postal Code" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Country:</td>
                        <td>
                            <asp:TextBox ID="countryTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="countryTextBoxValidator"
                                ControlToValidate="countryTextBox" runat="server"
                                ErrorMessage="Please enter a Country" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="enterInfoButton" runat="server" Text="Enter user information" OnClick="enterInfoButton_Click"/></td>
                    </tr>
                </table>
                <asp:Label ID="lblResultMessage" runat="server" ForeColor="LimeGreen" />
            </asp:Panel>

        </div>
    </form>
</body>
</html>
