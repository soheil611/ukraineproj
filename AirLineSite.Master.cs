using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirlineReservation
{
    public partial class AirLineSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                lnkLoginStatus.Text = "Logout";
                lnkUsername.Text = "Hello " + Session["Name"].ToString();
                lnkRegister.Visible = false;
                lnkLogin.Visible = false;
            }
            else
            {
                lnkRegister.Visible = true;
                lnkLogin.Visible = true;
                lnkLoginStatus.Text = "";
                lnkUsername.Text = "";
            }
        }

        protected void lnkLoginStatus_Click(object sender, EventArgs e)
        {
            Session["Name"] = null;
            Session["Email"] = null;
            Response.Redirect("Signin.aspx");
        }
    }
}