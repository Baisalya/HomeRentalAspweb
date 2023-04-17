using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace HomeRentalApp
{
    public partial class mybook : System.Web.UI.Page
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
                int userId = (int)Session["UserId"];
                string connectionString = "server=localhost;user id=root;database=homerental";
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT bookings.booking_id, homes.home_name, cities.city_name, bookings.start_date," +
                        " bookings.end_date, bookings.monthly_rent, bookings.total_rent" +
                        " FROM bookings INNER JOIN homes ON bookings.home_id = homes.home_id INNER JOIN cities " +
                        "ON homes.city_id = cities.city_id WHERE bookings.renter_id = @userId";
                    MySqlCommand cmd = new MySqlCommand(query, connection);
                    cmd.Parameters.AddWithValue("@userId", userId);
                    MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    GridView1.DataSource = dataTable;
                    GridView1.DataBind();
                }
            }
        }



    }
}