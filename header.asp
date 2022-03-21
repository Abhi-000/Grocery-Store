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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
    div.absolute {
  position: absolute;
  top: 50px;
  border: 3px solid #73AD21;
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
            <a href="./index.asp"><img src="img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__option">
            <ul>
                <li><a href="signInForm.asp">Sing in</a></li>
                <li><a href="SignUpForm.asp">Sign Up</a></li>
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
                                <ul><% logged = Session.Contents("LoggedIn") 
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
                        </li>
                    </ul>
                    
                            <div class="header__logo">
                                 <div class ="absolute">
                        <a href="./index.asp"><img width="50%" height="50%"src="img/Newlogo.png" alt=""></a>
                    </div>
                                <div class ="headerTop">
                            </div>
                            </div>
                            <div class="header__top__right">
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
                                    
                                <div class="header__top__right__cart">
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
                                             dim flag,wallet
                                             flag = 0
                                             if Session("LoggedIn") = "true" then
                                             while not rs.EOF and flag=0
                                                    if email = rs("EmailId") then
                                                             Response.write("$"&rs("Price"))
                                                             %><span><%
                                                            flag = 1
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
                                        if rs.eof then
                                            Response.write("$0")
                                        end if
                                        else
                                            Response.write("$0")
                                            end if
                                             %>
                                             &nbsp;&nbsp;
                                                 <i class="fa fa-credit-card" style="font-size:25px"></i>
                                                 <%  if Session("LoggedIn") = "true" then
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
                <div class="canvas__open"> </div>
        
            </div>
        </div>
        <!-- <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="./index.asp">Home</a></li>
                            <li><a href="./about.asp">About</a></li>
                            <li><a href="./categories.asp">Categories</a></li>
                            <li><a href="./shoping-cart.asp">Cart</a>
                            <li><a href="./orders.asp">Orders</a>
                                <ul class="dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./wisslist.html">Wisslist</a></li>
                                    <li><a href="./Class.html">Class</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="./contact.asp">Contact</a></li>
                            <li><a href="./review.asp">Review</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div> -->
 <!--    </header> -->