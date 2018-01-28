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
/// Summary description for ToolboxSetup
/// </summary>
public class ToolboxSetup
{
    public ToolboxSetup()
    {
        SetToolBox();
    }

    public StringBuilder SetToolBox()
    {
       
        StringBuilder sbnav = new StringBuilder();

            sbnav.Append(" <h2 style=\"color: whitesmoke\" > Toolbox</h2><br />");
            sbnav.Append(" <a href=\"ModifyGames.aspx\" style=\"color: whitesmoke\" > Modify Games</a><br />");
            sbnav.Append(" <a href=\"MyAccount.aspx\" style=\"color: whitesmoke\" > Modify Events</a><br />");
            sbnav.Append(" <a href=\"MyAccount.aspx\" style=\"color: whitesmoke\" > Current Reviews</a><br />");
            sbnav.Append(" <a href=\"MyAccount.aspx\" style=\"color: whitesmoke\" > Current Open Orders</a><br />");
     
        return sbnav;

    }
}