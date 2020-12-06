using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PowerPlus_v1
{
    public partial class index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["enter_permission"] != null)
                login_BTN.Visible = false;

            //if(Session["enter_permission"] == null)
            //    Server.Transfer("~/SignIn.aspx");
                setSports();
            setPopUpSports();
        }

        private void setPopUpSports()
        {
            //Control control = FindControl("sports_container");
            StringBuilder sb = new StringBuilder();
            SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString);
            try
            {
                string query = "select s.id as IDSport, s.name as nameSport, s.image as imageSport, s.price as priceSport, s.validate as validateSport, s.show as showSport, s.description as descriptionSport, " +
                    "es.id as IDTable, es.sat as sat, es.sun as sun, es.mon as mon, es.tues as tues, es.wed as wed, es.thurs as thurs, es.fri as fri, es.id_sport as id_sport " +
                    "from Sports s, ExerciseSchedule es ";
                query += "where s.id = es.id_sport";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myConnection.Open();
                using (SqlDataReader reader = myCommand.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        //data
                        string IDSportSTR = reader["IDSport"].ToString();
                        string nameSportSTR = reader["nameSport"].ToString();
                        Byte[] image = (byte[])reader["imageSport"];
                        string imageSRC = Convert.ToBase64String(image);
                        string priceSportSTR = reader["priceSport"].ToString();
                        string validateSportSTR = reader["validateSport"].ToString();
                        bool showSportBL = Boolean.Parse(reader["showSport"].ToString());
                        string descriptionSportSTR = reader["descriptionSport"].ToString();

                        //table
                        string IDTableSTR = reader["IDTable"].ToString();
                        string satSTR = reader["sat"].ToString();
                        string sunSTR = reader["sun"].ToString();
                        string monSTR = reader["mon"].ToString();
                        string tuesSTR = reader["tues"].ToString();
                        string wedSTR = reader["wed"].ToString();
                        string thursSTR = reader["thurs"].ToString();
                        string friSTR = reader["fri"].ToString();
                        string id_sportSTR = reader["id_sport"].ToString();
                        if (showSportBL)
                        {
                            sb.Append(
                            string.Format(
                                   @"<div class=""portfolio - modal modal fade"" runat=""server"" id=""portfolioModal{2}"" tabindex=""-1"" role=""dialog"" aria-hidden=""true"">
                                        <div class=""modal-dialog"" style=""max-width:1000px;"">
                                            <div class=""modal-content"">
                                                <div class=""close-modal"" data-dismiss=""modal"">
                                                    <div class=""lr"">
                                                        <div class=""rl""></div>
                                                    </div>
                                                </div>
                                                <div class=""container"">
                                                    <div class=""row"">
                                                        <div class=""col-lg-8 mx-auto"">
                                                            <div class=""modal-body"" style=""text-align: center;"">
                                                                <h2 class=""text-uppercase"" style=""text-align: center;"">{3}</h2>
                                                                <img class=""img-fluid d-block mx-auto"" src=""data:Image/png;base64,{0}"" alt="""" />
                                                                <p style = ""text-align: center;"" >{5}</p>
                                                                <section class=""schedule - area section - gap"" id=""schedule"">
                                                                                <div class=""container"">
					                                                                <div class=""row d-flex justify-content-center"">
						                                                                <div class=""menu-content pb-70 col-lg-8"">
							                                                                <div class=""title text-center"">
								                                                                <h1 class=""mb-10""></h1>
							                                                                </div>
						                                                                </div>
					                                                                </div>						
					                                                                <div class=""row"">
						                                                                <div class=""table-wrap col-lg-12"">
							                                                                <table class=""schdule-table table table-bordered"">
								                                                                  <thead class=""thead-light"">
								                                                                    <tr>
								                                                                      <th class=""head"" scope=""col"">الايام</th>
								                                                                      <th class=""head"" scope=""col"">السبت</th>
								                                                                      <th class=""head"" scope=""col"">الاحد</th>
								                                                                      <th class=""head"" scope=""col"">الأثنين</th>
								                                                                      <th class=""head"" scope=""col"">الثلاثاء</th>
								                                                                      <th class=""head"" scope=""col"">الأربعاء</th>
                                                                                                      <th class=""head"" scope=""col"">الخميس</th>
                                                                                                      <th class=""head"" scope=""col"">الجمعة</th>
								                                                                    </tr>
								                                                                  </thead>
								                                                                  <tbody>
								                                                                    <tr>
								                                                                      <th class=""name"" scope=""row"">المواعيد</th>
								                                                                      <td>{6}</td>				      
								                                                                      <td>{7}</td>				      
								                                                                      <td>{8}</td>				      
								                                                                      <td>{9}</td>				      
								                                                                      <td>{10}</td>	
                                                                                                      <td>{11}</td>				      
								                                                                      <td>{12}</td>	
								                                                                    </tr>				    							    							    
								                                                                  </tbody>
							                                                                </table>							
						                                                                </div>
					                                                                </div>
				                                                                </div>	
			                                                                </section>
                                                                <button class=""btn btn-primary"" data-dismiss=""modal"" type=""button"">أشترك</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>", imageSRC, validateSportSTR, IDSportSTR, nameSportSTR, priceSportSTR, descriptionSportSTR, satSTR, sunSTR,monSTR,tuesSTR,wedSTR,thursSTR,friSTR));
                        }
                    }
                    sports_container.Controls.Add(new LiteralControl() { Text = sb.ToString() });
                }

                //control.Controls.Add(new LiteralControl() { Text = sb.ToString() });

            }
            catch (SqlException)
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('حدث خطأ أثناء إرسال البيانات');", true);
            }
            finally
            {
                myConnection.Close();
            }

        }

        private void setSports()
        {
            //Control control = FindControl("sports_container");
            StringBuilder sb = new StringBuilder();
            SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString);
            try
            {
                string query = "select * from Sports";
                query += "";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myConnection.Open();
                using (SqlDataReader reader = myCommand.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string idSTR = reader["id"].ToString();
                        string nameSTR = reader["name"].ToString();
                        Byte[] image = (byte[])reader["image"];
                        string imageSRC = Convert.ToBase64String(image);

                        string price = reader["price"].ToString();
                        string validate = reader["validate"].ToString();
                        bool show = Boolean.Parse(reader["show"].ToString());
                        if (show)
                        {
                            sb.Append(
                           string.Format(
                               @"<div class=""col-lg-4 col-md-6"">
                                <div class=""single-course"">
					            <div class=""thumb"">
							    <img class=""img-fluid"" src=""data:Image/png;base64,{0}"" alt=""image""/>
						          </div>
							        <span class=""course-status"">{1}</span>
							    <a data-toggle=""modal"" href=""#portfolioModal{2}"" ><h4>{3}<span>{4} <sub style=""font-size:x-small"">SAR</sub></span></h4></a>
                              </div>
                              </div>", imageSRC, validate, idSTR, nameSTR, price));
                        }
                    }
                    sports_container.Controls.Add(new LiteralControl() { Text = sb.ToString() });
                }

                //control.Controls.Add(new LiteralControl() { Text = sb.ToString() });

            }
            catch (SqlException)
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('حدث خطأ أثناء إرسال البيانات');", true);
            }
            finally
            {
                myConnection.Close();
            }

        }
        
        protected void hopping_cart_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["enter_permission"] != null)
            {
                string userID = Session["enter_permission"].ToString();
                Response.Redirect("~/add_cart.aspx?u_id=" + userID);
            }
            else
            {
                Server.Transfer("~/SignIn.aspx");
            }
        }

        protected void login_BTN_onClick(object sender, EventArgs e)
        {
            if (Session["enter_permission"] == null)
                Server.Transfer("~/SignIn.aspx");
        }
    }
}
//<section class=""schedule - area section - gap"" id=""schedule"">
//                < div class=""container"">
//					<div class=""row d-flex justify-content-center"">
//						<div class=""menu-content pb-70 col-lg-8"">
//							<div class=""title text-center"">
//								<h1 class=""mb-10"">جدول الكورسات التدريبية</h1>
//							</div>
//						</div>
//					</div>						
//					<div class=""row"">
//						<div class=""table-wrap col-lg-12"">
//							<table class=""schdule-table table table-bordered"">
//								  <thead class=""thead-light"">
//								    <tr>
//								      <th class=""head"" scope=""col"">اسم الكورس</th>
//								      <th class=""head"" scope=""col"">السبت</th>
//								      <th class=""head"" scope=""col"">الاحد</th>
//								      <th class=""head"" scope=""col"">الأثنين</th>
//								      <th class=""head"" scope=""col"">الثلاثاء</th>
//								      <th class=""head"" scope=""col"">الأربعاء</th>
//                                      <th class=""head"" scope=""col"">الخميس</th>
//                                      <th class=""head"" scope=""col"">الجمعة</th>
//								    </tr>
//								  </thead>
//								  <tbody>
//								    <tr>
//								      <th class=""name"" scope=""row"">المواعيد</th>
//								      <td>10.00 <br/> 02.00</td>				      
//								      <td>10.00 <br/> 02.00</td>				      
//								      <td>10.00 <br/> 02.00</td>				      
//								      <td>10.00 <br/> 02.00</td>				      
//								      <td>10.00 <br/> 02.00</td>	
//                                      <td>10.00 <br/> 02.00</td>				      
//								      <td>10.00 <br/> 02.00</td>	
//								    </tr>				    							    							    
//								  </tbody>
//							</table>							
//						</div>
//					</div>
//				</div>	
//			</section>