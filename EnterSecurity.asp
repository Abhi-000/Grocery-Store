<%
answer = Session.Contents("Answer")
if answer  =  "wrong" then
    Session.Contents.Remove("Answer")
    call display
end if
Function display
    %>
     <script type ="text/javascript">
        alert("The answer entered are wrong.Please try again");
    </script><%
end function
%>
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
                                    <li class="active"><a href="signInForm.asp">Sign in</a></span></li>
                                     <li><a href="SignUpForm.asp">Sign Up</a></span></li>
                                </ul>
                            </div>
                            <div class="header__logo">
                                <a href="./index.html"><img src="img/logo.png" alt=""></a>
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
                            <li><a href="./shop.asp">Shop</a></li>
                            <li><a href="./shoping-cart.asp">Cart</a>
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

    <!-- Login Section Begin --><br>
       <div class="col-lg-8">
     <div class="about__text">
              <div class="section-title">
                        <span>Please Enter the Security Questions</span>
                                <div class="col-lg-12">
                                     Entered at the time of Sign Up.
                                </div>
                        </div>
               </div>
      </div>
       </div>
                <div class="col-lg-8">
                    <div class="contact__form"><%'Session("email") = request.form("email")%>
                        <form action="Login/CheckSecurity.asp"  onsubmit ="return CheckDetails()" method="post">
                            <%
Function RandomNumber(LowNumber, HighNumber)
    RANDOMIZE
    RandomNumber = Round((HighNumber - LowNumber + 1) * Rnd + LowNumber)
End Function
dim questions(10)
' dim a
  set con=Server.CreateObject("ADODB.connection")
  con.Provider="Microsoft.Jet.OLEDB.4.0"
  con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
  set rs=Server.CreateObject("ADODB.RecordSet")
   rs.Open "Questions",con,0,3,2
   a = Split(rs("SecurityQuestions"),"|",-1)
    for each x in a
     questions(i) = x
     i=i+1
    Next
    ' dim tempQues
    ' tempQues = rs("SecurityQuestions")
    ' rs.AddNew
    ' rs("SecurityQuestions")=tempQues
    ' rs.Update
    dim randNum1,num,randNum2,randNum3,randNum4
    Randomize
    randNum = Int((rnd*4))+1
    Session("RN1") = randNum
    Response.write(questions(randNum))
    %>
    <input type="text" id="ans1" name="ans1"><br><%
    randNum1 = Int((rnd*4))+1
    while randNum = randNum1
      randNum1 = Int((rnd*4))+1
    wend
    Session("RN2") = randNum1
    Response.write(questions(randNum1))%>
    <input type="text" id="ans2" name="ans2"><br><%
    randNum2 = Int((rnd*4))+1
    while randNum2 = randNum1 or randNum2 = randNum
      randNum2 = Int((rnd*4))+1
    wend
    Session("RN3") = randNum2
    ' randNum= RandomNumber(0,4)
    Response.write(questions(randNum2))%>
    <input type="text" id="ans3" name="ans3"><br><%
    randNum3 = Int((rnd*4))+1
    while randNum3 = randNum1 or randNum3 = randNum2 or randNum3 = randNum
      randNum3 = Int((rnd*4))+1
    wend
    Session("RN4") = randNum3
    ' randNum= RandomNumber(0,4)
    Response.write(questions(randNum3))%>
    <input type="text" id="ans3" name="ans4"><br>
   <button type="submit" class= "site-btn">Submit</button><br><br><br>
                            </div>
                        </form>
                    </div>
                </div>
    </section>
    <!-- Contact Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg="img/footer-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="footer__widget">
                        <h6>WORKING HOURS</h6>
                        <ul>
                            <li>Monday - Friday: 08:00 am – 08:30 pm</li>
                            <li>Saturday: 10:00 am – 16:30 pm</li>
                            <li>Sunday: 10:00 am – 16:30 pm</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
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
                <div class="col-lg-4">
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
<script>
    function CheckDetails(){
var i
for(i=0;i<5;i++)
{
    var temp = i+1;
    var ans = document.getElementById("ans"+temp).value
    if(ans == "")
    {
        alert("Please fill the answers");
        return false;
    }
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