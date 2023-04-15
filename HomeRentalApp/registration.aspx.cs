using System;
using System.Collections.Specialized;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace HomeRentalApp
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                NameValueCollection nv = Request.Form;
                string name = nv["name"];
                string email = nv["email"];
                string password = nv["password"];
                Console.WriteLine(name);
                string constring = "server=localhost;user id=root;database=homerental";
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = constring;
                con.Open();

                string query = "INSERT INTO users (name, email, password) VALUES (@name, @email, @password)";
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.ExecuteNonQuery();


                con.Close();
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}