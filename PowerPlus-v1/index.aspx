<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PowerPlus_v1.index" %>

<!DOCTYPE html >

<html xmlns="http://www.w3.org/1999/xhtml" lang="zxx" class="no-js" >
<head runat="server">

   <!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png"/>
		<!-- Author Meta -->
		<meta name="author" content="codepixer"/>
		<!-- Meta Description -->
		<meta name="description" content=""/>
		<!-- Meta Keyword -->
		<meta name="keywords" content=""/>
		<!-- meta character set -->
		<meta charset="UTF-8"/>
		<!-- Site Title -->
		<title>Power plus</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"/> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css"/>
			<link rel="stylesheet" href="css/font-awesome.min.css"/>
			<link rel="stylesheet" href="css/bootstrap.css"/>
			<link rel="stylesheet" href="css/magnific-popup.css"/>
			<link rel="stylesheet" href="css/nice-select.css"/>					
			<link rel="stylesheet" href="css/animate.min.css"/>
			<link rel="stylesheet" href="css/owl.carousel.css"/>
			<link rel="stylesheet" href="css/main.css"/>
</head>
<body>
    <form id="form1" runat="server">
			  <header id="header" id="home">
			    <div class="container">
			    	<div class="row header-top align-items-center">
							       <%--<asp:ImageButton ID="img_Shopping_cart" runat="server" ImageUrl="~/img/Shopping_cart.png" Height="25px" Width="25px" Visible="true" OnClick="img_Shopping_cart_Click" />--%>
                                    <asp:ImageButton ID="hopping_cart" ImageUrl="~/img/Shopping_cart.png" Height="25px" Width="25px"  runat="server" OnClick="hopping_cart_Click" />
			    		<div class="col-lg-4 col-sm-4 menu-top-left">
			    			<span>
                               <h4>نؤمن بأننا نستطيع أن نساعد الناس</h4>
			    			 <h4>لحياة أكثر سعادة</h4>
								
			    			</span>
			    		</div>
			    		<div class="col-lg-4 menu-top-middle justify-content-center d-flex">
							<a href="index.html">
								<img class="img-fluid" src="img/Logo.jpg" alt=""/>	
							</a>			    			
			    		</div>
			    		<%--<div class="col-lg-4 col-sm-4 menu-top-right">
			    			<a class="tel" href="tel:+880 123 12 658 439">+880 123 12 658 439</a>
			    			<a href="tel:+880 123 12 658 439"><span class="lnr lnr-phone-handset"></span></a>
			    		</div>--%>
                    <asp:Button  runat="server" style="margin-left:auto;border:0px;background-color:#808080;" ID="login_BTN" runat="server" Text="تسجيل" OnClick="login_BTN_onClick" />
			    	</div>

			    </div>	
			    	<hr/>
			    <div class="container" dir="rtl">	
			    	<div class="row align-items-center justify-content-center d-flex">
				      <nav id="nav-menu-container">
				        <ul class="nav-menu" dir="rtl">
				          <li class="menu-active"><a href="#home">الرئيسية</a></li>
				          <li><a href="#offer">نحن نساعدك</a></li>
				          <li><a href="#top-course">الكورسات</a></li>				          
				       <%--   <li><a href="#schedule">المواعيد</a></li>--%>
				          <li><a href="#trainer">المدربين</a></li>
				          <%--<li><a href="#plan">الخطة</a></li>--%>
<%--				          <li class="menu-has-children"><a href="">الصفحة</a>
				            <ul>
				              <li><a href="generic.html">Generic</a></li>
				              <li><a href="elements.html">Elements</a></li>
				            </ul>
				          </li>--%>
				        </ul>
				      </nav><!-- #nav-menu-container -->		    		
			    	</div>
			    </div>
			  </header><!-- #header -->

			<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>		
				<div class="container">
					<div class="row fullscreen d-flex align-items-center justify-content-start">
						<div class="banner-content col-lg-12 col-md-12">
							<h1 class="text-uppercase">
								الملاءمة الحقيقية <br/>
								تعتمد علي التمرين				
							</h1>
							<p class="text-white text-uppercase pt-20 pb-20">
								أجعلي جسدك في مظهر رائع
							</p>
						</div>												
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start offer Area -->
			<section class="offer-area section-gap" id="offer">
				<div class="container">	
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class=" mb-10">نحن نهتم بما نقدمه</h1>
								<p>الذين هم في الحب للغاية مع نظام صديق للبيئة</p>
							</div>
						</div>
					</div>									
					<div class="row">
						<div class="col-lg-4">
							<div class="single-offer">
								<img class="img-fluid" src="img/o1.png" alt=""/>
								<h4>تمرين منتظم</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore 
								</p>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-offer">
								<img class="img-fluid" src="img/o2.png" alt=""/>
								<h4>الذهاب للتمريين</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore 
								</p>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-offer">
								<img class="img-fluid" src="img/o3.png" alt=""/>
								<h4>بناء الجسم</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
								</p>
							</div>
						</div>												
					</div>
				</div>	
			</section>
			<!-- End offer Area -->
			
			<!-- Start convert Area -->
			<section class="convert-area" id="convert">
				<div class="container">
					<div class="convert-wrap">
						<div class="row d-flex justify-content-center">
							<div class="menu-content pb-70 col-lg-8">
								<div class="title text-center">
									<h1 class="text-white mb-10">Calclulate Your Body Mass Index</h1>
									<p class="text-white">Who are in extremely love with eco friendly system.</p>
								</div>
							</div>
						</div>						
						<div class="row justify-content-center align-items-start">
							<div class="col-lg-3 col-md-6 cols-img">
								<input type="text" name="feet" placeholder="Your Height (inches)" class="form-control mb-20"/>
							</div>
							<div class="col-lg-3 col-md-6 cols">
								<input type="text" name="pounds" placeholder="Your Weight (ibs)" class="form-control mb-20"/>
							</div>
							<div class="col-lg-3 col-md-6 cols">	
								<a href="#" class="primary-btn header-btn text-uppercase">Calculate Your BMI</a>
							</div>
						</div>						
					</div>
				</div>	
			</section>
			<!-- End convert Area -->

			<!-- Start top-course Area -->
			<section class="top-course-area section-gap" id="top-course">
				<div  class="container" runat="server">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-9">
							<div class="title text-center">
								<h1 class="mb-10">الدورات</h1>
								<%--<p>Who are in extremely love with eco friendly system.</p>--%>
							</div>
						</div>
					</div>											
					<div id="sports_container" class="row" runat="server">
<%--                        <div class="col-lg-4 col-md-6">
							<div class="single-course">
								<div class="thumb">
									<img class="img-fluid" src="img/c1.jpg" alt=""/>
								</div>
								<span class="course-status">الدورة متاحة</span>
								<a  data-toggle="modal" href="#portfolioModal"><h4>فئة الجري <span>$275</span></h4></a>
							</div>
						</div>--%>
<%--						<div class="col-lg-4 col-md-6">
							<div class="single-course">
								<div class="thumb">
									<img class="img-fluid" src="img/c1.jpg" alt=""/>
								</div>
								<span class="course-status">الدورة متاحة</span>
								<a href="#"><h4>فئة الجري <span>$275</span></h4></a>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-course">
								<div class="thumb">
									<img class="img-fluid" src="img/c2.jpg" alt=""/>
								</div>
								<span class="course-status">الدورة متاحة</span>
								<a href="#"><h4>فئة رفع الأثقال <span>$200</span></h4></a>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-course">
								<div class="thumb">
									<img class="img-fluid" src="img/c3.jpg" alt=""/>
								</div>
								<span class="course-status">الدورة متاحة</span>
								<a href="#"><h4>فئة تنحيف الجسد <span>$225</span></h4></a>
							</div>
						</div>	
						<div class="col-lg-4 col-md-6">
							<div class="single-course">
								<div class="thumb">
									<img class="img-fluid" src="img/c4.jpg" alt=""/>
								</div>
								<span class="course-status">الدورة متاحة</span>
								<a href="#"><h4>فئة اليوجا الأساسية <span>$300</span></h4></a>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-course">
								<div class="thumb">
									<img class="img-fluid" src="img/c5.jpg" alt=""/>
								</div>
								<span class="course-status">الدورة متاحة</span>
								<a href="#"><h4>فئة تقسيم الجسد <span>$500</span></h4></a>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-course">
								<div class="thumb">
									<img class="img-fluid" src="img/c6.jpg" alt=""/>
								</div>
								<span class="course-status">الدورة متاحة</span>
								<a href="#"><h4>فئة بناء الجسم <span>$250</span></h4></a>
							</div>
						</div>	--%>																	
					</div>
				</div>	
			</section>
			<!-- End top-course Area -->
							

			<!-- Start feature Area -->
			<section class="feature-area">
				<div class="container-fluid">
					<div class="row justify-content-center align-items-center">
						<div class="col-lg-3 feat-img no-padding">
							<img class="img-fluid" src="img/f1.jpg" alt=""/>
						</div>
						<div class="col-lg-3 no-padding feat-txt">
							<h6 class="text-uppercase text-white">Basic & Common Repairs</h6>
							<h1>Basic Revolutions</h1>
							<p>
								Computer users and programmers have become so accustomed to using Windows, even for the changing capabilities and the appearances of the graphical.
							</p>
						</div>
						<div class="col-lg-3 feat-img no-padding">
							<img class="img-fluid" src="img/f2.jpg" alt=""/>							
						</div>
						<div class="col-lg-3 no-padding feat-txt">
							<h6 class="text-uppercase text-white">Basic & Common Repairs</h6>
							<h1>Basic Revolutions</h1>
							<p>
								Computer users and programmers have become so accustomed to using Windows, even for the changing capabilities and the appearances of the graphical.
							</p>
						</div>
					</div>
				</div>	
			</section>
			<!-- End feature Area -->

			<!-- Start schedule Area -->
			<%--<section class="schedule-area section-gap" id="schedule">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">جدول الكورسات التدريبية </h1>
							</div>
						</div>
					</div>						
					<div class="row">
						<div class="table-wrap col-lg-12">
							<table class="schdule-table table table-bordered">
								  <thead class="thead-light">
								    <tr>
								      <th class="head" scope="col">اسم الكورس</th>
								      <th class="head" scope="col">السبت</th>
								      <th class="head" scope="col">الاحد</th>
								      <th class="head" scope="col">الأثنين</th>
								      <th class="head" scope="col">الثلاثاء</th>
								      <th class="head" scope="col">الأربعاء</th>
                                      <th class="head" scope="col">الخميس</th>
                                      <th class="head" scope="col">الجمعة</th>
								    </tr>
								  </thead>
								  <tbody>
								    <tr>
								      <th class="name" scope="row">المواعيد</th>
								      <td>10.00 <br/> 02.00</td>				      
								      <td>10.00 <br/> 02.00</td>				      
								      <td>10.00 <br/> 02.00</td>				      
								      <td>10.00 <br/> 02.00</td>				      
								      <td>10.00 <br/> 02.00</td>	
                                      <td>10.00 <br/> 02.00</td>				      
								      <td>10.00 <br/> 02.00</td>	
								    </tr>				    							    							    
								  </tbody>
							</table>							
						</div>
					</div>
				</div>	
			</section>--%>
			<!-- End schedule Area -->
			
			
			<!-- Start team Area -->
			<section class="team-area section-gap" id="trainer">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">المدربين ذوي الخبرة لدينا</h1>
								<p>نمتلك مدربات ذوات أختصاص ، نصمم لك التمارين التي تناسب أهدافك</p>
							</div>
						</div>
					</div>						
					<div class="row justify-content-center d-flex align-items-center">
						<div class="col-md-3 single-team">
						    <div class="thumb">
						        <img class="img-fluid" src="img/female.png" alt=""/>
						        <div class="align-items-center justify-content-center d-flex">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-linkedin"></i></a>
						        </div>
						    </div>
						    <div class="meta-text mt-30 text-center">
							    <h4>نرمين وليد</h4>
							    <p>متخصصة القوة</p>									    	
						    </div>
						</div>
						<div class="col-md-3 single-team">
						    <div class="thumb">
						        <img class="img-fluid" src="img/male.png" alt=""/>
						        <div class="align-items-center justify-content-center d-flex">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-linkedin"></i></a>
						        </div>
						    </div>
						    <div class="meta-text mt-30 text-center">
							    <h4>علاء الدين يوسف</h4>
							    <p>مدرب اللياقة</p>			    	
						    </div>
						</div>	
						<div class="col-md-3 single-team">
						    <div class="thumb">
						        <img class="img-fluid" src="img/female.png" alt=""/>
						        <div class="align-items-center justify-content-center d-flex">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-linkedin"></i></a>
						        </div>
						    </div>
						    <div class="meta-text mt-30 text-center">
							    <h4>أسماء صفوت علي</h4>
							    <p>مسئول النشاط والتغدية</p>			    	
						    </div>
						</div>	
						<div class="col-md-3 single-team">
						    <div class="thumb">
						        <img class="img-fluid" src="img/male.png" alt=""/>
						        <div class="align-items-center justify-content-center d-flex">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-linkedin"></i></a>
                                    <%--<sub style="font-size:xx-small"></sub>--%>
						        </div>
						    </div>
						    <div class="meta-text mt-30 text-center">
							    <h4>عبد الله كامل</h4>
							    <p>مدرب التخسيس</p>			    	
						    </div>
						</div>																		
					</div>
				</div>	
			</section>
			<!-- End team Area -->	

			<!-- Start price Area -->
<%--			<section class="price-area pt-100" id="plan">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-60 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Choose the Perfect Plan for you</h1>
								<p>Who are in extremely love with eco friendly system.</p>
							</div>
						</div>
					</div>					
					<div class="row">
						<div class="col-lg-4">
							<div class="single-price">
								<div class="top-sec d-flex justify-content-between">
									<div class="top-left">
										<h4>Standard</h4>
										<p>For the <br/>individuals</p>
									</div>
									<div class="top-right">
										<h1>£199</h1>
									</div>
								</div>
								<div class="bottom-sec">
									<p>
										“Few would argue that, despite the advancements
									</p>
								</div>
								<div class="end-sec">
									<ul>
										<li>2.5 GB Free Photos</li>
										<li>Secure Online Transfer Indeed</li>
										<li>Unlimited Styles for interface</li>
										<li>Reliable Customer Service</li>
										<li>Manual Backup Provided</li>
									</ul>
									<button class="primary-btn price-btn mt-20">Purchase Plan<span class="lnr lnr-arrow-right"></span></button>
								</div>								
							</div> 
						</div>
						<div class="col-lg-4">
							<div class="single-price">
								<div class="top-sec d-flex justify-content-between">
									<div class="top-left">
										<h4>Business</h4>
										<p>For the <br/>small Company</p>
									</div>
									<div class="top-right">
										<h1>£399</h1>
									</div>
								</div>
								<div class="bottom-sec">
									<p>
										“Few would argue that, despite the advancements
									</p>
								</div>
								<div class="end-sec">
									<ul>
										<li>2.5 GB Free Photos</li>
										<li>Secure Online Transfer Indeed</li>
										<li>Unlimited Styles for interface</li>
										<li>Reliable Customer Service</li>
										<li>Manual Backup Provided</li>
									</ul>
									<button class="primary-btn price-btn mt-20">Purchase Plan<span class="lnr lnr-arrow-right"></span></button>
								</div>								
							</div> 
						</div>	
						<div class="col-lg-4">
							<div class="single-price">
								<div class="top-sec d-flex justify-content-between">
									<div class="top-left">
										<h4>Ultimate</h4>
										<p>For the <br/>large Company</p>
									</div>
									<div class="top-right">
										<h1>£499</h1>
									</div>
								</div>
								<div class="bottom-sec">
									<p>
										“Few would argue that, despite the advancements
									</p>
								</div>
								<div class="end-sec">
									<ul>
										<li>2.5 GB Free Photos</li>
										<li>Secure Online Transfer Indeed</li>
										<li>Unlimited Styles for interface</li>
										<li>Reliable Customer Service</li>
										<li>Manual Backup Provided</li>
									</ul>
									<button class="primary-btn price-btn mt-20">Purchase Plan<span class="lnr lnr-arrow-right"></span></button>
								</div>								
							</div> 
						</div>							
																						
					</div>
				</div>	
			</section>--%>
			<!-- End price Area -->			

			<!-- Start brand Area -->
			<%--<section class="brand-area section-gap">
				<div class="container">
					<div class="row logo-wrap">
							<a class="col single-img" href="#">
								<img class="d-block mx-auto" src="img/l1.png" alt=""/>
							</a>
							<a class="col single-img" href="#">
								<img class="d-block mx-auto" src="img/l2.png" alt=""/>
							</a>
							<a class="col single-img" href="#">
								<img class="d-block mx-auto" src="img/l3.png" alt=""/>
							</a>
							<a class="col single-img" href="#">
								<img class="d-block mx-auto" src="img/l4.png" alt=""/>
							</a>
							<a class="col single-img" href="#">
								<img class="d-block mx-auto" src="img/l5.png" alt=""/>
							</a>
					</div>	
				</div>	
			</section>--%>
			<!-- End brand Area -->		

			<!-- Start callto Area -->
			<section class="callto-area section-gap relative">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-12">
							<h1 class="text-white">أصبح عضوأ معنا في باور بلس</h1>
							<p class="text-white pt-20 pb-20">
								نمتلك أسلوب جديد في عالم الصحة النسائي، سواء كنتِ مبتدئة أو تمتلكي لياقة بدنية عالية أو  تعانين من سمنه أنضمي معنا 
فسوف نكون بجانبك  
							</p>
							<a class="primary-btn" href="../SignUp.aspx">سجل الأن</a>							
						</div>
					</div>
				</div>	
			</section>
			<!-- End callto Area -->
			

			<!-- start footer Area -->		
			<footer class="footer-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-3  col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h4>عنا</h4>
								<p>
									رويتنا تتمحور و تتركز على نشر التوعية التي تخص مواضيع الصحة العامة ،
والى إعادة تأهيل المشتركين لي النظر الى نقاط قوتهم و فرض شخصيتهم 
و تفريغ نقاط الضعف بالتمارين المخصصة لهم ،،
ولهذا نحن نتمتع بميزات أكثر من أي مركز رياضي آخر  فنحن نركز على الطاقة الايجابيه ، بالافكار الجديده و نأخذ بعين الاعتبار أفكار مشتركاتنا، فالنادي منهم ولهم ، نحاول قدر المستطاع أن نكون متجددين. 

ومن خلال الابتكار المستمر ننشر الوعي في المجتمع عبر فكرة اتباع نمط حياة صحي يتضمن أكثر من مجرد ممارسة واحدة بل هي منهج متكامل
								</p>
							</div>
						</div>
						<div class="col-lg-4  col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h4>أتصل بينا</h4>
								<p>
									 نمتلك خدمة رد سريع تعمل 24 ساعة بأفضل الخبراء لخدمتك والرد علي أي استفسار بخصوص صحتك و عن التدريبات
								</p>
								<p class="number">
									012-6532-568-9746 <br/>
									012-6532-569-9748
								</p>
							</div>
						</div>						
		<%--				<div class="col-lg-5  col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h4>الأخبار</h4>
								<p>يمكنك الوثوق بنا. نحن فقط نرسل العروض</p>
								<div class="d-flex flex-row" id="mc_embed_signup">
									  <form class="navbar-form" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get">
									    <div class="input-group add-on">
									      	<input class="form-control" name="EMAIL" placeholder="البريد الإلكتروني" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'" required="" type="email"/>
											<div style="position: absolute; left: -5000px;">
												<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text"/>
											</div>
									      <div class="input-group-btn">
									        <button class="genric-btn"><span class="lnr lnr-arrow-right"></span></button>
									      </div>
									    </div>
									      <div class="info mt-20"></div>									    
									  </form>
								</div>
							</div>
						</div>	--%>					
					</div>
					<div class="footer-bottom row">
						<p class="footer-text m-0 col-lg-6">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This Website is built <i class="icon-heart3" aria-hidden="true"></i> by <a href="#" target="_blank">Digital Horizon</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
						<div class="footer-social col-lg-6">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</footer>	
			<!-- End footer Area -->
             <%--model--%>
           <div class="portfolio-modal modal fade" runat="server" id="portfolioModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" style="max-width: 1000px;">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body" style="text-align: center;">
                                    <h2 class="text-uppercase" style="text-align: center;">فئة الجري</h2>
                                    <img class="img-fluid d-block mx-auto" src="img/c1.jpg" alt="" />
                                    <p style="text-align: center;">تفاصيل</p>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <%--<i class="fas fa-behance"></i>--%>
                                        أشترك</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--end model--%>
			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>--%>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>	
			<script src="js/owl.carousel.min.js"></script>			
			<script src="js/jquery.sticky.js"></script>
			<script src="js/jquery.nice-select.min.js"></script>			
			<script src="js/parallax.min.js"></script>	
			<script src="js/waypoints.min.js"></script>
			<script src="js/jquery.counterup.min.js"></script>			
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
                <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Contact form JavaScript -->
        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/contact_me.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/agency.min.js"></script>
    </form>
</body>
</html>
