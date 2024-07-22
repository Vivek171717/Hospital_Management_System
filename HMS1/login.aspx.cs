using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMS1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=db2;Integrated Security=True;TrustServerCertificate=True");
            con.Open();
            string loginQuery = "SELECT COUNT(*) FROM login WHERE username=@username AND password=@password";
            SqlCommand cmd = new SqlCommand(loginQuery, con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            int count = (int)cmd.ExecuteScalar();
            con.Close();
            if (count > 0)
            {
                //Response.Write("<script>alert('login success');</script>");
                Response.Redirect("doctor.aspx");
            }
            else
            {
                Response.Write("<script>alert('login error');</script>");
            }
        }
    }
}