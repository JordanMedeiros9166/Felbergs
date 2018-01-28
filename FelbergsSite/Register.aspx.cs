using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FelbergsSite_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string uName = tbUsername.Text;
        string pWord = tbPassword.Text;
        string email = tbEmail.Text;
        CreateAccount createAccount = new CreateAccount();

        
        createAccount.accountCreation(uName, pWord, email);

        HttpContext.Current.Response.Redirect("Login.aspx", true);

    }
}