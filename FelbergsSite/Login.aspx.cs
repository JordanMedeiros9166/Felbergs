using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Text;
public partial class Login : System.Web.UI.Page
{
    public void Page_Load(object sender, EventArgs e)
    {
       

    }

    public void TreatsForTheKids(string uName, string Pword)
    {
        try
        {
            
            LogInChecker dog = new LogInChecker();
            dog.checkLogin(uName, Pword);


            if (Global.isLoggedIn == true)
            {
                HttpContext.Current.Response.Redirect("Main.aspx", true);
            }
           


        }
        catch(Exception ex)
        {

        }
      



    }




    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}