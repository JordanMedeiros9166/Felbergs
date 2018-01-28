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
/// Summary description for LogInChecker
/// </summary>
public class LogInChecker
{
    //Database connection
    private static SqlConnection conn;
    private static SqlCommand command;
    

    public LogInChecker()
    {
        
    }

    public void checkLogin(string userName, string password)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["yolo"].ConnectionString;
        conn = new SqlConnection(connectionString);
        command = new SqlCommand("", conn);
        StringBuilder sb = new StringBuilder();

        string query = string.Format("SELECT * FROM LogIn WHERE MemberDisplayName = '"+ userName + "'" );
        string query2 = string.Format("SELECT * FROM Administrator WHERE AdminDisplayNAme = '" + userName + "' ");
        try
        {
            conn.Open();
            command.CommandText = query;
            SqlDataReader reader = command.ExecuteReader();
           

            while (reader.Read())
            { 
               
                string MemberDisplayName = reader.GetString(1);
                string Password = reader.GetString(2);

                if (userName == MemberDisplayName &&  password == Password)
                {
                    Global.isLoggedIn = true;
                    Global.UserLoggedIn = MemberDisplayName;
                }
             
            }
            conn.Close();

            conn.Open();
            command.CommandText = query2;
            reader = command.ExecuteReader();
            while (reader.Read())
            {

                string MemberDisplayName = reader.GetString(1);
                string Password = reader.GetString(2);

                if (userName == MemberDisplayName  && password == Password)
                {
                    Global.isLoggedIn = true;
                    Global.isAdmin = true;
                    Global.UserLoggedIn = MemberDisplayName;
                    
                }
            }

            conn.Close();


       }
        catch (Exception ex)
        {
            //insert error here
        }

       
    }



}