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
    public partial class booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                NameValueCollection nv = Request.Form;
                string fname = nv["first_name"];
                string lname = nv["last_name"];
                string email = nv["email"];
                string address = nv["address"];
                double mob = double.Parse(nv["mobile"]);
                int guest = int.Parse(nv["guest"]);

                string constring = "server=localhost;uid=root;pwd=Kunmun@2001;database=studentdb";
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = constring;
                con.Open();

                string qry = "insert into booking (first_name,last_name,email,address,phn_no,guest) values (@fn,@ln,@email,@address,@phn,@guest)";
                MySqlCommand cmd = new MySqlCommand(qry, con);

                cmd.Parameters.AddWithValue("@fn", fname);
                cmd.Parameters.AddWithValue("@ln", lname);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@address", address);
                cmd.Parameters.AddWithValue("@phn", mob);
                cmd.Parameters.AddWithValue("@guest", guest);
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