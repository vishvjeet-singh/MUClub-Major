<%@page import="com.db.DBConnection"%>
<%@page import="java.sql.Connection"%>
<html>

<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>home index</title>
<!-- Font Awesome Icons -->
<link rel="icon" type="image/x-icon" href="images/Icons/mulogo.png">
<link rel="stylesheet" href="assignment.css" />
<script async src="https://tally.so/widgets/embed.js"></script>
<%-- <%@include file="components/allcss.jsp"%>
 --%>

</head>

<body>

	<%@include file="components/navbar.jsp"%>

	<main>
		<section id="hom" class="poster">
			<div class="poster-div" style="text-align: center">
				<img src="images/Icons/mulogo.png" alt="poster" />
			</div>
			<div class="poster-content">
				<h3 class="h3 content">
					Clubs in <span>MU</span> || Making <span>Future</span> Ready
				</h3>
				<h6 class="h6 summery">Students clubs provide a forum for
					interaction among themselves and the outside world events. However
					varied, it may be formal or informal, but it brings out the passion
					in youngsters and develops their organizational skills. The clubs
					bring about a good balance of work, fun and leisure activities and
					ensure the all-round development of students. The clubs encourage
					students to express their thoughts, feelings, creativity through
					various forms and achieve youth development through its programs.</h6>

				<a target="_blank" href="chat.jsp" style="text-decoration: none"><button class="h5 ">Join
						MU</button></a>
			</div>

			<div class="icon-box">
				<a href="https://www.facebook.com/MITMDS/"> <img
					src="images\Icons\Logos\facebook-fillfacebook.png" alt="facebook"></a>
				<a href="https://www.facebook.com/MITMDS/"><img
					src="images\Icons\Logos\instagram-fillinsta.png" alt="insta"></a>
				<a href=""><img src="images\Icons\Logos\skype-fillskype.png"
					alt="skype"></a> <a href="https://twitter.com/mumandsaur?lang=en"><img
					src="images\Icons\Logos\twitter-filltwitter.png" alt="twitter"></a>

			</div>
		
		</section>



		<!-- section 2 -->
		<section id="abt" class="about">
			<div class="about1">


				<div class="about-parent">


					<div class="about" style="text-align: center">
						<img src="images\Icons\Image.png" alt="about" />
					</div>
					<div class="about-content">
						<div class="content">
							<div class="Us h6 center">Contact Us</div>
							<h4 class="h4 center">
								We Are <span>Making Future Better</span> For Everyone
							</h4>
							<h6 class="h6 center">
								Students Event Clubs are the central hub of student activity.
								They provide an outlet and a stage for the creative juices of
								young minds and hearts. The clubs give you the chance to apply
								classroom learning in the outside world. <br> <br>
								More than 10 clubs.
							</h6>

							<a style="text-decoration: none"
								href="#tally-open=wb7LV6&tally-emoji-text=&#128075;&tally-emoji-animation=wave">
								<button class="h5 center">Contact Us</button>

							</a>

						</div>
					</div>
				</div>
			</div>
		</section>



		<section id="card" class="boxes">


			<!--  club row 1-->
			<div class="cont box">
				<div class=cards>
					<div class=image>
						<img href="#" src="images/clubimg/advanture.jpg">
					</div>
					<div class=content>
						<h3 class="color">Advanrure Tourism & Recreation Club</h3>
						<a href="oldclub/club4.html">
							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>


				<div class=cards>
					<div class=image>
						<img src="images/clubimg/arts.jpg" alt="img">
					</div>
					<div class=content>
						<h3 class="color">Art, Multimedia & Creativity Club</h3>
						<a href="oldclub/club8.html">
							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>
				<div class=cards>
					<div class=image>
						<img src="images/clubimg/arvr.jpg" alt="img">
					</div>
					<div class=content>
						<h3 class="color">AR, VR, AI Club</h3>
						<a href="oldclub/club9.html">
							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>
				<div class=cards>
					<div class=image>
						<img src="images/clubimg/deamatic.jpg" alt="img">
					</div>
					<div class=content>
						<h3 class="color">Dramatics & Music Club</h3>
						<a href="oldclub/club5.html">

							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>

			</div>


			<!-- club row 2 -->
			<div class="cont box">
				<div class=cards>
					<div class=image>
						<img src="images/clubimg/games.jpg" alt="">
					</div>
					<div class=content>
						<h3 class="color">games & Sprots Club</h3>
						<a href="oldclub/club3.html">
							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>


				<div class=cards>
					<div class=image>
						<img src="images/clubimg/Health and nutrition.jpg" alt="">
					</div>
					<div class=content>
						<h3 class="color">Health & Nutrition Club</h3>
						<a href="oldclub/club7.html">

							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>
				<div class=cards>
					<div class=image>
						<img src="images/clubimg/health.jpg" alt="">
					</div>
					<div class=content>
						<h3 class="color">Holistic Health And Wellness Club</h3>
						<a href="oldclub/club6.html">

							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>
				<div class=cards>
					<div class=image>
						<img src="images/clubimg/incubation.jpg" alt="">
					</div>
					<div class=content>
						<h3 class="color">Incubation Innovation & Design Club</h3>
						<a href="oldclub/club12.html">
							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>

			</div>

			<!--club row 3  -->
			<div class="cont box">
				<div class=cards>
					<div class=image>
						<img href="#" src="images/clubimg/industry.jpg">
					</div>
					<div class=content>
						<h3 class="color">Industry Academia Interaction Club</h3>
						<a href="oldclub/club11.html">

							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>


				<div class=cards>
					<div class=image>
						<img src="images/clubimg/Language.jpg" alt="img">
					</div>
					<div class=content>
						<h3 class="color">Language & Literacy Club</h3>
						<a href="oldclub/club2.html">

							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>
				<div class=cards>
					<div class=image>
						<img src="images/clubimg/robotics.jpg" alt="img">
					</div>
					<div class=content>
						<h3 class="color">Robotics, Automation Club</h3>
						<a href="oldclub/club10.html">

							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>
				<div class=cards>
					<div class=image>
						<img src="images/clubimg/fitness.jpg" alt="img">
					</div>
					<div class=content>
						<h3 class="color">Outreach Fitness Club</h3>
						<a href="club13.jsp">

							<button
								style="border: none; padding: 7px 7px; border-radius: 8px; border: 2px solid rgb(235, 73, 14);"
								class="center ">Know More</button>
						</a>
					</div>
				</div>

			</div>

		</section>




		<!-- <section id="card" class="boxes">
			<div class="box">
				<div class="about-box">
					<a href="oldclub/club4.html"> <img
						src="images/clubimg/advanture.jpg" alt="img">
					</a>
				</div>

				<div class="about-box">
					<a href="oldclub/club8.html"> <img
						src="images/clubimg/arts.jpg" alt="img">
					</a>
				</div>
				<div class="about-box">
					<a href="oldclub/club9.html"> <img
						src="images/clubimg/arvr.jpg" alt="img">
					</a>
				</div>

			</div>


			<div class="box">

				<div class="about-box">
					<a href="oldclub/club5.html"> <img
						src="images/clubimg/deamatic.jpg" alt="img">
					</a>
				</div>
				<div class="about-box">
					<a href="oldclub/club3.html"> <img
						src="images/clubimg/games.jpg" alt="">
					</a>
				</div>
				<div class="about-box">
					<a href="oldclub/club12.html"> <img
						src="images/clubimg/incubation.jpg" alt="">
					</a>

				</div>

			</div>




			another line of box

			<div class="box">

				<div class="about-box">
					<a href="oldclub/club13.html"> <img
						src="images/clubimg/fitness.jpg" alt="">
					</a>
					<div class="center">
            <img src="images\05_Home Page-iPhone 11 Pro\codeIcon.png" alt="">
          </div>
          <h5 class="h5 center">A focused team with a
            specialized skill</h5>
				</div>

				<div class="about-box">
					<a href="oldclub/club7.html"> <img
						src="images/clubimg/Health and nutrition.jpg" alt="">
					</a>
				</div>
				<div class="about-box">
					<a href="oldclub/club6.html"> <img
						src="images/clubimg/health.jpg" alt="">
					</a>
				</div>
			</div>
			another line of box

			<div class="box">


				<div class="about-box">
					<a href="oldclub/club11.html"> <img
						src="images/clubimg/industry.jpg" alt="">
					</a>
				</div>
				<div class="about-box">
					<a href="oldclub/club2.html"> <img
						src="images/clubimg/Language.jpg" alt="">
					</a>
				</div>
				<div class="about-box">
					<a href="oldclub/club10.html"> <img
						src="images/clubimg/robotics.jpg" alt="">
					</a>
				</div>



			</div>

		</section> -->
		<!-- section 3 -->
		<section id="activity" class="Experience">

			<div class="Expereince">
				<div class="exchild">
					<div class="Us h6 center">Club activities</div>




					<section class="p-4">

						<div id="carouselExampleIndicators" class="carousel slide "
							data-bs-ride="carousel">
							<div class="carousel-indicators">
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="0" class="active" aria-current="true"
									aria-label="Slide 1"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="1" aria-label="Slide 2"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="2" aria-label="Slide 3"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="3" aria-label="Slide 4"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="4" aria-label="Slide 5"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="5" aria-label="Slide 6"></button>
							</div>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="images/corouselimg/spandhan.jpg"
										class="d-block w-100 h-75 alt="..." >
								</div>
								<div class="carousel-item">
									<img src="images/corouselimg/sports.jpg"
										class="d-block w-100 h-75" alt="...">
								</div>
								<div class="carousel-item">
									<img src="images\corouselimg\fashionshow.jpg"
										class="d-block w-100 h-75" alt="...">
								</div>
								<div class="carousel-item">
									<img src="images\corouselimg\aagman.jpg"
										class="d-block w-100 h-75" alt="...">
								</div>
								<div class="carousel-item">
									<img src="images\corouselimg\spandhan1.jpg"
										class="d-block w-100 h-75" alt="...">
								</div>
								<div class="carousel-item">
									<img src="images/corouselimg/sports.jpg"
										class="d-block w-100 h-75" alt="...">
								</div>
								<div class="carousel-item ">
									<img src="images\corouselimg\fashionshow.jpg"
										class="d-block w-100 h-75" alt="...">
								</div>

							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>

					</section>


					<h4 class="h4 center">
						We Have Completed <span>150+ Club Activity </span> Succesfully
					</h4>
					<h6 class="h6 center">
						This helps you to gain invaluable leadership as well as life
						skills. In addition to connecting other students who have similar
						interests, students clubs make students interact with alumni and
						professionals in their fields of interest.<br> <br> If
						you want to be a part of MU event clubs, then please go through
						the following information and get registered through the given
						mail id:


					</h6>


					<a
						href="https://docs.google.com/forms/d/e/1FAIpQLScSrw6Xf-rfHppqUloRok2K4wX6T5Q0dA1HodazD-JHrfmQhA/viewform"
						style="text-decoration: none"><button class="h5 ">Register
							Now</button></a>
				</div>

				<!-- Slideshow container -->
				<!-- <div class="slideshow-container">

					Full-width images with number and caption text
					<div class="mySlides fade">
						<div class="numbertext">1 / 3</div>
						<img src="images/vertical4.jpg" style="width: 100%" height="70%">
						<div class="text">Caption Text</div>
					</div>

					<div class="mySlides fade">
						<div class="numbertext">2 / 3</div>
						<img src="images/vertical2.jpeg" style="width: 100%">
						<div class="text">Caption Two</div>
					</div>

					<div class="mySlides fade">
						<div class="numbertext">3 / 3</div>
						<img src="images/vertical1.jpg" style="width: 100%">
						<div class="text">Caption Three</div>
					</div>
					<div class="mySlides fade">
						<div class="numbertext">3 / 3</div>
						<img src="images/vertical3.jpg" style="width: 100%">
						<div class="text">Caption Three</div>
					</div>
 -->
				<!-- Next and previous buttons -->
				<!-- <a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
						class="next" onclick="plusSlides(1)">&#10095;</a>
				</div> -->
				<!-- an -->

				<br>

				<!-- The dots/circles -->
				<!-- <div style="text-align: center">
					<span class="dot" onclick="currentSlide(1)"></span> <span
						class="dot" onclick="currentSlide(2)"></span> <span class="dot"
						onclick="currentSlide(3)"></span>
				</div>
 -->
				<!-- gallery -->

				<!-- <div class="gallery">
          <a target="_blank" href="images/vertical3.jpg">
            <img src="images/vertical3.jpg" alt="Cinque Terre">
          </a>
          <div class="desc">Add a description of the image here</div>
        </div>
        
        <div class="gallery">
          <a target="_blank" href="img_forest.jpg">
            <img src="img_forest.jpg" alt="Forest" width="600" height="400">
          </a>
          <div class="desc">Add a description of the image here</div>
        </div>
        
        <div class="gallery">
          <a target="_blank" href="img_lights.jpg">
            <img src="img_lights.jpg" alt="Northern Lights" width="600" height="400">
          </a>
          <div class="desc">Add a description of the image here</div>
        </div>
        
        <div class="gallery">
          <a target="_blank" href="img_mountains.jpg">
            <img src="img_mountains.jpg" alt="Mountains" width="600" height="400">
          </a>
          <div class="desc">Add a description of the image here</div>
        </div> -->


				<div class="box1">


					<div class="E-box">
						<div class=" h1 center">1000+</div>
						<div class="h4 center">Club Members</div>
					</div>
					<div class="E-box">
						<div class="h1 center">150+</div>
						<div class="h4 center">Club Activity</div>
					</div>
					<div class="E-box">
						<div class="h1 center">10+</div>
						<div class="h4 center">Clubs</div>
					</div>
					<div class="E-box">
						<div class="h1 center">500+</div>
						<div class="h4 center">Our Active Members</div>
					</div>
				</div>
				
			</div>
			
			
			
			

		</section>
		
<!-- <div class=" float-right  ">
			
			<a href="#hom" class="text-decoration-none  ">
					<i class="fa-2x fa-solid fa-up-long "></i>


			</a>
			</div> -->
			
		<footer>


			<%@include file="/components/footer.jsp"%>

		</footer>

		<!-- End of .container -->

		</footer>
	</main>


</body>

</html>