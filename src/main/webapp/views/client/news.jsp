<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="views/client/assets" var="url"></c:url>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sản phẩm</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="https://cdn.haitrieu.com/wp-content/uploads/2022/05/Icon-Phat-Dat.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url}/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url}/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url}/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url}/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${url}/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url}/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url}/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${url}/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url}/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url}/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url}/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url}/css/util.css">
	<link rel="stylesheet" type="text/css" href="${url}/css/main.css">
<!--===============================================================================================-->
  
    <link href="${url}/css/media_query.css" rel="stylesheet" type="text/css"/>
    <link href="${url}/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="${url}/css/animate.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link href="${url}/css/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="${url}/css/owl.theme.default.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap CSS -->
    <link href="${url}/css/style_1.css" rel="stylesheet" type="text/css"/>
    <!-- Modernizr JS -->
    <script src="${url}/js/modernizr-3.5.0.min.js"></script>

</head>
<body class="animsition">

	<%@include file="layout/header.jsp"%>

		<div class="container-fluid">
		    <div class="container">
		        <div class="row">
		            <div class="col-12 col-md-3 fh5co_padding_menu">
		                <img src="images/logo.png" alt="img" class="fh5co_logo_width"/>
		            </div>
		            <div class="col-12 col-md-9 align-self-center fh5co_mediya_right">
		                <div class="text-center d-inline-block">
		                    <a class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-search"></i></div></a>
		                </div>
		                <div class="text-center d-inline-block">
		                    <a class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-linkedin"></i></div></a>
		                </div>
		                <div class="text-center d-inline-block">
		                    <a class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-google-plus"></i></div></a>
		                </div>
		                <div class="text-center d-inline-block">
		                    <a href="https://twitter.com/fh5co" target="_blank" class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-twitter"></i></div></a>
		                </div>
		                <div class="text-center d-inline-block">
		                    <a href="https://fb.com/fh5co" target="_blank" class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-facebook"></i></div></a>
		                </div>
		                <!--<div class="d-inline-block text-center"><img src="images/country.png" alt="img" class="fh5co_country_width"/></div>-->
		                <div class="d-inline-block text-center dd_position_relative ">
		                    <select class="form-control fh5co_text_select_option">
		                        <option>English </option>
		                        <option>French </option>
		                        <option>German </option>
		                        <option>Spanish </option>
		                    </select>
		                </div>
		                <div class="clearfix"></div>
		            </div>
		        </div>
		    </div>
		</div>
		<div class="container-fluid bg-faded fh5co_padd_mediya padding_786">
		    <div class="container padding_786">
		        <nav class="navbar navbar-toggleable-md navbar-light ">
		            <button class="navbar-toggler navbar-toggler-right mt-3" type="button" data-toggle="collapse"
		                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
		                    aria-label="Toggle navigation"><span class="fa fa-bars"></span></button>
		            <a class="navbar-brand" href="#"><img src="images/logo.png" alt="img" class="mobile_logo_width"/></a>
		            <div class="collapse navbar-collapse" id="navbarSupportedContent">
		                <ul class="navbar-nav mr-auto">
		                    <li class="nav-item active">
		                        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
		                    </li>
		                    <li class="nav-item ">
		                        <a class="nav-link" href="blog.html">Blog <span class="sr-only">(current)</span></a>
		                    </li>
		                    <li class="nav-item ">
		                        <a class="nav-link" href="single.html">Single <span class="sr-only">(current)</span></a>
		                    </li>
		                    <li class="nav-item dropdown">
		                        <a class="nav-link dropdown-toggle" href="#" id="dropdownMenuButton2" data-toggle="dropdown"
		                           aria-haspopup="true" aria-expanded="false">World <span class="sr-only">(current)</span></a>
		                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink_1">
		                            <a class="dropdown-item" href="#">Action in</a>
		                            <a class="dropdown-item" href="#">Another action</a>
		                            <a class="dropdown-item" href="#">Something else here</a>
		                        </div>
		                    </li>
		                    <li class="nav-item dropdown">
		                        <a class="nav-link dropdown-toggle" href="#" id="dropdownMenuButton3" data-toggle="dropdown"
		                           aria-haspopup="true" aria-expanded="false">Community<span class="sr-only">(current)</span></a>
		                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink_1">
		                            <a class="dropdown-item" href="#">Action in</a>
		                            <a class="dropdown-item" href="#">Another action</a>
		                            <a class="dropdown-item" href="#">Something else here</a>
		                        </div>
		                    </li>
		                    <li class="nav-item ">
		                        <a class="nav-link" href="Contact_us.html">Contact <span class="sr-only">(current)</span></a>
		                    </li>
		                </ul>
		            </div>
		        </nav>
		    </div>
		</div>
		
		<div class="container-fluid pb-4 pt-4 paddding">
		    <div class="container paddding">
		        <div class="row mx-0">
		            <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
		                <div>
		                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">News</div>
		                </div>
		                <div class="row pb-4">
		                    <div class="col-md-5">
		                        <div class="fh5co_hover_news_img">
		                            <div class="fh5co_news_img"><img src="images/nathan-mcbride-229637.jpg" alt=""/></div>
		                            <div></div>
		                        </div>
		                    </div>
		                    <div class="col-md-7 animate-box">
		                        <a href="single.html" class="fh5co_magna py-2"> Magna aliqua ut enim ad minim veniam quis
		                        nostrud quis xercitation ullamco. </a> <a href="#" class="fh5co_mini_time py-3"> Thomson Smith -
		                        April 18,2016 </a>
		                        <div class="fh5co_consectetur"> Amet consectetur adipisicing elit, sed do eiusmod tempor incididunt
		                            ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.
		                        </div>
		                    </div>
		                </div>
		                <div class="row pb-4">
		                    <div class="col-md-5">
		                        <div class="fh5co_hover_news_img">
		                            <div class="fh5co_news_img"><img src="images/ryan-moreno-98837.jpg" alt=""/></div>
		                            <div></div>
		                        </div>
		                    </div>
		                    <div class="col-md-7">
		                        <a href="single.html" class="fh5co_magna py-2"> Magna aliqua ut enim ad minim veniam quis
		                        nostrud quis xercitation ullamco. </a> <a href="#" class="fh5co_mini_time py-3"> Thomson Smith -
		                        April 18,2016 </a>
		                        <div class="fh5co_consectetur"> Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
		                            commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
		                            dolore.
		                        </div>
		                        <ul class="fh5co_gaming_topikk pt-3">
		                            <li> Why 2017 Might Just Be the Worst Year Ever for Gaming</li>
		                            <li> Ghost Racer Wants to Be the Most Ambitious Car Game</li>
		                            <li> New Nintendo Wii Console Goes on Sale in Strategy Reboot</li>
		                            <li> You and Your Kids can Enjoy this News Gaming Console</li>
		                        </ul>
		                    </div>
		                </div>
		                <div class="row pb-4">
		                    <div class="col-md-5">
		                        <div class="fh5co_hover_news_img">
		                            <div class="fh5co_news_img">
		                                <img src="images/photo-1449157291145-7efd050a4d0e-578x362.jpg" alt=""/>
		                            </div>
		                            <div></div>
		                        </div>
		                    </div>
		                    <div class="col-md-7">
		                        <a href="single.html" class="fh5co_magna py-2"> Magna aliqua ut enim ad minim veniam quis
		                        nostrud quis xercitation ullamco. </a> <a href="#" class="fh5co_mini_time py-3"> Thomson Smith -
		                        April 18,2016 </a>
		                        <div class="fh5co_consectetur"> Quis nostrud xercitation ullamco laboris nisi aliquip ex ea commodo
		                            consequat.
		                        </div>
		                    </div>
		                </div>
		                <div class="row pb-4">
		                    <div class="col-md-5">
		                        <div class="fh5co_hover_news_img">
		                            <div class="fh5co_news_img"><img src="images/office-768x512.jpg" alt=""/></div>
		                            <div></div>
		                        </div>
		                    </div>
		                    <div class="col-md-7">
		                        <a href="single.html" class="fh5co_magna py-2"> Magna aliqua ut enim ad minim veniam quis
		                        nostrud quis xercitation ullamco. </a> <a href="#" class="fh5co_mini_time py-3"> Thomson Smith -
		                        April 18,2016 </a>
		                        <div class="fh5co_consectetur"> Amet consectetur adipisicing elit, sed do eiusmod tempor incididunt
		                            ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
		                <div>
		                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Tags</div>
		                </div>
		                <div class="clearfix"></div>
		                <div class="fh5co_tags_all">
		                    <a href="#" class="fh5co_tagg">Business</a>
		                    <a href="#" class="fh5co_tagg">Technology</a>
		                    <a href="#" class="fh5co_tagg">Sport</a>
		                    <a href="#" class="fh5co_tagg">Art</a>
		                    <a href="#" class="fh5co_tagg">Lifestyle</a>
		                    <a href="#" class="fh5co_tagg">Three</a>
		                    <a href="#" class="fh5co_tagg">Photography</a>
		                    <a href="#" class="fh5co_tagg">Lifestyle</a>
		                    <a href="#" class="fh5co_tagg">Art</a>
		                    <a href="#" class="fh5co_tagg">Education</a>
		                    <a href="#" class="fh5co_tagg">Social</a>
		                    <a href="#" class="fh5co_tagg">Three</a>
		                </div>
		                <div>
		                    <div class="fh5co_heading fh5co_heading_border_bottom pt-3 py-2 mb-4">Most Popular</div>
		                </div>
		                <div class="row pb-3">
		                    <div class="col-5 align-self-center">
		                        <img src="images/download (1).jpg" alt="img" class="fh5co_most_trading"/>
		                    </div>
		                    <div class="col-7 paddding">
		                        <div class="most_fh5co_treding_font"> Magna aliqua ut enim ad minim veniam quis nostrud.</div>
		                        <div class="most_fh5co_treding_font_123"> April 18, 2016</div>
		                    </div>
		                </div>
		                <div class="row pb-3">
		                    <div class="col-5 align-self-center">
		                        <img src="images/allef-vinicius-108153.jpg" alt="img" class="fh5co_most_trading"/>
		                    </div>
		                    <div class="col-7 paddding">
		                        <div class="most_fh5co_treding_font"> Enim ad minim veniam nostrud xercitation ullamco.</div>
		                        <div class="most_fh5co_treding_font_123"> April 18, 2016</div>
		                    </div>
		                </div>
		                <div class="row pb-3">
		                    <div class="col-5 align-self-center">
		                        <img src="images/download (2).jpg" alt="img" class="fh5co_most_trading"/>
		                    </div>
		                    <div class="col-7 paddding">
		                        <div class="most_fh5co_treding_font"> Magna aliqua ut enim ad minim veniam quis nostrud.</div>
		                        <div class="most_fh5co_treding_font_123"> April 18, 2016</div>
		                    </div>
		                </div>
		                <div class="row pb-3">
		                    <div class="col-5 align-self-center"><img src="images/seth-doyle-133175.jpg" alt="img"
		                                                              class="fh5co_most_trading"/></div>
		                    <div class="col-7 paddding">
		                        <div class="most_fh5co_treding_font"> Magna aliqua ut enim ad minim veniam quis nostrud.</div>
		                        <div class="most_fh5co_treding_font_123"> April 18, 2016</div>
		                    </div>
		                </div>
		            </div>
		        </div>
		        <div class="row mx-0">
		            <div class="col-12 text-center pb-4 pt-4">
		                <a href="#" class="btn_mange_pagging"><i class="fa fa-long-arrow-left"></i>&nbsp;&nbsp; Previous</a>
		                <a href="#" class="btn_pagging">1</a>
		                <a href="#" class="btn_pagging">2</a>
		                <a href="#" class="btn_pagging">3</a>
		                <a href="#" class="btn_pagging">...</a>
		                <a href="#" class="btn_mange_pagging">Next <i class="fa fa-long-arrow-right"></i>&nbsp;&nbsp; </a>
		             </div>
		        </div>
		    </div>
		</div>
		<div class="container-fluid pb-4 pt-5">
		    <div class="container animate-box">
		        <div>
		            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Trending</div>
		        </div>
		        <div class="owl-carousel owl-theme" id="slider2">
		            <div class="item px-2">
		                <div class="fh5co_hover_news_img">
		                    <div class="fh5co_news_img"><img src="images/39-324x235.jpg" alt=""/></div>
		                    <div>
		                        <a href="#" class="d-block fh5co_small_post_heading"><span class="">The top 10 best computer speakers in the market</span></a>
		                        <div class="c_g"><i class="fa fa-clock-o"></i> Oct 16,2017</div>
		                    </div>
		                </div>
		            </div>
		            <div class="item px-2">
		                <div class="fh5co_hover_news_img">
		                    <div class="fh5co_news_img"><img src="images/joe-gardner-75333.jpg" alt=""/></div>
		                    <div>
		                        <a href="#" class="d-block fh5co_small_post_heading"><span class="">The top 10 best computer speakers in the market</span></a>
		                        <div class="c_g"><i class="fa fa-clock-o"></i> Oct 16,2017</div>
		                    </div>
		                </div>
		            </div>
		            <div class="item px-2">
		                <div class="fh5co_hover_news_img">
		                    <div class="fh5co_news_img"><img src="images/ryan-moreno-98837.jpg" alt=""/></div>
		                    <div>
		                        <a href="#" class="d-block fh5co_small_post_heading"><span class="">The top 10 best computer speakers in the market</span></a>
		                        <div class="c_g"><i class="fa fa-clock-o"></i> Oct 16,2017</div>
		                    </div>
		                </div>
		            </div>
		            <div class="item px-2">
		                <div class="fh5co_hover_news_img">
		                    <div class="fh5co_news_img"><img src="images/seth-doyle-133175.jpg" alt=""/></div>
		                    <div>
		                        <a href="#" class="d-block fh5co_small_post_heading"><span class="">The top 10 best computer speakers in the market</span></a>
		                        <div class="c_g"><i class="fa fa-clock-o"></i> Oct 16,2017</div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<div class="container-fluid fh5co_footer_bg pb-3">
		    <div class="container animate-box">
		        <div class="row">
		            <div class="col-12 spdp_right py-5"><img src="images/white_logo.png" alt="img" class="footer_logo"/></div>
		            <div class="clearfix"></div>
		            <div class="col-12 col-md-4 col-lg-3">
		                <div class="footer_main_title py-3"> About</div>
		                <div class="footer_sub_about pb-3"> Lorem Ipsum is simply dummy text of the printing and typesetting
		                    industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an
		                    unknown printer took a galley of type and scrambled it to make a type specimen book.
		                </div>
		                <div class="footer_mediya_icon">
		                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
		                        <div class="fh5co_verticle_middle"><i class="fa fa-linkedin"></i></div>
		                    </a></div>
		                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
		                        <div class="fh5co_verticle_middle"><i class="fa fa-google-plus"></i></div>
		                    </a></div>
		                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
		                        <div class="fh5co_verticle_middle"><i class="fa fa-twitter"></i></div>
		                    </a></div>
		                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
		                        <div class="fh5co_verticle_middle"><i class="fa fa-facebook"></i></div>
		                    </a></div>
		                </div>
		            </div>
		            <div class="col-12 col-md-3 col-lg-2">
		                <div class="footer_main_title py-3"> Category</div>
		                <ul class="footer_menu">
		                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; Business</a></li>
		                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; Entertainment</a></li>
		                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; Environment</a></li>
		                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; Health</a></li>
		                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; Life style</a></li>
		                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; Politics</a></li>
		                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; Technology</a></li>
		                    <li><a href="#" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; World</a></li>
		                </ul>
		            </div>
		            <div class="col-12 col-md-5 col-lg-3 position_footer_relative">
		                <div class="footer_main_title py-3"> Most Viewed Posts</div>
		                <div class="footer_makes_sub_font"> Dec 31, 2016</div>
		                <a href="#" class="footer_post pb-4"> Success is not a good teacher failure makes you humble </a>
		                <div class="footer_makes_sub_font"> Dec 31, 2016</div>
		                <a href="#" class="footer_post pb-4"> Success is not a good teacher failure makes you humble </a>
		                <div class="footer_makes_sub_font"> Dec 31, 2016</div>
		                <a href="#" class="footer_post pb-4"> Success is not a good teacher failure makes you humble </a>
		                <div class="footer_position_absolute"><img src="images/footer_sub_tipik.png" alt="img" class="width_footer_sub_img"/></div>
		            </div>
		            <div class="col-12 col-md-12 col-lg-4 ">
		                <div class="footer_main_title py-3"> Last Modified Posts</div>
		                <a href="#" class="footer_img_post_6"><img src="images/allef-vinicius-108153.jpg" alt="img"/></a>
		                <a href="#" class="footer_img_post_6"><img src="images/32-450x260.jpg" alt="img"/></a>
		                <a href="#" class="footer_img_post_6"><img src="images/download (1).jpg" alt="img"/></a>
		                <a href="#" class="footer_img_post_6"><img src="images/science-578x362.jpg" alt="img"/></a>
		                <a href="#" class="footer_img_post_6"><img src="images/vil-son-35490.jpg" alt="img"/></a>
		                <a href="#" class="footer_img_post_6"><img src="images/zack-minor-15104.jpg" alt="img"/></a>
		                <a href="#" class="footer_img_post_6"><img src="images/download.jpg" alt="img"/></a>
		                <a href="#" class="footer_img_post_6"><img src="images/download (2).jpg" alt="img"/></a>
		                <a href="#" class="footer_img_post_6"><img src="images/ryan-moreno-98837.jpg" alt="img"/></a>
		            </div>
		        </div>
		        <div class="row justify-content-center pt-2 pb-4">
		            <div class="col-12 col-md-8 col-lg-7 ">
		                <div class="input-group">
		                    <span class="input-group-addon fh5co_footer_text_box" id="basic-addon1"><i class="fa fa-envelope"></i></span>
		                    <input type="text" class="form-control fh5co_footer_text_box" placeholder="Enter your email..." aria-describedby="basic-addon1">
		                    <a href="#" class="input-group-addon fh5co_footer_subcribe" id="basic-addon12"> <i class="fa fa-paper-plane-o"></i>&nbsp;&nbsp;Subscribe</a>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<div class="container-fluid fh5co_footer_right_reserved">
		    <div class="container">
		        <div class="row  ">
		            <div class="col-12 col-md-6 py-4 Reserved"> © Copyright 2018, All rights reserved. Design by <a href="https://freehtml5.co" title="Free HTML5 Bootstrap templates">FreeHTML5.co</a>. </div>
		            <div class="col-12 col-md-6 spdp_right py-4">
		                <a href="index.html" class="footer_last_part_menu">Home</a>
		                <a href="Contact_us.html" class="footer_last_part_menu">About</a>
		                <a href="Contact_us.html" class="footer_last_part_menu">Contact</a>
		                <a href="blog.html" class="footer_last_part_menu">Latest News</a></div>
		        </div>
		    </div>
		</div>
		
		<div class="gototop js-top">
		    <a href="#" class="js-gotop"><i class="fa fa-arrow-up"></i></a>
		</div>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<!--<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>-->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
		        integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
		        crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
		        integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
		        crossorigin="anonymous"></script>
		<!-- Waypoints -->
		<script src="js/jquery.waypoints.min.js"></script>
		<!-- Main -->
		<script src="js/main.js"></script>



	<%@include file="layout/footer.jsp"%>

	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	
		

<!--===============================================================================================-->	
	<script src="${url}/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${url}/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${url}/vendor/bootstrap/js/popper.js"></script>
	<script src="${url}/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${url}/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="${url}/vendor/daterangepicker/moment.min.js"></script>
	<script src="${url}/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${url}/vendor/slick/slick.min.js"></script>
	<script src="${url}/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="${url}/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="${url}/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="${url}/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="${url}/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="${url}/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="${url}/js/main.js"></script>

</body>
</html>