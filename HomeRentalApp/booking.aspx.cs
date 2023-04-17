using System;
using System.Collections.Specialized;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;

namespace HomeRentalApp
{
    public partial class booking : System.Web.UI.Page
    {
        /*        protected void Page_Load(object sender, EventArgs e)
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
        */
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["home_id"] != null)
                {
                    int homeId = int.Parse(Request.QueryString["home_id"]);

                    string connectionString = "server=localhost;user id=root;database=homerental";
                    using (MySqlConnection connection = new MySqlConnection(connectionString))
                    {
                        connection.Open();

                        string query = "SELECT home_name, price_per_month FROM homes WHERE home_id = @homeId";
                        MySqlCommand cmd = new MySqlCommand(query, connection);
                        cmd.Parameters.AddWithValue("@homeId", homeId);

                        MySqlDataReader reader = cmd.ExecuteReader();
                        if (reader.Read())
                        {
                            txtHomeName.Text = reader.GetString("home_name");
                            txtPricePerMonth.Text = reader.GetDecimal("price_per_month").ToString();
                        }
                        reader.Close();
                    }
                }
            }
        }
        protected void btnConfirmBooking_Click(object sender, EventArgs e)
        {
            // Read the form values
            NameValueCollection nv = Request.Form;
            int homeId = int.Parse(Request.QueryString["home_id"]);
            int renterId = (int)Session["UserId"];
            /*  DateTime startDate = DateTime.ParseExact(txtStartDate.Value, "yyyy-MM-dd", CultureInfo.InvariantCulture);
              DateTime endDate = DateTime.ParseExact(txtEndDate.Value, "yyyy-MM-dd", CultureInfo.InvariantCulture);*/
            DateTime startDate;
            DateTime endDate = DateTime.MinValue; ;
            decimal monthlyRent = decimal.Parse(Request.Form["txtPricePerMonth"]);
            decimal totalRent = decimal.Parse(Request.Form["txttotalrent"]);
            int phoneno = int.Parse(exampleNumberInput.Value);
            int noOfMonths = int.Parse(noofmonths.Value); // Get the number of months entered by the user
            if (DateTime.TryParseExact(txtStartDate.Value, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out startDate)
                && DateTime.TryParseExact(txtEndDate.Value, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out endDate))
            {
                // Both start date and end date were parsed successfully
            }
            else
            {
                // An error occurred while parsing one or both dates
            }
          

            /*  if (!string.IsNullOrEmpty(Request.Form["end-date"]))
              {
                  endDate = DateTime.Parse(Request.Form["end-date"]);
              }*/
           
            // Create a new connection to the database
            string connectionString = "server=localhost;user id=root;database=homerental";
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            // Create a new SQL command to insert the data into the bookings table
            string insertQuery = "INSERT INTO bookings (home_id, renter_id, start_date, end_date, monthly_rent, total_rent, phoneno) VALUES (@HomeId, @RenterId, @StartDate, @EndDate, @MonthlyRent, @TotalRent, @PhoneNo)";
            MySqlCommand command = new MySqlCommand(insertQuery, connection);

            // Add parameters to the SQL command
            command.Parameters.AddWithValue("@HomeId", homeId);
            command.Parameters.AddWithValue("@RenterId", renterId);
            command.Parameters.AddWithValue("@StartDate", startDate);
            command.Parameters.AddWithValue("@EndDate", endDate);
            command.Parameters.AddWithValue("@MonthlyRent", monthlyRent);
            command.Parameters.AddWithValue("@TotalRent", totalRent);
            command.Parameters.AddWithValue("@PhoneNo", phoneno);

            // Execute the SQL command
            command.ExecuteNonQuery();

            // Close the database connection
            connection.Close();
        }



    }
}