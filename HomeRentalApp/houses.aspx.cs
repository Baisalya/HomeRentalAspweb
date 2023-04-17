using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace HomeRentalApp
{
    public partial class houses : System.Web.UI.Page
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
                if (Request.QueryString["city_id"] != null)
                {
                    int cityId = Convert.ToInt32(Request.QueryString["city_id"]);

                    string connectionString = "server=localhost;user id=root;database=homerental";
                    using (MySqlConnection connection = new MySqlConnection(connectionString))
                    {
                        connection.Open();
                        string query = "SELECT home_id, home_name, price_per_month FROM homes WHERE city_id = @cityId";
                        MySqlCommand cmd = new MySqlCommand(query, connection);
                        cmd.Parameters.AddWithValue("@cityId", cityId);
                        MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);
                        GridView1.DataSource = dataTable;
                        GridView1.DataBind();
                    }
                }
            }
        }

    /*    protected void btnBook_Click(object sender, EventArgs e)
        {
            Button btnBook = (Button)sender;
            GridViewRow row = (GridViewRow)btnBook.NamingContainer;
            int homeId = Convert.ToInt32(row.Cells[0].Text);
            decimal monthlyRent = Convert.ToDecimal(row.Cells[1].Text.Substring(1));

            DateTime startDate = DateTime.Parse(txtStartDate.Text);
            DateTime endDate = DateTime.Parse(txtEndDate.Text);
            TimeSpan duration = endDate - startDate;
            decimal totalRent = monthlyRent * (decimal)duration.TotalDays / 30;

            string connectionString = "server=localhost;user id=root;database=homerental";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                string query = "INSERT INTO bookings(home_id, renter_id, start_date, end_date, monthly_rent, total_rent) " +
                    "VALUES (@homeId, @renterId, @startDate, @endDate, @monthlyRent, @totalRent)";
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@homeId", homeId);
                cmd.Parameters.AddWithValue("@renterId", Session["UserId"]);
                cmd.Parameters.AddWithValue("@startDate", startDate);
                cmd.Parameters.AddWithValue("@endDate", endDate);
                cmd.Parameters.AddWithValue("@monthlyRent", monthlyRent);
                cmd.Parameters.AddWithValue("@totalRent", totalRent);
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("mybook.aspx");
        }*/



    }
}