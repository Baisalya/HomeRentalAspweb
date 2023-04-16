using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace HomeRentalApp
{
    public partial class table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    string userName = Session["UserName"].ToString();
                    lblUserName.InnerHtml = "Welcome, <span class='d-none d-lg-inline me-2 text-gray-600 small'>" + userName + "</span>";
                }
                string connectionString = "server=localhost;user id=root;database=homerental";
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT cities.city_id, cities.city_name, COUNT(*) AS num_homes " +
                                   "FROM cities " +
                                   "LEFT JOIN homes ON cities.city_id = homes.city_id " +
                                   "GROUP BY cities.city_id";
                    MySqlCommand cmd = new MySqlCommand(query, connection);
                    MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    GridView1.DataSource = dataTable;
                    GridView1.DataBind();
                }
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }

    }
}