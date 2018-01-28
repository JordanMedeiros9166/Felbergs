  /* Team: FelBergs
    -Jordan, Cj, Dan

    Things to do: 
    -Validation's 
    -Complete database
    
     */
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

public partial class Main : System.Web.UI.Page
{
    //Database connection
    private static SqlConnection conn;
    private static SqlCommand command;
    public ArrayList list = new ArrayList();
    public void Page_Load(object sender, EventArgs e)
    {
        gordonsConnString();
    }

    public void gordonsConnString ()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["yolo"].ConnectionString;
        conn = new SqlConnection(connectionString);
        command = new SqlCommand("", conn);

        string query = string.Format("SELECT * FROM Game");

        try
        {
            conn.Open();
            command.CommandText = query;
            SqlDataReader reader = command.ExecuteReader();
            StringBuilder sb = new StringBuilder();
            NavbarSetup navBar = new NavbarSetup();
            ToolboxSetup toolBox = new ToolboxSetup();



            //Pad's games past sidebar and formats int table cells.
            sb.Append("<div class=\"game-pad\" >");
            sb.Append("<table>");
            while (reader.Read())
            {
              //variable for elements used
                string gameName = reader.GetString(1);
                string gameImage = reader.GetString(7);
                double gamePrice = reader.GetDouble(6);
             
                sb.Append("<td style=\"padding-left:30px;\">");
                sb.Append("<img src="+gameImage+" height=\"240\" width=\"260\" />");            
                sb.Append("<p style=\"text-align:center\">" + gameName+"  $"+gamePrice.ToString()+"</p>");
                sb.Append("</td>");
            }
            sb.Append("</table>");
            sb.Append("</div>");
           
            GameList.Controls.Add(new Literal { Text = sb.ToString() });
            MyAccountSwitch.Controls.Add(new Literal { Text = navBar.SetNavbar().ToString() });
            ToolboxSwitch.Controls.Add(new Literal { Text = toolBox.SetToolBox().ToString() });
            conn.Close(); 
        }
        catch (Exception ex)
        {
            //insert error here
        }

    }



    public void GORDON()
    {
      // YOU GOT HERE NIGGA
    }


}