<!DOCTYPE html>
<html lang="zxx">

<head>
    <style>
    div.qty{
        text-align:left;
    }
    </style>
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
                                 <a href="./index.asp"><img width="50%" height="50%"src="img/Newlogo.png" alt=""></a>
                            </div>
                            <div class="header__top__right">
                                <div class="header__top__right__cart">
                                     <div class="header__top__right__links">
                                    <form action="search.asp" method="post">
                                    <div class="input-group rounded">
  <input type="search" name="searchQuery"class="form-control rounded" placeholder="Search" aria-label="Search"
    aria-describedby="search-addon" style="font-size:14px"/>
  <span class="input-group-text border-0" id="search-addon"style="font-size:14px">
    <button type="submit"><i class="fa fa-search"></i></button>
  </span>
</div>
</form>
</div>
                                     <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
                                    <div class="cart__price">Cart: <%
                                        email = Session.Contents("EmailId")
                                        set con=Server.CreateObject("ADODB.connection")
                                            con.Provider="Microsoft.Jet.OLEDB.4.0"
                                             con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
                                            set rs=Server.CreateObject("ADODB.RecordSet")
                                            set rs1=Server.CreateObject("ADODB.RecordSet")
                                             rs.Open "AddToCart",con,0,3,2
                                             rs1.Open "Table2",con,0,3,2
                                             dim flagLoggIn
                                             flagLoggIn = 0
                                             if Session("LoggedIn") = "true" then
                                             while not rs.EOF and flagLoggIn=0
                                                
                                                    if email = rs("EmailId") then
                                                    Response.write("$"&rs("Price"))%><span><%
                                                    flagLoggIn = 1
                                                    else
                                                    rs.MoveNext
                                                    end if
                                        wend
                                         while not rs1.eof 
                                            if email = rs1("EmailId") then
                                                wallet= rs1("Wallet")
                                                rs1.MoveNext
                                            else 
                                                rs1.MoveNext
                                            end if
                                        wend
                                        else
                                            Response.write("$0")
                                            end if
                                             %>
                                                 &nbsp;&nbsp;
                                                 <i class="fa fa-credit-card" style="font-size:25px"></i>
                                                 <%
                                                  if Session("LoggedIn") = "true" then
                                                    Response.write("₹"&wallet)
                                                  else
                                                    Response.write("₹0")
                                                    end if%>
                                             </span></div>
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
                             <li><a href="./categories.asp">Categories</a></li>
                            <li  ><a href="./shoping-cart.asp">Cart</a>
                                <li class="active"><a href="./orders.asp">Orders</a>
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
                        <h2>Orders</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="./index.html">Home</a>
                        <span>Orders</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shopping Cart Section Begin -->
    <%
                                            set con=Server.CreateObject("ADODB.connection")
                                                con.Provider="Microsoft.Jet.OLEDB.4.0"
                                                con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
                                                set rs=Server.CreateObject("ADODB.RecordSet")
                                                set rs1=Server.CreateObject("ADODB.RecordSet")
                                                 rs.Open "Orders",con,0,3,2
                                                 rs1.Open "Product",con,0,3,2
                                                 dim flag,allProduct(50),indiProductPrice(50),allProductPrice(50),allProductQty(50),path(50),splitedProductName
                                                 flag = 0
                                                  email = Session.Contents("EmailId")
                                                    flag= 0 
                                                    flafProduct = 0
                                                if Session("LoggedIn") = "true" then
                                                    while not rs.EOF and flag=0
                                                    if email = rs("EmailId") then
                                                    TotalPrice = rs("Price")
                                                    i=0
                                                    j=0
                                                    k=0
                                                    repeat = -1
                                                    flag= 1
                                                    z=0
                                                    dim tempProduct 
                                                    tempProduct = 0
                                                    product  = Split(rs("Product"),"|",-1)
                                                    indiPrice = Split(rs("IndiPrice"),"|",-1)
                                                    indiQty = Split(rs("qty"),"|",-1)
                                                    for each x in product
                                                            allProduct(i) = x
                                                             rs1.MoveFirst
                                                             flagProduct = 0
                                                             while not rs1.EOF and flagProduct= 0
                                                                splitedProductName = Split(rs1("ProductName")," ")
                                                                if allProduct(i) = splitedProductName(0) then
                                                                    allProductPrice(z) = rs1("Price")
                                                                     path(z) = rs1("Path")
                                                                    flagProduct = 1
                                                                     z = z +1
                                                                else 
                                                                    rs1.MoveNext
                                                                end if
                                                             wend 
                                                            tempProduct = tempProduct + 1
                                                            i = i+1
                                                    next 
                                                    for each y in indiPrice
                                                            indiProductPrice(j) = y
                                                            j = j+1
                                                    next 
                                                     for each a in indiQty
                                                            allProductQty(k) = a
                                                            k = k+1
                                                    next 
                                                else
                                                    rs.movenext
                                                end if
                                            wend
                                        else
                                            call Login
                                        end if
                                            itemNo = tempProduct -1
                                            function Login
                                                %><script type ="text/javascript">
                                            alert("Please Login to see your Orders");
                                            </script><%
                                            end function
                                            %>
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="shopping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr><% 
                                            for i=0 to itemNo-1
                                            %>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <%dim str
                                            str = "img/shop/"&path(i)&".jpeg"%>
                                            <img src=<%response.write(str)%> width="100px"alt="">
                                        </div>
                                        <div class="product__cart__item__text">
                                                                
                                            <h6><% response.write(allProduct(i)) %></h6>
                                            <h5><% response.write("₹"&allProductPrice(i))%></h5>
                                        </div>
                                    </td>
                                    <td class="quantity__item">
                                        <div class="quantity">
                                            <div class= "qty">
                                            <!-- <div class="pro-qty"> -->
                                                 <%response.write(allProductQty(i))%>
                                                <!-- <input type="text" id = "qty0"name = "qty0" value= <%
                                                'response.write(allProductQty(0))%>> -->
                                                <% 'session("")%>  
                                            </div>
                                    </td>
                                    <td class="cart__price"><%Response.write("₹"&indiProductPrice(i))%></td>
                                      
                          
                                       <% 'Session("CancelCupCake") = allProduct(0)
                                        'Session("indexCancel") = 1%>
                                        <!--  <td class="cart__close"> -->
                                     
                                       <!--  <a href = "cancel.asp"><span class="icon_close"></span></a> -->
                                </td>

                                </tr>
                                <%next%>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn">
                                <a href="shop.asp">Continue Shopping</a>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-4">
                </div>
            </div>
        </div>
    </section>
    <!-- Shopping Cart Section End -->

    <!-- Footer Section Begin -->
     <!--#include file="footer.asp"-->
<!-- Footer Section End -->
<script>
    function Ordered()
    { 
        alert("Food is ordered!")
    }
</script>
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