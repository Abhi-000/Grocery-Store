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
                            <li><a href="./about.asp">About</a></li>
                            <li  class="active"><a href="./shop.asp">Categories</a></li>
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
<%
set con=Server.CreateObject("ADODB.connection")
con.Provider="Microsoft.Jet.OLEDB.4.0"
con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
set rs=Server.CreateObject("ADODB.RecordSet")
'rs.Open "Product",con,0,3,2

dim products(20)
dim prices(20)
dim i
dim found 
found =0
i=0
dim searchQuery 
dim itemNo
dim index
itemNo = -1
searchQuery = Request.Form("searchQuery")
rs.CursorType = 0  
rs.CursorLocation = 3
rs.Open "SELECT ProductName,Path,Price FROM Product WHERE ProductName LIKE '%"&searchQuery&"%' OR Category LIKE'%"&searchQuery&"%'",con
i = rs.RecordCount
%>

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <% If i=0 Then%>
                <CENTER><h3>No items matching your search</h3></CENTER>
                <%Else%>
                            <%do until rs.EOF%>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <%
                        dim str
                        str = "img/shop/"&rs.Fields.Item("Path")&".jpeg"
                        %>
                        <div class="product__item__pic set-bg" data-setbg=<%Response.write(str)%>>
                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#"><%Response.write(rs.Fields.Item("ProductName"))%></a></h6>
                            <div class="product__item__price"><%Response.write("₹"&rs.Fields.Item("Price"))%></div>
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
                <% 
                                rs.MoveNext
                                %>
                                <%loop 
                                rs.close 
                                con.close%>
                <% end if%>
            </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->

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