using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SkillAssessment2
{
    public partial class Register : System.Web.UI.Page
    {
        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_User_Add", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                    cmd.Parameters.AddWithValue("@UserNo", int.Parse(txtUserNo.Text));

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            lblMessage.Text = "Record added successfully!";
            txtUserName.Text = "";
            txtUserNo.Text = "";
        }
    }
}