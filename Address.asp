<!DOCTYPE html>
<html lang="zxx">

<head><style>
     label { 
            float: left; 
            top:100px;
        } 
    span { 
            display: block; 
            overflow: hidden; 
        } </style>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up</title>

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
    <!--#include file="header.asp"-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="./index.asp">Home</a></li>
                            <li><a href="./about.asp">About</a></li>
                             <li><a href="./categories.asp">Categories</a></li>
                            <li class="active"> <a href="./shoping-cart.asp">Cart</a>
                                 <li ><a href="./orders.asp">Orders</a>
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
    <!--SignUp Setion--><br>
    <div class="col-lg-8">
     <div class="about__text">
              <div class="section-title">
                        <span>Please enter your details</span>
               </div>
      </div>
       </div>
                
                <div class="col-lg-8">
                    <div class="contact__form">
                        <form action="shoping-cart.asp" onsubmit ="return CheckDetails()" method="post" >
                            <div class="row">
                                    <div class="col-lg-6">
                                        <label>Full Name:</label>
                                    <input type="text" placeholder="Enter your Full Name" id="username" name="username">
                                </div>
                                <div class="col-lg-6">
                                    <label>Email:</label>
                                    <input type="text" placeholder="Enter your Email" id="email" name="email">
                                </div>
                                <div class="col-lg-6">
                                    <label>Flat, House no., Building, Company, Apartment:</label>
                                   <input type="text" placeholder="E.g Flat 102,Rose Villa" id="add1" name="add1">
                               </div>
                               <div class="col-lg-6">
                                   <label>Area, Colony, Street, Sector, Village</label>
                                   <input type="text" placeholder="E.g. Rose Lane" id="add2" name="add2">
                               </div>
                               <div class="col-lg-6">
                                   <label>Landmark</label>
                                   <input type="text" placeholder="E.g.Near Station" id="add3" name="add3">
                               </div>
                               <div class="col-lg-6">
                                   <label>Town/City</label>
                                   <input type="text" placeholder="E.g. Kandivali" id="add4" name="add4">
                               </div>
                               <div class="col-lg-12">
                                    <button type="submit" class="site-btn">Add Address</button><br><br><br>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
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
<script>
    function CheckDetails(){
 var user = document.getElementById("username").value;
  var email = document.getElementById("email").value;
  var add1 = document.getElementById("add1").value;
  var add2 = document.getElementById("add2").value;
  var add3 = document.getElementById("add3").value;
  var add4 = document.getElementById("add4").value;
 if(user  == ""){
    alert("Username cannot be empty");
    return false;
 }
else if(email == ""){
   alert("Email cannot be empty");
    return false;
}
else if(add1=="")
{
     alert("Address cannot be empty");
    return false;
}
else if(add2=="")
{
     alert("Address cannot be empty");
    return false;
}
else if(add3=="")
{
     alert("Address cannot be empty");
    return false;
}
else if(add4=="")
{
     alert("Address cannot be empty");
    return false;
}
else if(email != "")
{
if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(email))
{
    <% Session("Address") = "true"%>
    return (true)
}
 alert("You have entered an invalid email address!")
    return (false)
} 
}
</script>
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