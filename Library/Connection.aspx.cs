using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Connection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string connectionString;

        public MySqlConnection connect()
        {
            //1Info.Text = "Connecting 1...";
            string myconnection =
               "Server=localhost;" +
               //"Port=8080;" +
               "Database=library;" +
               "User=root;" +
               "Password=;";
            MySqlConnection connection = new MySqlConnection(myconnection);
            try
            {
                lbInfo.Text = "Connecting 2...";
                connection.Open();
                //Console.WriteLine("Connected");
                lbInfo.Text = "Connected";
                return connection;
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                //Console.WriteLine(("Error"));
                lbInfo.Text = "Error";
                return null;

            }
        }
        protected void btConnect_Click(object sender, EventArgs e)
        {
            MySqlConnection connect = this.connect();
        }
    }
}