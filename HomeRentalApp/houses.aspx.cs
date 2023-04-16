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
                if (Request.QueryString["city_id"] != null)
                {
                    int cityId = Convert.ToInt32(Request.QueryString["city_id"]);

                    string connectionString = "server=localhost;user id=root;database=homerental";
                    using (MySqlConnection connection = new MySqlConnection(connectionString))
                    {
                        connection.Open();
                        string query = "SELECT home_name, price_per_month FROM homes WHERE city_id = @cityId";
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

    }
}