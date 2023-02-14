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
        ConnectionHandler handler = new ConnectionHandler();

        protected void Page_Load(object sender, EventArgs e)
        {
            //handler.loadFromSession(Session);
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            string author = tbAuthors.Text;
            string title = tbTitle.Text;
            string releseDate = tbRealese.Text;
            string isbm = tbIsbm.Text;
            string format = tbFormat.Text;
            string pages = tbPages.Text;
            string description = tbDescription.Text;

            MySqlCommand command = handler.connetion.CreateCommand();
            command.CommandText = "INSERT INTO `books`" +
                "(`Authors`, `Title`, `Release_date`, `ISBN`, `Format`, `Pages`, `Description`) VALUES" +
                $"('{author}', '{title}', '{releseDate}', '{isbm}', '{format}', '{pages}', '{description}')";

            command.ExecuteNonQuery();
        }
    }
}
