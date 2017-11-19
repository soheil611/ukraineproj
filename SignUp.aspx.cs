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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Server=tcp:ukraineser.database.windows.net,1433;Initial Catalog=ukrainedb;Persist Security Info=False;User ID=ukraineadm;Password=Ukrainepass@123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            SqlCommand cmd = new SqlCommand("insert into [Users] values (@name,@email,@password)", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@name", txtlUsername.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('User profile genrated successfully.');</script>");
        }
    }
}