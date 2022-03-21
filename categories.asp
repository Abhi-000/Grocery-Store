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
    <!-- Page Preloder -->
    <!--#include file="header.asp"-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="./index.asp">Home</a></li>
                            <li><a href="./about.asp">About</a></li>
                            <li  class="active"><a href="./categories.asp">Categories</a></li>
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
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>Categories</h2>
                        <br>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="./index.html">Home</a>
                        <span>Categories</span>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

<div class="categories">
        <div class="container">
            <div class="row">
                <!-- <div class="categories__slider owl-carousel"> -->
                   <!--  <div class="categories__item"> -->

                        <div class="categories__item__icon">
                            <form method ="post" action="http://localhost/WtProject/cake/grocery/indiCategory.asp">
                            <img src="img/CategoryIcons/vegetable.png" height="150" width="150">
                             <input type = "hidden"name ="index"  value="1">
                             <a onClick = "this.parentNode.submit();"><h5>&nbsp;&nbsp;Vegetables</h5></a>
                         </form>
                            <!-- <a href = "shopVegetables.asp"><h5>&nbsp;&nbsp;Vegetables</h5></a> -->
                        </div>
                    <!-- </div> -->&nbsp;&nbsp;&nbsp;&nbsp; 
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    <!-- </div> -->
                    <!-- <div class="categories__item"> -->
                        <div class="categories__item__icon">
                            <form method ="post" action="http://localhost/WtProject/cake/grocery/indiCategory.asp">
                            <img src="img/CategoryIcons/biscuit.png" height="150" width="150">
                            <input type = "hidden"name ="index"  value="2">
                             <a onClick = "this.parentNode.submit();"><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Biscuits</h5></a>
                         </form>
                        </div>
                    <!-- </div> -->&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                   <!--  </div> -->
                    <!-- <div class="categories__item"> -->
                        <div class="categories__item__icon">
                            <form method ="post" action="http://localhost/WtProject/cake/grocery/indiCategory.asp">
                            <img src="img/CategoryIcons/milkIcon.png" height="150" width="150">
                             <input type = "hidden"name ="index"  value="3">
                             <a onClick = "this.parentNode.submit();"><h5>Milk and Dairy</h5></a>
                         </form>
                        </div>
                    <!-- </div> -->&nbsp;&nbsp;&nbsp;&nbsp; 
                    <!-- </div> -->&nbsp;&nbsp;&nbsp;&nbsp; 
                    <!-- </div> -->&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <!-- <div class="categories__item"> -->
                        <div class="categories__item__icon">
                            <form method ="post" action="http://localhost/WtProject/cake/grocery/indiCategory.asp">
                           <img src="img/CategoryIcons/spiceIcon.png" height="150" width="150">
                            <input type = "hidden"name ="index"  value="4">
                            <a onClick = "this.parentNode.submit();"><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Spices</h5></a>
                            </form>
                        </div>
                    <!-- </div> -->&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <!-- </div> -->&nbsp;&nbsp;&nbsp;&nbsp; 
                    <!-- </div> -->
                    <!-- <div class="categories__item"> -->
                        <div class="categories__item__icon">
                             <form method ="post" action="http://localhost/WtProject/cake/grocery/indiCategory.asp">
                            <img src="img/CategoryIcons/beveragesIcon.png" height="150" width="150">
                            <input type = "hidden"name ="index"  value="5">
                            <a onClick = "this.parentNode.submit();"><h5>&nbsp;&nbsp;&nbsp;&nbsp;Beverages</h5></a>
                        </form>
                        </div>
                    <!-- </div> -->&nbsp;&nbsp;&nbsp;&nbsp; 
                    <!-- </div> -->&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <!-- </div> -->

                   <!--  <div class="categories__item">
                        <div class="categories__item__icon">
                            <span class="flaticon-006-macarons"></span>
                            <h5>Donut</h5>
                        </div>
                    </div> -->
                <!-- </div> -->
            </div>
        </div>
    </div>
    <!-- Shop Section Begin -->
    
    <!-- Shop Section End -->

    <!-- Footer Section Begin -->
    <br>
    <br><br>
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