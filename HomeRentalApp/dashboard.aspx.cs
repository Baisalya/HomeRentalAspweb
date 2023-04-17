using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeRentalApp
{
    public partial class dashboard : System.Web.UI.Page
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
                else { Response.Redirect("login.aspx"); }
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