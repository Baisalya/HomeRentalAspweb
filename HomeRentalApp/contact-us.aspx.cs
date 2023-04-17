using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using MySql.Data.MySqlClient;


namespace HomeRentalApp
{
    public partial class contact_us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                NameValueCollection nv = Request.Form;
                string name = nv["name"];
                string subject = nv["subject"];
                string email = nv["email"];
                string message = nv["message"];
                
                string constring = "server=localhost;user id=root;database=homerental";
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = constring;
                con.Open();

                string qry = "insert into contact_us (name,subject,email,message) values (@name,@subject,@email,@message)";
                MySqlCommand cmd = new MySqlCommand(qry, con);

                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@subject", subject);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@message", message);

                cmd.ExecuteNonQuery();


                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}