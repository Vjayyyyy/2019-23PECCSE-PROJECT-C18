<!DOCTYPE html>
<html lang="en">
 <%@page import=" Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!-- dustech/about.html  13 Nov 2019 12:55:21 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="irstheme">

    <title>Team leader </title>
    <%String email=session.getAttribute("temail").toString(); %> 
<%String team1=session.getAttribute("tlteam").toString();%>
<%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `bc04`.`task` where team='"+team1+"' and tlemail='"+email+"' and status='Request'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	   int cout=rs.getInt(1);  
    	     
    	  
    	   
       %>
    
    <link href="assets/css/themify-icons.css" rel="stylesheet">
    <link href="assets/css/flaticon.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/animate.css" rel="stylesheet">
    <link href="assets/css/owl.carousel.css" rel="stylesheet">
    <link href="assets/css/owl.theme.css" rel="stylesheet">
    <link href="assets/css/slick.css" rel="stylesheet">
    <link href="assets/css/slick-theme.css" rel="stylesheet">
    <link href="assets/css/swiper.min.css" rel="stylesheet">
    <link href="assets/css/odometer-theme-default.css" rel="stylesheet">
    <link href="assets/css/owl.transitions.css" rel="stylesheet">
    <link href="assets/css/jquery.fancybox.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- start page-wrapper -->
    <div class="page-wrapper">

        <!-- start preloader -->
        <div class="preloader">
            <div class="loader">
                <div class="gear two">
                    <svg viewbox="0 0 100 100" fill="#131e4a">
                        <path d="M97.6,55.7V44.3l-13.6-2.9c-0.8-3.3-2.1-6.4-3.9-9.3l7.6-11.7l-8-8L67.9,20c-2.9-1.7-6-3.1-9.3-3.9L55.7,2.4H44.3l-2.9,13.6      c-3.3,0.8-6.4,2.1-9.3,3.9l-11.7-7.6l-8,8L20,32.1c-1.7,2.9-3.1,6-3.9,9.3L2.4,44.3v11.4l13.6,2.9c0.8,3.3,2.1,6.4,3.9,9.3      l-7.6,11.7l8,8L32.1,80c2.9,1.7,6,3.1,9.3,3.9l2.9,13.6h11.4l2.9-13.6c3.3-0.8,6.4-2.1,9.3-3.9l11.7,7.6l8-8L80,67.9      c1.7-2.9,3.1-6,3.9-9.3L97.6,55.7z M50,65.6c-8.7,0-15.6-7-15.6-15.6s7-15.6,15.6-15.6s15.6,7,15.6,15.6S58.7,65.6,50,65.6z"></path>
                    </svg>
                </div>
                <div class="gear three">
                    <svg viewbox="0 0 100 100" fill="#fd5f17">
                        <path d="M97.6,55.7V44.3l-13.6-2.9c-0.8-3.3-2.1-6.4-3.9-9.3l7.6-11.7l-8-8L67.9,20c-2.9-1.7-6-3.1-9.3-3.9L55.7,2.4H44.3l-2.9,13.6      c-3.3,0.8-6.4,2.1-9.3,3.9l-11.7-7.6l-8,8L20,32.1c-1.7,2.9-3.1,6-3.9,9.3L2.4,44.3v11.4l13.6,2.9c0.8,3.3,2.1,6.4,3.9,9.3      l-7.6,11.7l8,8L32.1,80c2.9,1.7,6,3.1,9.3,3.9l2.9,13.6h11.4l2.9-13.6c3.3-0.8,6.4-2.1,9.3-3.9l11.7,7.6l8-8L80,67.9      c1.7-2.9,3.1-6,3.9-9.3L97.6,55.7z M50,65.6c-8.7,0-15.6-7-15.6-15.6s7-15.6,15.6-15.6s15.6,7,15.6,15.6S58.7,65.6,50,65.6z"></path>
                    </svg>
                </div>
            </div>
        </div>
        <!-- end preloader -->

        <!-- Start header -->
        <header id="header" class="site-header header-style-1">
            <nav class="navigation navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="open-btn">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <span style="color:red;"><%=team1 %> </span><!-- <a class="navbar-brand" href="index-2.html"><img src="assets/images/logo.png" alt></a>
                     --></div>
                    <div id="navbar" class="navbar-collapse collapse navigation-holder">
                        <button class="close-navbar"><i class="ti-close"></i></button>
                        <ul class="nav navbar-nav">
                            <li class="menu-item-has-children">
                                <a href="homepage.jsp">Home</a>
                                <!-- <ul class="sub-menu">
                                    <li><a href="index-2.html">Home Default</a></li>
                                    <li><a href="index-3.html">Home style 2</a></li>
                                    <li><a href="index-4.html">Home style 3</a></li>
                                </ul> -->
                            </li>
                            <li><a href="https://www.google.com/search?q=software+data+secure&rlz=1C1JZAP_enIN994IN994&ei=NYvSY_7fMYfDz7sPkaiBkAk&ved=0ahUKEwi-zreltuX8AhWH4XMBHRFUAJIQ4dUDCBA&uact=5&oq=software+data+secure&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIGCAAQFhAeMgYIABAWEB4yCAgAEBYQHhAPMggIABAWEB4QDzIGCAAQFhAeMgUIABCGAzIFCAAQhgMyBQgAEIYDMgUIABCGAzoKCAAQRxDWBBCwA0oECEEYAEoECEYYAFCyBFiyBGC2BmgBcAF4AIABowGIAaMBkgEDMC4xmAEAoAEByAEIwAEB&sclient=gws-wiz-serp">About</a></li>
                            <!-- <li class="menu-item-has-children">
                                <a href="#">Pages</a>
                                <ul class="sub-menu">
                                    <li><a href="about.html">About</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                    <li><a href="testimonials.html">Testimonials</a></li>
                                    <li><a href="testimonials-s2.html">Testimonials style 2</a></li>
                                    <li><a href="team.html">Team</a></li>
                                    <li><a href="faq.html">FAQ</a></li>
                                    <li><a href="404.html">404</a></li>
                                    <li><a href="shop.html">Shop</a></li>
                                    <li><a href="shop-single.html">Shop single</a></li>
                                </ul>
                            </li> -->
                            
 

                            <li class="menu-item-has-children">
                                <a href="#">Services</a>
                                <ul class="sub-menu">
                                    <li><a href="addfile.jsp">Share</a></li>
                                    <li><a href="tlview.jsp">View</a></li>
                                    <!-- <li><a href="service-single.html">Mechanical Engineering</a></li>
                                    <li><a href="oil-gas.html">Oil And Gas</a></li>
                                    <li><a href="power-energy.html">Power And Energy</a></li>
                                    <li><a href="sanitary-plumbing.html">Sanitary & Plumbing</a></li>
                                    <li><a href="electrical-power.html">Electrical Power</a></li>
                                 --></ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="#">Staff(<%=cout %>)</a>
                                <ul class="sub-menu">
                                    <li><a href="Request.jsp">Staff Request(<%=cout %>)</a></li>
                                    <li><a href="newstaffs.jsp">New Staff</a></li>
                                     <li><a href="staffs.jsp">Members</a></li>
                                       <li><a href="staffsview.jsp">View</a></li>
                                     
                                     </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="TlAcceptview.jsp">Management</a>
                                <!-- <ul class="sub-menu">
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="blog-left-sidebar.html">Blog left sidebar</a></li>
                                    <li><a href="blog-fullwidth.html">Blog full width</a></li>
                                    <li class="menu-item-has-children">
                                        <a href="#Level3">Blog single</a>
                                        <ul class="sub-menu">
                                            <li><a href="blog-single.html">Blog single</a></li>
                                            <li><a href="blog-single-left-sidebar.html">Blog single left sidebar</a></li>
                                            <li><a href="blog-single-fullwidth.html">Blog single full width</a></li>
                                        </ul> -->
                                    </li>
                                </ul>
                            </li>
                            <!-- <li><a href="contact.html">Contact</a></li>
                     -->    </ul>
                    </div><!-- end of nav-collapse -->

                    <div class="search-contact">
                        <div class="header-search-area">
                            <div class="header-search-form">
                                <form class="form">
                                    <div>
                                        <input type="text" class="form-control" placeholder="Search here">
                                    </div>
                                    <!-- <button type="submit" class="btn"><i class="ti-search"></i></button>
                               -->  </form>
                            </div>
                            <div>
                               <!--  <button class="btn open-btn"><i class="ti-search"></i></button>
                          -->   </div>
                        </div>
                       <!--  <div class="contact">
                            <div class="call">
                                <i class="fi flaticon-call"></i>
                                <p>Call us anytime</p>
                                <h5>+65487441584</h5>
                            </div>
                            <a href="#" class="theme-btn">Contact us</a>
                        </div> -->
                    </div>
                </div><!-- end of container -->
            </nav>
        </header>
        <!-- end of header -->


        <!-- start page-title -->
        <section class="page-title">
            <div class="container">
                <div class="row">
                    <div class="col col-xs-12">
                        <h2>About us</h2>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>        
        <!-- end page-title -->



        <!-- start about-us-section -->
        <section class="about-us-section section-padding">
            <div class="container">
                <div class="row">
                    <div class="col col-md-6">
                        <div class="section-title">
                            <span>About us</span>
                            <h2>We set the standards others try to live up to.</h2>
                        </div>
                        <div class="details">
                            <p>It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright</p>
                            <div class="clearfix">
                                <ul>
                                    <li><i class="ti-check"></i> Cut out of an illustrated magazine</li>
                                    <li><i class="ti-check"></i> Showed a lady fitted out</li>
                                </ul>
                                <ul>
                                    <li><i class="ti-check"></i> Raising a heavy fur muff</li>
                                    <li><i class="ti-check"></i> Magazine and housed in a nice</li>
                                </ul>
                            </div>
                            <div class="btns">
                                <a href="#" class="theme-btn">Our Services</a>
                                <a href="#" class="theme-btn-s3">Contact with us</a>
                            </div>
                        </div>
                    </div>
                    <div class="col col-md-6">
                        <div class="right-col">
                            <div class="img-holder">
                                <img src="assets/images/about.png" alt>
                            </div>
                            <div class="video-holder">
                                <a href="https://www.youtube.com/embed/7e90gBu4pas?autoplay=1" class="hero-video-btn video-btn"  data-type="iframe" tabindex="0"><i class="fi flaticon-play-button"></i>Watch our intro video</a> 
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end about-us-section -->


        <!-- start why-choose-section -->
        <section class="why-choose-section section-padding">
            <div class="container">
                <div class="row">
                    <div class="col col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2">
                        <div class="section-title-s3">
                            <span> Features</span>
                            <h2>Why Choose Us!</h2>
                            <p>Hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-xs-12">
                        <div class="why-choose-grids clearfix">
                            <div class="grid">
                                <i class="fi flaticon-network-1"></i>
                                <h3>Professional Team</h3>
                                <p>Whole of her lower arm towards the viewer. Gregor then turned to look out the window</p>
                            </div>
                            <div class="grid">
                                <i class="fi flaticon-circular-label-with-certified-stamp"></i>
                                <h3>Certified engineers</h3>
                                <p>Whole of her lower arm towards the viewer. Gregor then turned to look out the window</p>
                            </div>
                            <div class="grid">
                                <i class="fi flaticon-chip"></i>
                                <h3>Latest Technology</h3>
                                <p>Whole of her lower arm towards the viewer. Gregor then turned to look out the window</p>
                            </div>
                            <div class="grid">
                                <i class="fi flaticon-24-hours"></i>
                                <h3>27/7 Support</h3>
                                <p>Whole of her lower arm towards the viewer. Gregor then turned to look out the window</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end why-choose-section -->


        <!-- start testimonials-section -->
        <section class="testimonials-section">
            <div class="container">
                <div class="row">
                    <div class="col col-lg-6 col-lg-offset-3">
                        <div class="section-title-s4">
                            <span>Testimonials</span>
                            <h2>What People say’s About us</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-md-4">
                        <div class="testimonial-left-img-holder">
                            <img src="assets/images/testimonials/man.png" alt>
                        </div>
                    </div>
                    <div class="col col-md-8">
                        <div class="testimonial-grids testimonial-slider clearfix">
                            <div class="grid">
                                <div class="quote">
                                    <i class="fi flaticon-quote"></i>
                                    <p>“Recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look ”</p>
                                </div>
                                <div class="client-info">
                                    <div class="img-holder">
                                        <img src="assets/images/testimonials/img-1.jpg" alt>
                                    </div>
                                    <div class="details">
                                        <h5>Michel jhon</h5>
                                        <p>Manager of Automation</p>
                                    </div>
                                </div>
                            </div>
                            <div class="grid">
                                <div class="quote">
                                    <i class="fi flaticon-quote"></i>
                                    <p>“Recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look ”</p>
                                </div>
                                <div class="client-info">
                                    <div class="img-holder">
                                        <img src="assets/images/testimonials/img-2.jpg" alt>
                                    </div>
                                    <div class="details">
                                        <h5>Alaska</h5>
                                        <p>Business Officer</p>
                                    </div>
                                </div>
                            </div>
                            <div class="grid">
                                <div class="quote">
                                    <i class="fi flaticon-quote"></i>
                                    <p>“Recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look ”</p>
                                </div>
                                <div class="client-info">
                                    <div class="img-holder">
                                        <img src="assets/images/testimonials/img-3.jpg" alt>
                                    </div>
                                    <div class="details">
                                        <h5>Shain on</h5>
                                        <p>Manager of Automation</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end testimonials-section -->


        <!-- start featured-project-section -->
        <section class="featured-project-section section-padding">
            <div class="container">
                <div class="row">
                    <div class="col col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2">
                        <div class="section-title-s5">
                            <span>Featured Projects</span>
                            <h2>Explore What We've Done</h2>
                            <p>Hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-area">
                <div class="project-grids clearfix">
                    <div class="grid">
                        <div class="overlay">
                            <span class="count">01.</span>
                            <h3>Welding Processing</h3>
                            <p>Travelling salesman and above it there hung a picture that he had recently cut out</p>
                            <a href="#" class="theme-btn">Read More</a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="overlay">
                            <span class="count">02.</span>
                            <h3>Materials project</h3>
                            <p>Travelling salesman and above it there hung a picture that he had recently cut out</p>
                            <a href="#" class="theme-btn">Read More</a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="overlay">
                            <span class="count">03.</span>
                            <h3>Oil & Gas project</h3>
                            <p>Travelling salesman and above it there hung a picture that he had recently cut out</p>
                            <a href="#" class="theme-btn">Read More</a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="overlay">
                            <span class="count">04.</span>
                            <h3>Power Energy project</h3>
                            <p>Travelling salesman and above it there hung a picture that he had recently cut out</p>
                            <a href="#" class="theme-btn">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end featured-project-section -->


        <!-- start partners-section -->
        <section class="partners-section">
            <h2 class="hidden">Partners</h2>
            <div class="container">
                <div class="row">
                    <div class="col col-xs-12">
                        <div class="partner-grids partners-slider">
                            <div class="grid">
                                <img src="assets/images/partners/img-1.jpg" alt>
                            </div>
                            <div class="grid">
                                <img src="assets/images/partners/img-2.jpg" alt>
                            </div>
                            <div class="grid">
                                <img src="assets/images/partners/img-3.jpg" alt>
                            </div>
                            <div class="grid">
                                <img src="assets/images/partners/img-4.jpg" alt>
                            </div>
                            <div class="grid">
                                <img src="assets/images/partners/img-5.jpg" alt>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end partners-section -->


        <!-- start fun-fact-section -->
        <section class="fun-fact-section">
            <div class="container">
                <div class="row">
                    <div class="col col-xs-12">
                        <div class="fun-fact-grids clearfix">
                            <div class="grid">
                                <div class="info">
                                    <i class="fi flaticon-worker"></i>
                                    <h3><span class="odometer" data-count="1200">00</span></h3>
                                    <p>Employed</p>
                                </div>
                            </div>
                            <div class="grid">
                                <div class="info">
                                    <i class="fi flaticon-engineer"></i>
                                    <h3><span class="odometer" data-count="1500">00</span></h3>
                                    <p>Project Completed</p>
                                </div>
                            </div>
                            <div class="grid">
                                <div class="info">
                                    <i class="fi flaticon-trophy"></i>
                                    <h3><span class="odometer" data-count="25">00</span>+</h3>
                                    <p>Award Won</p>
                                </div>
                            </div>
                            <div class="grid">
                                <div class="info">
                                    <i class="fi flaticon-like-1"></i>
                                    <h3><span class="odometer" data-count="100">00</span>%</h3>
                                    <p>Satisfied customers</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end fun-fact-section -->


        <!-- start team-section -->
       <!--  <section class="team-section section-padding">
            <div class="container">
                <div class="row">
                    <div class="col col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2">
                        <div class="section-title-s5">
                            <span>Our Team</span>
                            <h2>Dedicated Team</h2>
                            <p>Hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-xs-12">
                        <div class="team-grids">
                            <div class="grid">
                                <div class="img-social">
                                    <div class="img-holder">
                                        <img src="assets/images/team/img-1.jpg" alt>
                                    </div>
                                    <div class="social">
                                        <ul>
                                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                                            <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="details">
                                    <h3>Michel Jhon</h3>
                                    <span>Mechanical Engineering</span>
                                </div>
                            </div>
                            <div class="grid">
                                <div class="img-social">
                                    <div class="img-holder">
                                        <img src="assets/images/team/img-2.jpg" alt>
                                    </div>
                                    <div class="social">
                                        <ul>
                                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                                            <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="details">
                                    <h3>Wilium Mice</h3>
                                    <span>Site Manager</span>
                                </div>
                            </div>
                            <div class="grid">
                                <div class="img-social">
                                    <div class="img-holder">
                                        <img src="assets/images/team/img-3.jpg" alt>
                                    </div>
                                    <div class="social">
                                        <ul>
                                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                                            <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="details">
                                    <h3>Jonthon teat</h3>
                                    <span>Testing Manager</span>
                                </div>
                            </div>
                            <div class="grid">
                                <div class="img-social">
                                    <div class="img-holder">
                                        <img src="assets/images/team/img-4.jpg" alt>
                                    </div>
                                    <div class="social">
                                        <ul>
                                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                                            <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="details">
                                    <h3>Shown kel</h3>
                                    <span>Cheif Officer</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> end container
        </section>
        end team-section

 -->
        <!-- start cta-section -->
        <section class="cta-section">
            <div class="container">
                <div class="row">
                    <div class="col col-lg-6 col-md-6">
                        <div class="cta-text">
                            <h3>Lets Get in Touch!</h3>
                            <p>Raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather.</p>
                        </div>
                    </div>
                    <div class="col col-lg-5 col-lg-offset-1 col-md-6">
                        <div class="contact-info">
                            <div>
                                <i class="fi flaticon-call"></i>
                                <h4>Call us</h4>
                                <p>+654894754</p>
                            </div>
                            <div>
                                <i class="fi flaticon-contact"></i>
                                <h4>Email us</h4>
                                <p>demo@example.com</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end cta-section -->


        <!-- start site-footer -->
        <footer class="site-footer">
            <div class="upper-footer">
                <div class="container">
                    <div class="row">
                        <div class="col col-lg-3 col-md-3 col-sm-6">
                            <div class="widget about-widget">
                                <div class="logo widget-title">
                                    <img src="assets/images/footer-logo.png" alt>
                                </div>
                                <p>Mikago arm towards the viewer gregor then turned to look out the window at the dull weather</p>
                                <div class="social-icons">
                                    <ul>
                                        <li><a href="#"><i class="ti-facebook"></i></a></li>
                                        <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                                        <li><a href="#"><i class="ti-linkedin"></i></a></li>
                                        <li><a href="#"><i class="ti-pinterest"></i></a></li>
                                        <li><a href="#"><i class="ti-vimeo-alt"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-3 col-md-3 col-sm-6">
                            <div class="widget link-widget">
                                <div class="widget-title">
                                    <h3>Usefull Links</h3>
                                </div>
                                <ul>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">Our services</a></li>
                                    <li><a href="#">Contact us</a></li>
                                    <li><a href="#">Meet team</a></li>
                                </ul>
                                <ul>
                                    <li><a href="#">Provacu Policy</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">News</a></li>
                                    <li><a href="#">FAQ</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col col-lg-3 col-md-3 col-sm-6">
                            <div class="widget contact-widget service-link-widget">
                                <div class="widget-title">
                                    <h3>Our Address</h3>
                                </div>
                                <ul>
                                    <li>25/19 Duel aveniew, new Booston town, Ghana</li>
                                    <li><span>Phone:</span> 84667441</li>
                                    <li><span>Email:</span> demo@example.com</li>
                                    <li><span>Office Time:</span> 10AM- 5PM</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col col-lg-3 col-md-3 col-sm-6">
                            <div class="widget newsletter-widget">
                                <div class="widget-title">
                                    <h3>Newsletter</h3>
                                </div>
                                <p>You will be notified when somthing new will be appear.</p>
                                <form>
                                    <div class="input-1">
                                        <input type="email" class="form-control" placeholder="Email Address *" required>
                                    </div>
                                    <div class="submit clearfix">
                                        <button type="submit"><i class="ti-email"></i></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div> <!-- end container -->
            </div>
            <div class="lower-footer">
                <div class="container">
                    <div class="row">
                        <div class="separator"></div>
                        <div class="col col-xs-12">
                            <p class="copyright"><a href="templateshub.net">Templates Hub</a></p>
                            <div class="extra-link">
                                <ul>
                                    <li><a href="#">Privace & Policy</a></li>
                                    <li><a href="#">Terms</a></li>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">FAQ</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end site-footer -->
    </div>
    <!-- end of page-wrapper -->



    <!-- All JavaScript files
    ================================================== -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins for this template -->
    <script src="assets/js/jquery-plugin-collection.js"></script>

    <!-- Custom script for this template -->
    <script src="assets/js/script.js"></script><%} %>
</body>

<!-- dustech/about.html  13 Nov 2019 12:55:21 GMT -->
</html>








<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import=" Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
body {
   margin: 0;
   font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
   background-image:url("images/45.jpeg");
   background-size:cover;
   
}
nav {
   margin: 0;
   padding: 0;
   width: 250px;
   background-color: #36352b99;;
   position: fixed;
   height: 100%;
   overflow: auto;
}
nav a {
   display: block;
   color: rgb(255, 255, 255);
   font-weight: bolder;
   font-size: 20px;
   padding: 16px;
   text-decoration: none;
   font-family: "Times New Roman", Times, serif;
}
nav a.selected {
      background-color: rgb(235 231 228);
    color: rgb(56 5 5 / 78%);
}
nav a:hover:not(.selected) {
   background-color: white;
   color: #2f77e4;
}
div.content {
   margin-left: 200px;
   padding: 1px 16px;
   height: 1000px;
}
@media screen and (max-width: 700px) {
nav {
   width: 100%;
   height: auto;
   position: relative;
}
nav a {float: left;}
div.content {margin-left: 0;}
}h1{
margin: 180px 8px 27px 54px;
color:white;
}
</style>
</head>
<%String email=session.getAttribute("temail").toString(); %> 
<%String team1=session.getAttribute("tlteam").toString();%>
<%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `bc04`.`task` where team='"+team1+"' and tlemail='"+email+"' and status='Request'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	   int cout=rs.getInt(1);  
    	     
    	  
    	   
       %>
<body>
<nav class="sideBar">
<span style="color:red"><%=team1%>...</span>
<a href="homepage.jsp">HOME</a>
<a href="addfile.jsp">SHARE</a>
<a href="tlview.jsp">VIEW</a>
<a href="Request.jsp">STAFF(<%=cout %>)</a>
<a href="staffs.jsp">MEMBERS</a>
<a href="TlAcceptview.jsp">MANAGEMENT</a> 

</nav>
<div class="content">
<center>
<h1>WELCOME TL</h1>
</center>
<%} %>
</div>
</body>
</html>
 --%>