using System;
using System.Collections.Specialized;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace HomeRentalApp
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                NameValueCollection nv = Request.Form;



                string email = nv["email"];
                string password = nv["password"];
                string constring = "server=localhost;user id=root;database=homerental";
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = constring;
                con.Open();
                string qry = "SELECT * FROM users WHERE email='" + email + "' AND password='" + password + "'";
                MySqlCommand cmd = new MySqlCommand(qry, con);
                MySqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    // User is authenticated, retrieve their name and store it in a session variable
                    string userName = sdr["name"].ToString();
                    Session["UserName"] = userName;
                    Session["Email"] = email; // Store the email ID in a session variable

                    // Redirect to dashboard
                    Response.Redirect("dashboard.aspx");
                }
                else
                {
                    Console.WriteLine("UserId & Password Is not correct Try again..!!");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    } 
}
