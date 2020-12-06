using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PowerPlus_v1
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signIn_Click(object sender, EventArgs e)
        {
            string emailSTR = emailINP.Value.ToString().Trim();
            string passwordSTR = passwordINP.Value.ToString().Trim();
            bool isValid = isValidUser(emailSTR,passwordSTR);
            if(isValid)
                Server.Transfer("~/index.aspx");
        }

        private bool isValidUser(string emailSTR, string passwordSTR)
        {
            SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString);
            try
            {
                string query = "select id, email, password from UsersV1 where email = ";
                query += "@email" + " AND password = " + "@password";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myCommand.Parameters.AddWithValue("@email", emailSTR);
                myCommand.Parameters.AddWithValue("@password", passwordSTR);
                myConnection.Open();
                using (SqlDataReader reader = myCommand.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string emailDB = reader["email"].ToString();
                        if (emailSTR == emailDB)
                        {
                            Session["enter_permission"] = reader["id"].ToString();
                            return true;
                        }
                    }
                }
            }
            catch (SqlException)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('حدث خطأ أثناء الدخول');", true);
            }
            finally
            {
                myConnection.Close();   
            }
            return false;
        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/SignUp.aspx");
        }
    }
}