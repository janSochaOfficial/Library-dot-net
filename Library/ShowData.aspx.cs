using MySql.Data.MySqlClient;
using MySqlX.XDevAPI.Relational;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class ShowData : System.Web.UI.Page
    {

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
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conn = this.connect();

            DataTable dt = new DataTable();
            dt.Columns.Add("Id", typeof(int));
            dt.Columns.Add("Authors", typeof(string));
            dt.Columns.Add("Title", typeof(string));
            dt.Columns.Add("ReleaseDate", typeof(string));
            dt.Columns.Add("ISBN", typeof(string));
            dt.Columns.Add("Format", typeof(string));
            dt.Columns.Add("Pages", typeof(int));
            dt.Columns.Add("Description", typeof(string));

            MySqlCommand command = conn.CreateCommand();
            command.CommandText = "SELECT * FROM books";

            //albo

            MySqlDataReader reader = command.ExecuteReader();
            string authors, title, releaseDate, isbn, format, description;
            int id, pages;
            while (reader.Read())
            {
                id = Convert.ToInt32(reader.GetString("Id"));
                authors = reader.GetString("Authors");
                title = reader.GetString("Title");
                releaseDate = reader.GetString("Release_date");
                isbn = reader.GetString("ISBN");
                format = reader.GetString("Format");
                description = reader.GetString("Description");
                pages = Convert.ToInt32(reader.GetString("Pages"));

                DataRow row = dt.NewRow();

                row["Id"] = id;
                row["Title"] = title;
                row["Description"] = description;
                row["Authors"] = authors;
                row["ReleaseDate"] = releaseDate;
                row["ISBN"] = isbn;
                row["Format"] = format;
                row["Pages"] = pages;

                dt.Rows.Add(row);
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}