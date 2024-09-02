using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace YourNamespace
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            string connectionString = "Server=localhost;Database=practice;Integrated Security=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("SELECT employee_id, First_Name, Last_Name, Age, Salary FROM Employee_details", connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int statsId = Convert.ToInt32(GridView1.SelectedDataKey.Value);
            Response.Redirect("EmployeeStats.aspx?stats_id=" + statsId);
        }
    }
}
