<%@ page import="java.util.Map" %>
<%@ page import="model.language.ShoppingGuideLanguageModel" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/12/2020
  Time: 7:12 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TVT Shop | Hướng dẫn mua hàng</title>

    <!-- Font awesome -->
    <link href="../css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
          integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <!-- Bootstrap -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="../css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="../css/jquery.simpleLens.css">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="../css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="../css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="../css/theme-color/default-theme.css" rel="stylesheet">
    <!-- Top Slider CSS -->
    <link href="../css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->


    <link rel="stylesheet" href="../css/about.css">
    <!-- <link rel="stylesheet" href="css/header.css"> -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/banner.css">
    <link rel="stylesheet" href="../css/trangChu.css">
    <link rel="stylesheet" href="../css/shopping-guide.css">
    <script src="../js/trangChu.js"></script>
    <script src="../js/shopgui.js"></script>
    <script src="../js/index.js"></script>

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>

<!--------------------------------Lấy list ngôn ngữ ra---------------------------------------->

<%

    //  Lấy list ngôn ngữ ra
    Map<String ,String> lang = (Map<String, String>) session.getAttribute("langList");

    // Riêng khi test, khi mở server thì nó vô thẳng trang này nên là lấy thủ công ra 1 tí
    if(lang == null){
        lang = ShoppingGuideLanguageModel.getInstance().getList("vietnamese");
    }

%>

<body>
<!-- wpf loader Two -->
<!-- wpf loader Two -->
<div id="wpf-loader-two">
    <div class="wpf-loader-two-inner">
        <span style="color:#ff7315">Loading</span>
    </div>
</div>

<!-- SCROLL TOP BUTTON -->
<a class="scrollToTop movetop" href="#"><i class="fa fa-angle-double-up"></i></a>
<!-- END SCROLL TOP BUTTON -->

<!-- Start header section -->
<!-- / header section -->
<!-- menu -->

<!-- / menu -->

<!-- Start header section -->
<header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-header-top-area">
                        <!-- start header top left -->
                        <div class="aa-header-top-left">
                            <!-- start language -->

                            <!-- / language -->
                            <span id="qc"><%=lang.get("1")%> <span style="color:#ff7315; font-weight:bold"><%=lang.get("2")%></span> <%=lang.get("3")%> <span
                                    style="color:#ff7315; font-weight:bold">499,000đ</span></span>
                            <!-- start currency -->
                            <!-- / currency -->
                            <!-- start cellphone -->

                            <!-- / cellphone -->
                        </div>
                        <!-- / header top left -->
                        <div class="aa-header-top-right">
                            <ul class="aa-head-top-nav-right">
                                <li class="iconRound"><a href="home/changeInforCustomer.html"><i class="fa fa-user"
                                                                                                 aria-hidden="true"></i></a>
                                </li>
                                <li class="hidden-xs iconRound"><a href="home/wishlist.html"><i class="fa fa-heart"></i></a>
                                </li>
                                <li class="hidden-xs iconRoundLenght"><a href="home/cart.html"><%=lang.get("4")%>
                                    <span class="fa fa-shopping-cart"></span></a></li>
                                <li class="hidden-xs iconRoundLenght"><a href="home/checkout.html"><%=lang.get("5")%> <span
                                        class="fa fa-credit-card"></span></a></li>
                                <!-- <li><a href="" data-toggle="modal" data-target="#login-modal">Login</a></li> -->
                                <li class="hidden-xs iconRoundLenghtt">
                                    <div class="aa-language">
                                        <div class="dropdown">
                                            <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1"
                                               data-toggle="dropdown"
                                               aria-haspopup="true" aria-expanded="true">

                                                <img class="country"

                                                    <% if(lang.get("type").equals("vietnamese")){%>
                                                     src="img/vietnam.png"
                                                    <%} else{%>
                                                     src = "img/language.png"
                                                    <%}%>

                                                     alt="english flag">

                                                <% if(lang.get("type").equals("vietnamese")){%>
                                                Việt Nam
                                                <%} else{%>
                                                English
                                                <%}%>

                                                <span class="caret"></span>
                                            </a>
                                            <ul class="dropdown-menu menucountry choiselanguage"
                                                aria-labelledby="dropdownMenu1">
                                                <li

                                                        <%
                                                            //  Nếu như là ngôn ngữ việt nam thì ta thêm classs active vào
                                                            if(lang.get("type").equals("vietnamese")){
                                                        %>
                                                        class="activengonngu"
                                                        <%}%>

                                                ><a href="ShoppingGuideLanguageController?lang=vietnamese"><img class="country" src="img/vietnam.png" alt="">Việt
                                                    Nam</a></li>
                                                <li

                                                        <%
                                                            //  Nếu như là ngôn ngữ english thì ta thêm classs active vào
                                                            if(lang.get("type").equals("english")){
                                                        %>
                                                        class="activengonngu"
                                                        <%}%>

                                                ><a href="ShoppingGuideLanguageController?lang=english"><img class="country" src="img/language.png" alt="">English</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="hidden-xs iconRoundLenghtt iconPhone">
                                    <div class="cellphone hidden-xs">
                                        <p id="phone"><span class="fa fa-phone"></span>09-7112-209</p>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / header top  -->

    <!-- start header bottom  -->
    <div class="aa-header-bottom">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-header-bottom-area">
                        <!-- logo  -->
                        <div class="aa-logo">
                            <!-- Text based logo -->
                            <a href="IndexLanguageController">
                                <span class="fa fa-shopping-cart"></span>
                                <p>TVT<strong style="color:#ff7315">S</strong>hop <span><%=lang.get("24")%>, <%=" "+lang.get("25")%></span></p>
                            </a>
                            <!-- img based logo -->
                            <!-- <a href="index.html"><img src="img/logo.jpg" alt="logo img"></a> -->
                        </div>
                        <!-- / logo  -->
                        <section id="menu">
                            <div class="container">
                                <div class="menu-area">
                                    <!-- Navbar -->
                                    <div class="navbar navbar-default" role="navigation">
                                        <div class="navbar-header">
                                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                                    data-target=".navbar-collapse">
                                                <span class="sr-only">Toggle navigation</span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </button>
                                        </div>
                                        <div class="navbar-collapse collapse menuselect">
                                            <!-- Left nav -->
                                            <ul class="nav navbar-nav leftnav">
                                                <li><a href="IndexLanguageController"><%=lang.get("6")%></a></li>
                                                <li><a href="home/product.html"><%=lang.get("7")%><span class="caret"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="home/product.html"><%=lang.get("8")%> <span
                                                                class="caret"></span></a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="home/product.html"><%=lang.get("9")%></a></li>
                                                                <li><a href="home/product.html"><%=lang.get("10")%></a></li>
                                                                <li><a href="home/product.html"><%=lang.get("11")%></a></li>
                                                                <li><a href="home/product.html"><%=lang.get("12")%></a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="home/product.html"><%=lang.get("13")%><span
                                                                class="caret"></span></a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="home/product.html"><%=lang.get("14")%></a></li>
                                                                <li><a href="home/product.html"><%=lang.get("15")%></a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li><a href="home/product2.html"><%=lang.get("16")%><span class="caret"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="home/product2.html"><%=lang.get("17")%><span
                                                                class="caret"></span></a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="home/product2.html"><%=lang.get("9")%></a></li>
                                                                <li><a href="home/product2.html"><%=lang.get("10")%></a></li>
                                                                <li><a href="home/product2.html"><%=lang.get("11")%></a></li>
                                                                <li><a href="home/product2.html"><%=lang.get("12")%></a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="home/product2.html"><%=lang.get("18")%><span
                                                                class="caret"></span></a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="home/product2.html"><%=lang.get("19")%></a></li>
                                                                <li><a href="home/product2.html"><%=lang.get("26")%></a></li>
                                                                <li><a href="home/product2.html"><%=lang.get("14")%></a></li>
                                                                <li><a href="home/product2.html"><%=lang.get("15")%></a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li><a href="home/contact.html"><%=lang.get("21")%></a></li>
                                                <li><a href="home/about_US.html"><%=lang.get("22")%></a></li>
                                                <li><a href="admin/home/login.html"><%=lang.get("23")%></a></li>
                                            </ul>
                                        </div>
                                        <!--/.nav-collapse -->
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- cart box -->
                        <div class="aa-cartbox">
                            <a class="aa-cart-link" href="home/cart.html">
                                <span class="fa fa-cart-arrow-down"></span>
                                <span class="aa-cart-title"><%=lang.get("27")%></span>
                                <span class="aa-cart-notify">2</span>
                            </a>
                            <div class="aa-cartbox-summary  xemnhanhgiohang">
                                <ul>
                                    <li>
                                        <a class="aa-cartbox-img" href="home/detailsProduct.html"><img
                                                src="img/do/nu/12.jpg" alt="img"></a>
                                        <div class="aa-cartbox-info">
                                            <h4><a href="home/detailsProduct.html">Áo thun MST 1002</a></h4>
                                            <p>2 x 299,000 VND</p>
                                        </div>
                                        <a class="aa-remove-product" href="home/detailsProduct.html"><span
                                                class="fa fa-times"></span></a>
                                    </li>
                                    <li>
                                        <a class="aa-cartbox-img" href="home/detailsProduct.html"><img
                                                src="img/do/nu/13.jpg" alt="img"></a>
                                        <div class="aa-cartbox-info">
                                            <h4><a href="home/detailsProduct.html">Áo thun kéo ASF 1209</a></h4>
                                            <p>3 x 129,000 VND</p>
                                        </div>
                                        <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                                    </li>
                                    <li>
                      <span class="aa-cartbox-total-title">
                        <%=lang.get("30")%>
                      </span>
                                        <span class="aa-cartbox-total-price">
                        985,000 VND
                      </span>
                                    </li>
                                </ul>
                                <a class="aa-cartbox-checkout aa-primary-btn tinhtien" href="home/checkout.html"><%=lang.get("28")%></a>
                            </div>
                        </div>
                        <!-- / cart box -->
                        <!-- search box -->
                        <div class="aa-search-box">
                            <form action="">
                                <input type="text" name="" id="" placeholder="<%=lang.get("29")%>">
                                <button type="submit"><span class="fa fa-search"></span></button>
                            </form>
                        </div>
                        <!-- / search box -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / header bottom  -->
</header>
<!-- / header section -->

<section id="aa-catg-head-banner">

    <div class="aa-catg-head-banner-area">
        <div class="container">
            <div class="aa-catg-head-banner-content1">
                <h2>Hướng dẫn mua hàng</h2>
                <ul class="breadcrumbb">
                    <li><a href="../index.html">Trang chủ</a> <i class="fa fa-angle-double-right"></i></li>
                    <li>Hướng dẫn mua hàng</li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!-- / catg header banner section -->

<!-- Cart view section -->
<main>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 divtitle">
                <h3 class="title titlemain"><span class="red">Hướng Dẫn</span> Mua hàng</h3>
                <p class="titilesub">Mọi thú thật dễ dàng khi đến với chúng tôi <span style="color: red;"><i
                        class="fa fa-heart"></i></span></p>
            </div>
        </div>
        <div class="row guihuongdandiv">
            <div class="col-sm-12">
                <div class="huongdan">
                    <span class="c1">Cách 1</span>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="c1_note">Gọi điện tới tổng đài <span class="bl">09-7112-290</span> từ <span
                        class="bl">8h00-17hh00</span> anh Huỳnh Nhật Trường sẵng sàng phụ vụ bạn
                </div>
            </div>
            <div class="col-sm-12">
                <div class="huongdan">
                    <span class="c1">Cách 2</span>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="c1_note">Đặt hàng trên Website theo 5 bước nhẹ nhàng:</div>
            </div>
        </div>
        <div class="row" id="stepitem1">
            <div class="col-sm-12">
                <div class="boxstep">
                    <div class="boxstepmain">
                        <div class="step">
                            <div class="line1step w20"></div>
                            <div class="line2step w100"></div>
                            <div class="stepitem" onclick="stepitem1()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c0">Chọn sản phẩm</p>
                            </div>
                            <div class="stepitem stepitemlow" onclick="stepitem2()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c25 contentsteplow">Chọn màu sắc và size</p>
                            </div>
                            <div class="stepitem stepitemlow" onclick="stepitem3()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c50 contentsteplow">Thêm vào giỏ hàng</p>
                            </div>
                            <div class="stepitem stepitemlow" onclick="stepitem4()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c75 contentsteplow">Kiểm tra giỏ hàng</p>
                            </div>
                            <div class="stepitem stepitemlow" onclick="stepitem5()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c100 contentsteplow">Thanh toán</p>
                            </div>
                        </div>
                    </div>
                    <div class="boxstepmainsub1">

                    </div>
                    <div class="boxstepmainsub2">

                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-sm-12divgui endrowgui" class="hd"><img class="hd" src="../img/b1.png" alt=""></div>
        </div>
        <div class="row" id="stepitem2">
            <div class="col-sm-12">
                <div class="boxstep">
                    <div class="boxstepmain">
                        <div class="step">
                            <div class="line1step w25"></div>
                            <div class="line2step w100"></div>
                            <div class="stepitem" onclick="stepitem1()">
                                <i class="fa fa-check"></i>
                                <p class="contentstep c0">Chọn sản phẩm</p>
                            </div>
                            <div class="stepitem" onclick="stepitem2()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c25">Chọn màu sắc và size</p>
                            </div>
                            <div class="stepitem stepitemlow" onclick="stepitem3()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c50 contentsteplow">Thêm vào giỏ hàng</p>
                            </div>
                            <div class="stepitem stepitemlow" onclick="stepitem4()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c75 contentsteplow">Kiểm tra giỏ hàng</p>
                            </div>
                            <div class="stepitem stepitemlow" onclick="stepitem5()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c100 contentsteplow">Thanh toán</p>
                            </div>
                        </div>
                    </div>
                    <div class="boxstepmainsub1">

                    </div>
                    <div class="boxstepmainsub2">

                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-sm-12divgui endrowgui"><img class="hd" src="../img/b2.png" alt=""></div>
        </div>
        <div class="row" id="stepitem3">
            <div class="col-sm-12">
                <div class="boxstep">
                    <div class="boxstepmain">
                        <div class="step">
                            <div class="line1step w50"></div>
                            <div class="line2step w100"></div>
                            <div class="stepitem" onclick="stepitem1()">
                                <i class="fa fa-check"></i>
                                <p class="contentstep c0">Chọn sản phẩm</p>
                            </div>
                            <div class="stepitem" onclick="stepitem2()">
                                <i class="fa fa-check"></i>
                                <p class="contentstep c25">Chọn màu sắc và size</p>
                            </div>
                            <div class="stepitem" onclick="stepitem3()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c50">Thêm vào giỏ hàng</p>
                            </div>
                            <div class="stepitem stepitemlow" onclick="stepitem4()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c75 contentsteplow">Kiểm tra giỏ hàng</p>
                            </div>
                            <div class="stepitem stepitemlow" onclick="stepitem5()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c100 contentsteplow">Thanh toán</p>
                            </div>
                        </div>
                    </div>
                    <div class="boxstepmainsub1">

                    </div>
                    <div class="boxstepmainsub2">

                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-sm-12divgui endrowgui"><img class="hd" src="../img/b3.png" alt=""></div>
        </div>
        <div class="row" id="stepitem4">
            <div class="col-sm-12">
                <div class="boxstep">
                    <div class="boxstepmain">
                        <div class="step">
                            <div class="line1step w75"></div>
                            <div class="line2step w100"></div>
                            <div class="stepitem" onclick="stepitem1()">
                                <i class="fa fa-check"></i>
                                <p class="contentstep c0">Chọn sản phẩm</p>
                            </div>
                            <div class="stepitem" onclick="stepitem2()">
                                <i class="fa fa-check"></i>
                                <p class="contentstep c25">Chọn màu sắc và size</p>
                            </div>
                            <div class="stepitem" onclick="stepitem3()">
                                <i class="fa fa-check"></i>
                                <p class="contentstep c50">Thêm vào giỏ hàng</p>
                            </div>
                            <div class="stepitem" onclick="stepitem4()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c75">Kiểm tra giỏ hàng</p>
                            </div>
                            <div class="stepitem stepitemlow" onclick="stepitem5()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c100 contentsteplow">Thanh toán</p>
                            </div>
                        </div>
                    </div>
                    <div class="boxstepmainsub1">

                    </div>
                    <div class="boxstepmainsub2">

                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-sm-12divgui endrowgui"><img class="hd" src="../img/b4.png" alt=""></div>
        </div>
        <div class="row" id="stepitem5">
            <div class="col-sm-12 ">
                <div class="boxstep">
                    <div class="boxstepmain">
                        <div class="step">
                            <div class="line1step w100"></div>
                            <div class="line2step w100"></div>
                            <div class="stepitem" onclick="stepitem1()">
                                <i class="fa fa-check"></i>
                                <p class="contentstep c0">Chọn sản phẩm</p>
                            </div>
                            <div class="stepitem" onclick="stepitem2()">
                                <i class="fa fa-check"></i>
                                <p class="contentstep c25">Chọn màu sắc và size</p>
                            </div>
                            <div class="stepitem" onclick="stepitem3()">
                                <i class="fa fa-check"></i>
                                <p class="contentstep c50">Thêm vào giỏ hàng</p>
                            </div>
                            <div class="stepitem" onclick="stepitem4()">
                                <i class="fa fa-check"></i>
                                <p class="contentstep c75">Kiểm tra giỏ hàng</p>
                            </div>
                            <div class="stepitem" onclick="stepitem5()">
                                <i class="fa fa-circle"></i>
                                <p class="contentstep c100">Thanh toán</p>
                            </div>
                        </div>
                    </div>
                    <div class="boxstepmainsub1">

                    </div>
                    <div class="boxstepmainsub2">

                    </div>
                </div>
            </div>
            <div class="col-sm-12  endrowgui"><img class="hd" src="../img/b5.png" alt=""></div>
        </div>
    </div>
</main>


<!-- Subscribe section -->
<div class="chatbox">
    <div class="iconchatbox" onclick="actionchatbox()">
        <i class="fa fa-connectdevelop"></i>
    </div>

    <div class="contentchatbox" id="contentchatbox">
        <div class="chatboxheader">
            <div>
                <i class="fa fa-times" onclick="actionchatbox()"></i>
            </div>
            <div>
                <h3><span style="color:#ff7315">TVT</span> Shop</h3>
                <p>Thuờng trả lời tin nhắn sau 1 giờ</p>
            </div>
        </div>

        <div class="midchatbox">
            <p class="timechat">12:00 PM</p>
            <p class="tvtchat">Xin chào!</p>
            <div class="iconTS"><span style="color:#ff7315">T</span>S</div>
            <p class="tvtchat">Tôi có thể giúp gì cho bạn ?</p>
            <p class="userchat">Xin chào!</p>
        </div>
        <div class="chatboxfooter">
            <p>Nhập tin nhắn ở đây...</p>
            <i class="fa fa-thumbs-o-up"></i>
        </div>

        <script>
            function actionchatbox() {
                let element = document.getElementById("contentchatbox");
                if (element.classList.contains("actionchatbox")) element.classList.remove("actionchatbox");
                else element.classList.add("actionchatbox");
            }
        </script>
    </div>
</div>

<!-- footer -->
<jsp:include page="../footer/footer.jsp"/>
<!-- / footer -->

<!-- Login Modal -->
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4>Login or Register</h4>
                <form class="aa-login-form" action="">
                    <label for="">Username or Email address<span>*</span></label>
                    <input type="text" placeholder="Username or email">
                    <label for="">Password<span>*</span></label>
                    <input type="password" placeholder="Password">
                    <button class="aa-browse-btn" type="submit">Login</button>
                    <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me
                    </label>
                    <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
                    <div class="aa-register-now">
                        Don't have an account?<a href="account.html">Register now!</a>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.js"></script>
<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="../js/jquery.smartmenus.js"></script>
<!-- SmartMenus jQuery Bootstrap Addon -->
<script type="text/javascript" src="../js/jquery.smartmenus.bootstrap.js"></script>
<!-- To Slider JS -->
<script src="../js/sequence.js"></script>
<script src="../js/sequence-theme.modern-slide-in.js"></script>
<!-- Product view slider -->
<script type="text/javascript" src="../js/jquery.simpleGallery.js"></script>
<script type="text/javascript" src="../js/jquery.simpleLens.js"></script>
<!-- slick slider -->
<script type="text/javascript" src="../js/slick.js"></script>
<!-- Price picker slider -->
<script type="text/javascript" src="../js/nouislider.js"></script>
<!-- Custom js -->
<script src="../js/custom.js"></script>

</body>

</html>