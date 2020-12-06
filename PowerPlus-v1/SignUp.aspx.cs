using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PowerPlus_v1
{
   public class personData
    {
        private string phoneNumberSTR;
        private string fullNameSTR;
        private string emailSTR;
        private string passwordSTR;
        private string confirm_passwordSTR;
        private string addressSTR;
        private string dateSTR;

        public personData(string fullNameSTR, string emailSTR, string passwordSTR, string confirm_passwordSTR,
             string addressSTR, string dateSTR, string phoneNumberSTR)
        {
            this.FullNameSTR =fullNameSTR;
            this.EmailSTR = emailSTR;
            this.PasswordSTR = passwordSTR;
            this.Confirm_passwordSTR = confirm_passwordSTR;
            this.AddressSTR = addressSTR;
            this.DateSTR = dateSTR;
            this.PhoneNumberSTR = phoneNumberSTR;
        }

        public string PhoneNumberSTR { get => phoneNumberSTR; set => phoneNumberSTR = value; }
        public string FullNameSTR { get => fullNameSTR; set => fullNameSTR = value; }
        public string EmailSTR { get => emailSTR; set => emailSTR = value; }
        public string PasswordSTR { get => passwordSTR; set => passwordSTR = value; }
        public string Confirm_passwordSTR { get => confirm_passwordSTR; set => confirm_passwordSTR = value; }
        public string AddressSTR { get => addressSTR; set => addressSTR = value; }
        public string DateSTR { get => dateSTR; set => dateSTR = value; }
    }
    public partial class SignUp : System.Web.UI.Page
    {
        private personData personData_PersonData;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getPersonData();
            if (checkPersonData())
                setPersonDataDB();
        }

        private bool checkPersonData()
        {
            if (personData_PersonData.FullNameSTR.Equals("") || personData_PersonData.EmailSTR.Equals("") || personData_PersonData.PasswordSTR.Equals("") ||
                 personData_PersonData.Confirm_passwordSTR.Equals("") || personData_PersonData.AddressSTR.Equals("") || personData_PersonData.DateSTR.Equals("") ||
                  personData_PersonData.PhoneNumberSTR.Equals(""))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('أدخلي جميع الحقول');", true);
                return false;
            }
            else if (!emailIsVaild())
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('الايميل مسجل من قبل');", true);
                return false;
            }
            else if (personData_PersonData.PasswordSTR != personData_PersonData.Confirm_passwordSTR)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('كلمة السر غير متطابقة');", true);
                return false;
            }
            return true;
        }

        private bool emailIsVaild()
        {
            SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString);
            try
            {
                string query = "select * from UsersV1 ";
                query += " where email = @email";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myCommand.Parameters.AddWithValue("@email", personData_PersonData.EmailSTR);
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                using (SqlDataReader reader = myCommand.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        return false;
                    }
                }
            }
            catch (SqlException)
            {
            }
            finally
            {
                myConnection.Close();
            }
            return true;
        }

        private void setPersonDataDB()
        {
            SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString);
            try
            {
                string query = "INSERT INTO UsersV1 (fullName, email, password, re_password, address, date, phone)";
                query += " VALUES (@fullName, @email, @password, @re_password, @address, @date, @phone)";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myCommand.Parameters.AddWithValue("@fullName", personData_PersonData.FullNameSTR);
                myCommand.Parameters.AddWithValue("@email", personData_PersonData.EmailSTR);
                myCommand.Parameters.AddWithValue("@password", personData_PersonData.PasswordSTR);
                myCommand.Parameters.AddWithValue("@re_password", personData_PersonData.Confirm_passwordSTR);
                myCommand.Parameters.AddWithValue("@address", personData_PersonData.AddressSTR);
                myCommand.Parameters.AddWithValue("@date", personData_PersonData.DateSTR);
                myCommand.Parameters.AddWithValue("@phone", personData_PersonData.PhoneNumberSTR);
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('تم بنجاح');", true);
                Server.Transfer("~/SignIn.aspx");
            }
            catch (SqlException)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('حدث خطأ أثناء إرسال البيانات');", true);
            }
            finally
            {
                myConnection.Close();
            }
        }

        private void getPersonData()
        {
            string fullNameSTR = fullNameINP.Value.ToString().Trim();
            string emailSTR = emailINP.Value.ToString().Trim();
            string passwordSTR = passwordINP.Value.ToString().Trim();
            string confirm_passwordSTR = confirm_passwordINP.Value.ToString().Trim();
            string addressSTR = addressINP.Value.ToString().Trim();
            string dateSTR = dateINP.Value.ToString().Trim();
            string phoneNumberSTR = phoneNumberINP.Value.ToString().Trim();
            personData_PersonData = new personData(fullNameSTR, emailSTR, passwordSTR, confirm_passwordSTR, addressSTR, dateSTR, phoneNumberSTR);
        }
    }
}