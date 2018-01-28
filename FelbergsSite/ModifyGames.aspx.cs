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

public partial class FelbergsSite_ModifyGames : System.Web.UI.Page
{
    /* Variables used:
     * TextBoxes:
     * tbGameName
     * tbGameGenre
     * dpGamePlatform
     * tbGamePrice
     * tbImagePath
     * dpUpGameName
     * tbUpGameGenre
     * tbUpGamePlatform
     * tbUpGamePrice
     * tbUpImagePrice
     * tbDelGameName
     * dpDelPlatform
     * 
     * Buttons:
     * btnCreate
     * btnUpdate
     * btnDelete
     * 
     * Notes: dpGamePlatform should be populated with Platforms from DB
     * 
     * 
     * */
    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        ToolboxSetup toolBox = new ToolboxSetup();
        ToolboxSwitch.Controls.Add(new Literal { Text = toolBox.SetToolBox().ToString() });
    }
    public void PageLayout()
    {
    
    }

   
}