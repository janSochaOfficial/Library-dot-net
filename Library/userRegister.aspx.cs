using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class userRegister : System.Web.UI.Page
    {
        ConnectionHandler handler = new ConnectionHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["connectionData"] is null || !(bool)Session["connectionData"]) Response.Redirect("~/Connection.aspx");
            
            if (!(Session["userLoggedIn"] is null) && (bool)Session["userLoggedIn"]) Response.Redirect("~/ShowData.aspx");

            tbPassword.Attributes["type"] = "password";
            tbPasswdConfirm.Attributes["type"] = "password";
            handler.loadFromSession(Session);
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            MySqlCommand command = handler.connetion.CreateCommand();

            command.CommandText = $"SELECT * FROM users WHERE name='{tbUser.Text}'";
            MySqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                lbInfo.Text = "Nazwa urzytkownika jest zajęta";
                return;
            }
            reader.Close();
            command = handler.connetion.CreateCommand();

            command.CommandText = $"SELECT * FROM users WHERE email='{tbEmail.Text}'";
            reader = command.ExecuteReader();

            if (reader.Read())
            {
                lbInfo.Text = "Do tego Emailu jest już przypisane konto!";
                return;
            }
            reader.Close();

            if (tbPassword.Text != tbPasswdConfirm.Text)
            {
                lbInfo.Text = "Hasła różnią się!";
                return;
            }

            string hashedPassword = null;
            using (var sha = new SHA256CryptoServiceProvider())
            {
                byte[] hashed = sha.ComputeHash(Encoding.Default.GetBytes(tbPassword.Text));
                string output = Convert.ToBase64String(hashed);
                hashedPassword = output;
            }

            command = handler.connetion.CreateCommand();

            command.CommandText = $"INSERT INTO `users`(`name`, `password`, `email`) VALUES ('{tbUser.Text}','{hashedPassword}','{tbEmail.Text}')";
            command.ExecuteNonQuery();

            Response.Redirect("/registerSucces.aspx"); 
        }
    }
}