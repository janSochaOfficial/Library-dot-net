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
        ConnectionHandler handler = new ConnectionHandler();
        protected void Page_Load(object sender, EventArgs e)
        {

        //    handler.loadFromSession(Session);

            DataTable dt = new DataTable();
            dt.Columns.Add("Id", typeof(int));
            dt.Columns.Add("Authors", typeof(string));
            dt.Columns.Add("Title", typeof(string));
            dt.Columns.Add("ReleaseDate", typeof(string));
            dt.Columns.Add("ISBN", typeof(string));
            dt.Columns.Add("Format", typeof(string));
            dt.Columns.Add("Pages", typeof(int));
            dt.Columns.Add("Description", typeof(string));

            MySqlCommand command = handler.connetion.CreateCommand();
            command.CommandText = "SELECT * FROM books";

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
            reader.Close();
            
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            GridView gv = (GridView)sender;
            GridViewRow row = (GridViewRow)gv.Rows[e.RowIndex];
            int id = Convert.ToInt32(row.Cells[2].Text);
            
            MySqlCommand command = handler.connetion.CreateCommand();
            command.CommandText = $"DELETE FROM books WHERE Id='{id}'";

            command.ExecuteNonQuery();
            
            
            gv.DeleteRow(e.RowIndex);
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridView gv = (GridView)sender;
            GridViewRow row = (GridViewRow)gv.Rows[Convert.ToInt32(e.CommandArgument)];
            int id = Convert.ToInt32(row.Cells[2].Text);

            Session["editId"] = id.ToString();

            Response.Redirect("/editRecord.aspx");

        }
    }
}