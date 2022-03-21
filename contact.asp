<%
contact = Session.Contents("contact")
if contact = "yes" then
    Session.Contents.Remove("contact")
    call success
end if
Function success 
    %>
<script type ="text/javascript">
        alert("Message submitted.");
    </script> <% 
end function
%><!DOCTYPE html>
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
                            <li><a href="./about.asp">About</a></li>
                            <li ><a href="./shop.asp">Shop</a></li>
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
                            <li  class="active"><a href="./contact.asp">Contact</a></li>
                            <li><a href="./review.asp">Review</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="map">
                <div class="container">
                    <div class="row d-flex justify-content-center">
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
            
            <div class="row">
                <div class="col-lg-4">
                    <div class="contact__text">
                        <h3>Contact With us</h3>
                        <ul>
                            <li>Representatives or Advisors are available:</li>
                            <li>Mon-Fri: 5:00am to 9:00pm</li>
                            <li>Sat-Sun: 6:00am to 9:00pm</li>
                        </ul>
                        <img src="img/cake-piece.png" alt="">
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="contact__form">
                        <form action="ContactUs.asp" method="post">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" placeholder="Name" id="name" name="name">
                                </div>
                                <div class="col-lg-6">
                                    <input type="text" placeholder="Email" id="email" name="email">
                                </div>
                                <div class="col-lg-12">
                                    <textarea placeholder="Message" id="message" name="message"></textarea>
                                    <button type="submit" class="site-btn">Send Us</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        s
    </section>
    <!-- Contact Section End -->

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