<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Wt Website</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<style type="text/css">
        button[type="submit"]{
            border:none;
        }
    }    
    </style>
<body>
        <!--#include file="header.asp"-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="./index.asp">Home</a></li>
                            <li class="active"><a href="./about.asp">About</a></li>
                            <li><a href="./categories.asp">Categories</a></li>
                            <li><a href="./shoping-cart.asp">Cart</a>
                                <li><a href="./orders.asp">Orders</a>
                                <!-- <ul class="dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./wisslist.html">Wisslist</a></li>
                                    <li><a href="./Class.html">Class</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul> -->
                            </li>
                            <li><a href="./contact.asp">Contact</a></li>
                            <li><a href="./review.asp">Review</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Breadcrumb Begin -->
    
    <!-- Breadcrumb End -->

    <!-- About Section Begin -->
    
    <!-- About Section End -->

    <!-- Testimonial Section Begin -->
    <section class="testimonial spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <span>Testimonial</span>
                        <h2>Our client say</h2>
                    </div>
                </div>
            </div>
             <%dim con,rs,username,pass,reviews(50),users(50),country(50)
                                          set con=Server.CreateObject("ADODB.connection")
                                          con.Provider="Microsoft.Jet.OLEDB.4.0"
                                          con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
                                          set rs=Server.CreateObject("ADODB.RecordSet")
                                          set rs1=Server.CreateObject("ADODB.RecordSet")
                                          rs.Open "Reviews",con,0,3,2
                                          rs.MoveLast
                                          i=0
                                          do while not rs.BOF
                                            users(i) = rs("username")
                                            reviews(i) = rs("Review")
                                            country(i) = rs("Country")
                                            i = i+1
                                            rs.MovePrevious
                                              loop
                                             %>
            <div class="row">
                <div class="testimonial__slider owl-carousel">
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                </div>
                                <div class="testimonial__author__text">
                                    
                                             <h5><%Response.write(users(0)) %></h5>
                                    <span>New york</span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p><%Response.write(reviews(0))%></p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5><%Response.write(users(1)) %></h5>
                                    <span><%Response.write(country(1)) %></span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p><%Response.write(reviews(1))
                             %></p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5> <h5><%Response.write(users(2)) %></h5></h5>
                                    <span><%Response.write(country(2)) %></span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p><%Response.write(reviews(2))%></p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5><%Response.write(users(3))%></h5>
                                    <span><%Response.write(country(3)) %></span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p><%Response.write(reviews(3))%></p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5><%Response.write(users(4))%></h5>
                                    <span><%Response.write(country(4)) %></span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p><%Response.write(reviews(4))%></p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5><%Response.write(users(5))%></h5>
                                    <span><%Response.write(country(5)) %></span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p><%Response.write(reviews(5))%></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="map">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-7">
                    <div class="map__inner">
                        <h6>COlorado</h6>
                        <ul>
                            <li>1000 Lakepoint Dr, Frisco, CO 80443, USA</li>
                            <li>Sweetcake@support.com</li>
                            <li>+1 800-786-1000</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="map__iframe">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d10784.188505644011!2d19.053119335158936!3d47.48899529453826!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1543907528304" height="300" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
    </div>
    <!-- Testimonial Section End -->
    <!-- Footer Section Begin -->
    <!--#include file="footer.asp"-->
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.barfiller.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>