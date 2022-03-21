<%
Session("Changed") = "false"
Session("added") = "no"
registered = Session.Contents("registered")
exist = Session.Contents("existsSub")
if registered = "yes" then 
    Session.contents.remove("registered")
    call register
end if
if exist = "Yes" then
    Session.contents.remove("existsSub")
    call subscribed
end if
if exist = "No" then
    Session.contents.remove("existsSub")
    call invalid
end if 
Function register
    %>
     <script type ="text/javascript">
        alert("Registered successfully");
        
    </script><%
end function
Function subscribed
    %>
     <script type ="text/javascript">
        alert("Subscribed");
        
    </script><%
end function
Function invalid
    %>
     <script type ="text/javascript">
        alert("Email not registered. Please SignUp");
    </script><%
end function
%>
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
                            <li class="active"><a href="./index.asp">Home</a></li>
                            <li><a href="./about.asp">About</a></li>
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
    <!-- Headeindexr Section End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__item set-bg" data-setbg="img/hero/hero-2.jpg">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            <div class="hero__text">
                                <h2>Only the fresh.</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
    </section>
    <%
    set con=Server.CreateObject("ADODB.connection")
 con.Provider="Microsoft.Jet.OLEDB.4.0"
 con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
 set rs1=Server.CreateObject("ADODB.RecordSet")
rs1.Open "Product",con,0,3,2
dim i
i=0
dim productNames(50)
dim prices(50)
dim path(50)
dim categories(50)
while not rs1.EOF
productNames(i) = rs1("ProductName")
prices(i)  =rs1("Price")
categories(i) = rs1("Category")
path(i) = rs1("Path")
rs1.MoveNext
i = i+1
    wend
    %>
    <!-- Hero Section End -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <% for i=0 to 7%>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                         <% dim str
                        str = "img/shop/"&path(i)&".jpeg"
                        %>
                        <div class="product__item__pic set-bg" data-setbg=<%Response.write(str)%>>
                            <div class="product__label">
                                <span><%response.write(categories(i))%></span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#"><%response.write(productNames(i))%></h6>
                            <div class="product__item__price"><%response.write("₹"&prices(i))%></div>
                            <div class="cart_add">
                             <form method ="post" action="http://localhost/WtProject/cake/grocery/shop-details.asp">
                                <input type="hidden" name="Cupcake" value=<%response.write(productNames(i))%>>
                                <input type="hidden" name="Price" value=<%response.write(prices(i))%>>
                                <input type = "hidden"name ="index"  value=<%response.write(i)%>>
                                <a onClick = "this.parentNode.submit();">Buy Now</a>
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
                <%next%>               
        </div>
    </section>
    <!-- Product Section End -->

    <!-- Class Section Begin -->
    <!-- Class Section End -->

    <!-- Team Section Begin -->
    <!-- Team Section End -->

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
                                          'rs.MoveLast
                                          i=0
                                          do while not rs.EOF
                                            users(i) = rs("username")
                                            reviews(i) = rs("Review")
                                            country(i) = rs("Country")
                                            i = i+1
                                            rs.MoveNext
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
    <!-- Testimonial Section End -->

    <!-- Instagram Section Begin -->
    <!-- Map End -->

    <!-- Footer Section Begin -->
    <!--#include file="footer.asp"-->
<!-- Footer Section End -->

<!-- Search Begin -->
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