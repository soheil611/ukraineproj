using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirlineReservation
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Server=tcp:ukraineser.database.windows.net,1433;Initial Catalog=ukrainedb;Persist Security Info=False;User ID=ukraineadm;Password=Ukrainepass@123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            SqlCommand cmd = new SqlCommand("Select * from Users where Name=@name and Password=@password", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@name", txtlUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            con.Open();
            SqlDataAdapter sdra = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sdra.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["Name"] = ds.Tables[0].Rows[0]["Name"].ToString();
                Session["Email"] = ds.Tables[0].Rows[0]["Email"].ToString();
                Response.Redirect("Default.aspx");
               
            }
            else
            {
                Response.Write("<script>alert('User name or password not working.');</script>");
            }
        }
    }
}