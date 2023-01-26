using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class addRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public MySqlConnection connect()
        {
            string myconnection =
               "Server=localhost;" +
               //"Port=8080;" +
               "Database=library;" +
               "User=root;" +
               "Password=;";
            MySqlConnection connection = new MySqlConnection(myconnection);
            try
            {
                connection.Open();
                return connection;
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                return null;

            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = this.connect();


            string author = tbAuthors.Text;
            string title = tbTitle.Text;
            string releseDate = tbRealese.Text;
            string isbm = tbIsbm.Text;
            string format = tbFormat.Text;
            string pages = tbPages.Text;
            string description = tbDescription.Text;

            MySqlCommand command = conn.CreateCommand();
            command.CommandText = "INSERT INTO `books`" +
                "(`Authors`, `Title`, `Release_date`, `ISBN`, `Format`, `Pages`, `Description`) VALUES" +
                $"('{author}', '{title}', '{releseDate}', '{isbm}', '{format}', '{pages}', '{description}')";

            command.ExecuteNonQuery();
        }
    }
}
