using System;
using System.Data.SqlClient;

namespace YourNamespace
{
    public partial class EmployeeStats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["stats_id"] != null)
                {
                    int statsId = Convert.ToInt32(Request.QueryString["stats_id"]);
                    LoadEmployeeStats(statsId);
                }
                else
                {
                    lblMessage.Text = "Stats ID not provided.";
                }
            }
        }

        private void LoadEmployeeStats(int statsId)
        {
            string connectionString = "Server=localhost;Database=practice;Integrated Security=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("SELECT Name, Height, Sex, Performance, Achievements FROM EmployeeStats WHERE stats_id = @EmployeeID", connection);
                command.Parameters.AddWithValue("@EmployeeID", statsId);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    lblName.Text = reader["Name"].ToString();
                    lblHeight.Text = reader["Height"].ToString();
                    lblSex.Text = reader["Sex"].ToString();
                    lblPerformance.Text = reader["Performance"].ToString();
                    lblAchievements.Text = reader["Achievements"].ToString();
                }
                else
                {
                    lblMessage.Text = "Employee not found.";
                }
            }
        }
    }
}
