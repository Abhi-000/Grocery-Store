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

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__cart">
            <div class="offcanvas__cart__links">
                <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
                <a href="#"><img src="img/icon/heart.png" alt=""></a>
            </div>
            <div class="offcanvas__cart__item">
                <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
                <div class="cart__price">Cart: <span>$0.00</span></div>
            </div>
        </div>
        <div class="offcanvas__logo">
            <a href="./index.html"><img src="img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__option">
            <ul>
                <li>USD <span class="arrow_carrot-down"></span>
                    <ul>
                        <li>EUR</li>
                        <li>USD</li>
                    </ul>
                </li>
                <li>ENG <span class="arrow_carrot-down"></span>
                    <ul>
                        <li>Spanish</li>
                        <li>ENG</li>
                    </ul>
                </li>
                <li><a href="#">Sign in</a> <span class="arrow_carrot-down"></span></li>
            </ul>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header__top__inner">
                            <div class="header__top__left">
                                <ul>
                                    <% logged = Session.Contents("LoggedIn") 
                                user = Session.Contents("Username")
                                if logged = "true" then%>
                                <li><span>Welcome,</span><% Response.write(user)%>
                                     <li><a href="Logout.asp">Logout</a></span></li>
                                <% else %>
                                    <li><a href="signInForm.asp">Sign in</a></span></li>
                                    <li><a href="SignUpForm.asp">Sign Up</a></span></li>
                                <% end if %>
                                </ul>
                            </div>
                            <div class="header__logo">
                                <a href="./index.asp"><img src="img/logo.png" alt=""></a>
                            </div>
                            <div class="header__top__right">
                                <div class="header__top__right__cart">
                                    <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
                                    <div class="cart__price">Cart: <%
                                        email = Session.Contents("EmailId")
                                        set con=Server.CreateObject("ADODB.connection")
                                            con.Provider="Microsoft.Jet.OLEDB.4.0"
                                             con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
                                            set rs=Server.CreateObject("ADODB.RecordSet")
                                             rs.Open "AddToCart",con,0,3,2
                                             dim flag
                                             flag = 0
                                             if Session("LoggedIn") = "true" then
                                             while not rs.EOF and flag=0
                                                
                                                    if email = rs("EmailId") then
                                                    Response.write("$"&rs("Price"))%><span><%
                                                    flag = 1
                                                    else
                                                    rs.MoveNext
                                                    end if
                                        wend
                                        else
                                            Response.write("$0")
                                            end if
                                             %></span></div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="canvas__open"><i class="fa fa-bars"></i></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="./index.asp">Home</a></li>
                            <li><a href="./about.asp">About</a></li>
                            <li  class="active"><a href="./shop.asp">Shop</a></li>
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
                        <h2>Shop</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="./index.html">Home</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-1.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Dozen Cupcakes</a></h6>
                            <div class="product__item__price">$32.00</div>
                            <div class="cart_add">
                                <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="Dozen Cupcake"> 
                                <input type="hidden" name="Price" value="$32">
                                <input type = "hidden"name ="index"  value="1">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-2.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Cookies and Cream</a></h6>
                            <div class="product__item__price">$30.00</div>
                            <div class="cart_add">
                                <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="Cookies and Cream"> 
                                <input type="hidden" name="Price" value="$30"> 
                                <input type = "hidden"name ="index"  value="2">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-3.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Gluten Free Mini Dozen</a></h6>
                            <div class="product__item__price">$31.00</div>
                            <div class="cart_add">
                                <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="Gluten Free Mini Dozen"> 
                                <input type="hidden" name="Price" value="$31"> 
                                <input type = "hidden"name ="index"  value="3">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-4.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Cookie Dough</a></h6>
                            <div class="product__item__price">$25.00</div>
                            <div class="cart_add">
                                <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="Cookie Dough"> 
                                <input type="hidden" name="Price" value="$25"> 
                                <input type = "hidden"name ="index"  value="4">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-5.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Vanilla Salted Caramel</a></h6>
                            <div class="product__item__price">$05.00</div>
                            <div class="cart_add">
                                <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="Vanilla Salted Caramel"> 
                                <input type="hidden" name="Price" value="$05"> 
                                <input type = "hidden"name ="index"  value="5">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-6.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">German Chocolate</a></h6>
                            <div class="product__item__price">$14.00</div>
                            <div class="cart_add">
                                <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="German Chocolate"> 
                                <input type="hidden" name="Price" value="$14"> 
                                <input type = "hidden"name ="index"  value="6">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-7.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Dulce De Leche</a></h6>
                            <div class="product__item__price">$32.00</div>
                            <div class="cart_add">
                               <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="Dulce De Leche"> 
                                <input type="hidden" name="Price" value="$32"> 
                                <input type = "hidden"name ="index"  value="7">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-8.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Mississippi Mud</a></h6>
                            <div class="product__item__price">$08.00</div>
                            <div class="cart_add">
                                <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="Mississippi Mud"> 
                                <input type="hidden" name="Price" value="$08"> 
                                <input type = "hidden"name ="index"  value="8">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-9.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">VEGAN/GLUTEN FREE</a></h6>
                            <div class="product__item__price">$98.85</div>
                            <div class="cart_add">
                                <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="VEGAN/GLUTEN FREE"> 
                                <input type="hidden" name="Price" value="$99"> 
                                <input type = "hidden"name ="index"  value="9">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-10.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">SWEET CELTICS</a></h6>
                            <div class="product__item__price">$5.77</div>
                            <div class="cart_add">
                                <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="SWEET CELTICS"> 
                                <input type="hidden" name="Price" value="$6"> 
                                <input type = "hidden"name ="index"  value="10">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-11.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">SWEET AUTUMN LEAVES</a></h6>
                            <div class="product__item__price">$26.41</div>
                            <div class="cart_add">
                               <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="SWEET AUTUMN LEAVES"> 
                                <input type="hidden" name="Price" value="$27"> 
                                <input type = "hidden"name ="index"  value="11">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-12.jpg">
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">PALE YELLOW SWEET</a></h6>
                            <div class="product__item__price">$22.47</div>
                            <div class="cart_add">
                                <form method ="post" action="http://localhost/WtProject/cake/cake/shop-details.asp">
                                <input type="hidden" name="Cupcake" value="PALE YELLOW SWEET"> 
                                <input type="hidden" name="Price" value="$23"> 
                                <input type = "hidden"name ="index"  value="12">
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg="img/footer-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>WORKING HOURS</h6>
                        <ul>
                            <li>Monday - Friday: 08:00 am – 08:30 pm</li>
                            <li>Saturday: 10:00 am – 16:30 pm</li>
                            <li>Sunday: 10:00 am – 16:30 pm</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <div class="footer__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__newslatter">
                        <h6>Subscribe</h6>
                        <p>Get latest updates and offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Email">
                            <button type="submit"><i class="fa fa-send-o"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                  </div>
                  <div class="col-lg-5">
                    <div class="copyright__widget">
                        <ul>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Site Map</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
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