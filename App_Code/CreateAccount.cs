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
/// Summary description for CreateAccount
/// </summary>
public class CreateAccount
{
    //Database connection
    private static SqlConnection conn;
    private static SqlCommand command;

    public CreateAccount()
    {
       
    }

    public void accountCreation(string userName, string password, string email)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["yolo"].ConnectionString;
        conn = new SqlConnection(connectionString);
        command = new SqlCommand("", conn);
        StringBuilder sb = new StringBuilder();

        string query1 = string.Format("INSERT INTO LogIn VALUES('" + userName + "','" + password + "')");

        string query2 = string.Format("INSERT INTO Member VALUES('" + userName + "', '" + password + "'," +
            " '', " +
            " '" + email + "'," +
            " '', " +
            " '', " +
            " '', " +
            " '', " +
            " ''," +
            " '')");
        try
        {
            conn.Open();
            command.CommandText = query1;
            SqlDataReader reader = command.ExecuteReader();
            conn.Close();

            conn.Open();
            command.CommandText = query2;
            reader = command.ExecuteReader();
            conn.Close();
        }
        catch (Exception ex)
        {
            //insert error here
        }


    }

}