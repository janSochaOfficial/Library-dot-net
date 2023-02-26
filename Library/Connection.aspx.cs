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
            lbError.Visible = false;
        }

        protected void btConnect_Click(object sender, EventArgs e)
        {
            ConnectionHandler handler = new ConnectionHandler();

            string server = tbServer.Text;
            string database = tbDatabase.Text;
            string user = tbUser.Text;
            string password = tbPassword.Text;

            handler.changeConnetionData(server, database, user, password);
            if (handler.connetion == null)
            {
                lbError.Visible = true;
                lbError.Text = "Nie udało się połączyć z baza danych";
                return;
            }

            Session["server"] = server;
            Session["database"] = database;
            Session["user"] = user;
            Session["password"] = password;
            Session["connectionData"] = true;

            Response.Redirect("/ShowData.aspx");
        }
    }
}