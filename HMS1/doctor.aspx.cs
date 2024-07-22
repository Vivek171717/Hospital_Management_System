using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

namespace HMS1
{
    public partial class doctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cstr"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into doctor values (@ID,@Name,@Specialization,@CheckupFees)", con);
            cmd.Parameters.AddWithValue("@ID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Specialization", TextBox3.Text);
            cmd.Parameters.AddWithValue("@CheckupFees", TextBox4.Text);
          

            int rowsAffected = cmd.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                Label5.Text = "Record added successfully!!!!!";
                BindGrid();
            }
            else
            {
                Label5.Text = "No records were  added!!!!!";
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            con.Close();

        }
        private void BindGrid()
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cstr"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from doctor", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cstr"].ConnectionString);
            con.Open();
            try
            { 
                SqlCommand cmd = new SqlCommand("delete from doctor where ID=@ID", con);
                cmd.Parameters.AddWithValue("@ID", TextBox1.Text);
                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    Label5.Text = "Record deleted successfully!";
                }
                else
                {
                    Label5.Text = "No record found with the given ID!";
                }
                BindGrid();
            }
            catch (Exception ex)
            {     
                Label5.Text = "An error occurred: " + ex.Message;
            }
            finally
            {   
                con.Close();
            }
            TextBox1.Text = "";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cstr"].ConnectionString);
            con.Open();
            try
            {
                // Prepare the UPDATE command
                SqlCommand cmd = new SqlCommand("UPDATE doctor SET Name = @Name, Specialization = @Specialization, CheckupFees = @CheckupFees WHERE ID = @ID", con);
                cmd.Parameters.AddWithValue("@ID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Specialization", TextBox3.Text);
                cmd.Parameters.AddWithValue("@CheckupFees", TextBox4.Text);

                // Execute the UPDATE command
                int rowsAffected = cmd.ExecuteNonQuery();

                // Check if the record was successfully updated
                if (rowsAffected > 0)
                {
                    Label5.Text = "Record updated successfully!";
                }
                else
                {
                    Label5.Text = "No record found with the given ID!";
                }

                // Update the GridView
                BindGrid();
            }
            catch (Exception ex)
            {
                // Handle any errors that may have occurred
                Label5.Text = "An error occurred: " + ex.Message;
            }
            finally
            {
                // Close the database connection
                con.Close();
            }

            // Clear the text boxes
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}