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

/// <summary>
/// Summary description for NavbarSetup
/// </summary>
public class NavbarSetup
{
    public NavbarSetup()
    {
        SetNavbar(); 
    }
    public StringBuilder SetNavbar()
    {
        bool ifLogged = false;
        StringBuilder sbnav = new StringBuilder();

        if (Global.isLoggedIn == true)
        {
          
            sbnav.Append(" <li><a href=\"MyAccount.aspx\">My Account</a></li>");

        }
        else
        {
            sbnav.Append("<li><a href=\"Login.aspx\">Login</a></li>");
        }
        return sbnav;

    }
}