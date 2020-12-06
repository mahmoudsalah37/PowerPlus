using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PowerPlus_v1
{
    public partial class LodeImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["Image"].ToString()))
            {
                string id = Request.QueryString["id"];
                string str = null;
                str = "SELECT image FROM Sports WHERE id = @id";



                SqlConnection con = new SqlConnection(ConnectionString.connectionString);
                SqlCommand com = new SqlCommand(str, con);

                com.Parameters.Add("@id", SqlDbType.Int).Value = Int32.Parse(id);

                con.Open();
                SqlDataReader r = com.ExecuteReader();

                if (r.Read())
                {
                    byte[] imgData = (byte[])r["image"];

                    Response.BinaryWrite(imgData);
                }
                con.Close();
            }
        }
    }
}