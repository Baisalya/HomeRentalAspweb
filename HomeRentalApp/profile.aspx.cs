using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace HomeRentalApp
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is logged in
            if (Session["UserName"] == null)
            {
                Response.Redirect("login.aspx");
            }

            // Handle form submission
            if (Request.Params["saveBtn"] != null)
            {
                string username = Request.Params["username"];
                string email = Request.Params["email"];
                string name = Request.Params["name"];

                string constring = "server=localhost;user id=root;database=homerental";
                MySqlConnection con = new MySqlConnection(constring);
                con.Open();
                string qry = "UPDATE users SET name='" + name + "', email='" + email + "' WHERE name='" + username + "'";
                MySqlCommand cmd = new MySqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();

                Session["UserName"] = username;
                Session["Email"] = email;
                Session["Name"] = name;
            }
        }


    }
}