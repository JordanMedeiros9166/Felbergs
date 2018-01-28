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

public partial class FelbergsSite_ModifyEvents : System.Web.UI.Page
{
    /* Variables used:
     * TextBoxes:
     * tbEventName
     * tbEventType
     * tbEmployId
     * tbEventDesc
     * tbUpEventName
     * tbUpEventType
     * tbUpEventDesc
     * tbDelEventName
     * tbDelEmployId
     * 
     * Buttons:
     * btnCreate
     * btnUpdate
     * btnDelete
     * 
     * 
     * 
     * */
    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        ToolboxSetup toolBox = new ToolboxSetup();
        ToolboxSwitch.Controls.Add(new Literal { Text = toolBox.SetToolBox().ToString() });
    }
}