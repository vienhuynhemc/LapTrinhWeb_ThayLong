<%@ page import="java.util.ArrayList" %>
<%@ page import="beans.detailProduct.Product" %>
<%@ page import="worksWithDatabase.femaleProducts.FProductDAO" %>
<%@ page import="beans.loginAdmin.AccountStaffAdmin" %>
<%@ page import="beans.account.AccountCustomer" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/12/2020
  Time: 7:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TVT Shop | Danh sách sản phẩm</title>

    <!-- Font awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
    <!-- Top Slider CSS -->
    <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link rel="stylesheet" href="css/style.css">
    <link href="css/product.css" rel="stylesheet">
    <link rel="stylesheet" href="css/trangChu.css">
    <link rel="stylesheet" href="css/banner.css">
    <script src="js"></script>

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- lấy danh sách sản phẩm nữ
    <% ArrayList<Product> list = (ArrayList<Product>) request.getAttribute("list");
    AccountCustomer user = (AccountCustomer) session.getAttribute("user");

    %>

</head>
<!-- !Important notice -->
<!-- Only for product page body tag have to added .productPage class -->

<body class="productPage">
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
                            <span id="qc">Free ship với <span style="color:#ff7315; font-weight:bold">đơn</span> hàng từ <span
                                    style="color:#ff7315; font-weight:bold">499,000đ</span></span>
                            <!-- start currency -->
                            <!-- / currency -->
                            <!-- start cellphone -->

                            <!-- / cellphone -->
                        </div>
                        <!-- / header top left -->
                        <div class="aa-header-top-right">
                            <ul class="aa-head-top-nav-right">
                                <li class="iconRound"><a href="changeInforCustomer.html"><i class="fa fa-user"
                                                                                            aria-hidden="true"></i></a>
                                </li>
                                <li class="hidden-xs iconRound"><a href="wishlist.html"><i class="fa fa-heart"></i></a>
                                </li>
                                <li class="hidden-xs iconRoundLenght"><a href="cart.html">Giỏ hàng
                                    <span class="fa fa-shopping-cart"></span></a></li>
                                <li class="hidden-xs iconRoundLenght"><a href="checkout.html">Thanh toán <span
                                        class="fa fa-credit-card"></span></a></li>
                                <!-- <li><a href="" data-toggle="modal" data-target="#login-modal">Login</a></li> -->
                                <li class="hidden-xs iconRoundLenghtt">
                                    <div class="aa-language">
                                        <div class="dropdown">
                                            <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1"
                                               data-toggle="dropdown"
                                               aria-haspopup="true" aria-expanded="true">
                                                <img class="country" src="../img/vietnam.png" alt="english flag">Việt Nam
                                                <span class="caret"></span>
                                            </a>
                                            <ul class="dropdown-menu menucountry choiselanguage"
                                                aria-labelledby="dropdownMenu1">
                                                <li><a href="#"><img class="country" src="../img/vietnam.png" alt="">Việt
                                                    Nam</a></li>
                                                <li><a href="#"><img class="country" src="../img/language.png" alt="">English</a>
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
                            <a href="../index.html">
                                <span class="fa fa-shopping-cart"></span>
                                <p>TVT<strong style="color:#ff7315">S</strong>hop <span>Giá rẻ, nhanh chóng</span></p>
                            </a>
                            <!-- img based logo -->
                            <!-- <a href="index.html"><img src="../img/logo.jpg" alt="logo img"></a> -->
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
                                                <li><a href="../index.html">Trang chủ</a></li>
                                                <li><a href="product.html">Nam<span class="caret"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="product.html">Áo nam <span
                                                                class="caret"></span></a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="product.html">Áo khoác</a></li>
                                                                <li><a href="product.html">Áo thun</a></li>
                                                                <li><a href="product.html">Áo sơ mi</a></li>
                                                                <li><a href="product.html">Áo polo</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="product.html">Quần nam<span
                                                                class="caret"></span></a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="product.html">Quần ngắn</a></li>
                                                                <li><a href="product.html">Quần dài</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li><a href="product2.html" class="activeee">Nữ<span
                                                        class="caret"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="product.html">Áo nữ<span class="caret"></span></a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="product.html">Áo khoác</a></li>
                                                                <li><a href="product.html">Áo thun</a></li>
                                                                <li><a href="product.html">Áo sơ mi</a></li>
                                                                <li><a href="product.html">Áo polo</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="product.html">Quần / Váy nữ<span
                                                                class="caret"></span></a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="product.html">Váy</a></li>
                                                                <li><a href="product.html">Đầm</a></li>
                                                                <li><a href="product.html">Quần ngắn</a></li>
                                                                <li><a href="product.html">Quần dài</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li><a href="contact.html">Liên hệ</a></li>
                                                <li><a href="about_US.html">Về chúng tôi</a></li>
                                                <li><a href="../admin/home/login.html">ADMIN</a></li>
                                            </ul>
                                        </div>
                                        <!--/.nav-collapse -->
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- cart box -->
                        <div class="aa-cartbox">
                            <a class="aa-cart-link" href="cart.html">
                                <span class="fa fa-cart-arrow-down"></span>
                                <span class="aa-cart-title">Giỏ hàng</span>
                                <span class="aa-cart-notify">2</span>
                            </a>
                            <div class="aa-cartbox-summary  xemnhanhgiohang">
                                <ul>
                                    <li>
                                        <a class="aa-cartbox-img" href="detailsProduct.html"><img src="../img/do/nu/12.jpg"
                                                                                                  alt="img"></a>
                                        <div class="aa-cartbox-info">
                                            <h4><a href="detailsProduct.html">Áo thun MST 1002</a></h4>
                                            <p>2 x 299,000 VND</p>
                                        </div>
                                        <a class="aa-remove-product" href="detailsProduct.html"><span
                                                class="fa fa-times"></span></a>
                                    </li>
                                    <li>
                                        <a class="aa-cartbox-img" href="detailsProduct.html"><img src="../img/do/nu/13.jpg"
                                                                                                  alt="img"></a>
                                        <div class="aa-cartbox-info">
                                            <h4><a href="detailsProduct.html">Áo thun kéo ASF 1209</a></h4>
                                            <p>3 x 129,000 VND</p>
                                        </div>
                                        <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                                    </li>
                                    <li>
                      <span class="aa-cartbox-total-title">
                        Tổng tiền
                      </span>
                                        <span class="aa-cartbox-total-price">
                        985,000 VND
                      </span>
                                    </li>
                                </ul>
                                <a class="aa-cartbox-checkout aa-primary-btn tinhtien" href="checkout.html">Thanh
                                    toán</a>
                            </div>
                        </div>
                        <!-- / cart box -->
                        <!-- search box -->
                        <div class="aa-search-box">
                            <form action="">
                                <input type="search" name="" id="" placeholder="Tìm kiếm ở đây">
                                <button type="submit"><span class="fa fa-search"></span></button>
                                <input name="page" value="1" type="hidden">
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
<!-- menu -->

<!-- / menu -->

<!-- catg header banner section -->
<section id="aa-catg-head-banner">

    <div class="aa-catg-head-banner-area">
        <div class="container">
            <div class="aa-catg-head-banner-content1">
                <h2>Sản phẩm</h2>
                <ul class="breadcrumbb">
                    <li><a href="../index.html">Trang chủ</a> <i class="fa fa-angle-double-right"></i></li>
                    <li>Sản phẩm</li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!-- / catg header banner section -->

<!-- product category -->
<section id="aa-product-category">
    <div class="container contentlist">
        <div class="row ">
            <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
                <div class="aa-product-catg-content">
                    <div class="aa-product-catg-head">
                        <div class="aa-product-catg-head-left headerproduct">
                            <form action="" class="aa-sort-form">
                                <label for="">XẾP THEO</label>
                                <select name="type" id="type">
                                    <option value="ma_sp" selected >Mã sản phẩm</option>
                                    <option value="ten_sp">Tên sản phẩm</option>
                                    <option value="ngay_tao">Ngày cập nhập </option>
                                    <input type="hidden" name="orderBy" value="">
                                </select>
                            </form>
                            <form action="" class="aa-show-form">
                                <label for="">XEM</label>
                                <select name="">
                                    <option value="1" selected>6</option>
                                    <option value="2">9</option>
                                    <option value="3">12</option>
                                </select>
                            </form>
                        </div>
                        <div class="aa-product-catg-head-right  headerproduct">
                            <P>CHẾ ĐỘ XEM</P>
                            <a id="grid-catg" href="#" class="color1li"><span class="fa fa-th"></span></a>
                            <a id="list-catg" href="#" class="color2li"><span class="fa fa-list"></span></a>
                        </div>
                    </div>
                    <div class="aa-product-catg-body">
                        <ul class="aa-product-catg">

                            <% for(Product p : list){%>
                            <!-- start single product item -->
                            <li>
                                <figure>
                                    <a class="aa-product-img" href="detailsProduct.html"><img
                                            src="img/do/nu/nu/spn2.webp"
                                            alt="polo shirt img"></a>
                                    <a class="aa-add-card-btn" href="cart.html"><span
                                            class="fa fa-shopping-cart"></span>Thêm vào
                                        giỏ</a>
                                    <figcaption>
                                        <h4 class="aa-product-title"><a href="detailsProduct.html"><%= p.getName()%></a></h4>
                                        <span class="aa-product-price sprice">239,000 VND</span><span
                                            class="aa-product-price"><del>259,000
                          VND</del></span>
                                        <p class="aa-product-descrip">Áo Thun Croptop Nữ WTS 2036, loại áo thun croptop
                                            ba lỗ sành điệu,
                                            cá tính, trẻ trung.
                                            Là item không thể thiếu của các bạn nữ. Đây là kiểu áo croptop ba lỗ phổ
                                            biến và được ưa chuộng
                                            nhất của
                                            những ngôi sao.</p>
                                    </figcaption>
                                </figure>
                                <div class="aa-product-hvr-content">
                                    <a href="" data-toggle="tooltip" data-placement="top"
                                       title="Thêm vào yêu thích"><span
                                            class="fa fa-heart"></span></a>
                                    <!-- <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a> -->
                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Xem nhanh"
                                       data-toggle="modal"
                                       data-target="#quick-view-modal"><span class="fa fa-eye"></span></a>
                                </div>
                                <!-- product badge -->
                                <span class="aa-badge aa-sale" href="#">Giảm giá!</span>
                            </li>
                            <%}%>
                        </ul>
                        <!-- Xem nhanh modal -->
                        <div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <div class="row">
                                            <!-- Modal view slider -->
                                            <div class="col-md-6 col-sm-6 col-xs-12 viewnhanhcol">
                                                <div class="aa-product-view-slider viewnhanhcol">
                                                    <div class="simpleLens-gallery-container viewnhanhcol contentviewnhanh"
                                                         id="demo-1">
                                                        <div class="simpleLens-container">
                                                            <div class="simpleLens-big-image-container viewnhanhcol">
                                                                <a class="simpleLens-lens-image"
                                                                   data-lens-image="../img/modal1.png">
                                                                    <img src="../img/modal1.png"
                                                                         class="simpleLens-big-image">
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="simpleLens-thumbnails-container div2scl">
                                                            <a href="#" class="simpleLens-thumbnail-wrapper"
                                                               data-lens-image="../img/modal1.png"
                                                               data-big-image="../img/modal1.png">
                                                                <img src="../img/modal1.png">
                                                            </a>
                                                            <a href="#" class="simpleLens-thumbnail-wrapper"
                                                               data-lens-image="../img/modal2.png"
                                                               data-big-image="../img/modal2.png">
                                                                <img src="../img/modal2.png">
                                                            </a>

                                                            <a href="#" class="simpleLens-thumbnail-wrapper"
                                                               data-lens-image="../img/modal4.png"
                                                               data-big-image="../img/modal4.png">
                                                                <img src="../img/modal4.png">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal view content -->
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <div class="aa-product-view-content">
                                                    <h3>Váy ngắn cao cấp <span style="color: #ff7315"> MSY</span></h3>
                                                    <div class="aa-price-block">
                                                        <div class="rating">
                                                            <div>
                                                                <i class="staryellow fa fa-star"></i>
                                                                <i class="staryellow fa fa-star"></i>
                                                                <i class="staryellow fa fa-star"></i>
                                                                <i class="staryellow fa fa-star"></i>
                                                                <i class="graystar fa fa-star"></i>
                                                            </div>
                                                            <a href="">( 14 người đánh giá )</a>
                                                            <div class="istock">
                                                                <i class="fa fa-check-circle-o"></i>
                                                                <span>Còn hàng ( 14 ) </span>
                                                            </div>
                                                        </div>
                                                        <span class="aa-product-view-price">499,000 VND</span>
                                                    </div>
                                                    <p>Váy ngắn cao cấp MSY TVT Shop với form ôn vừa vặn và dễ mặc dành
                                                        cho bạn gái. Chất liệu cotton mang lại cảm giác thoáng mát.
                                                        In thông điệp Be Stronger tạo điểm nhấn cho các bạn gái.
                                                    </p>
                                                    <h4>Size</h4>
                                                    <div class="aa-prod-view-size">
                                                        <a href="#">S</a>
                                                        <a href="#">M</a>
                                                        <a href="#">L</a>
                                                        <a href="#">XL</a>
                                                        <a href="#">XXL</a>
                                                    </div>
                                                    <div class="aa-prod-quantity">
                                                        <div class="inputsl">
                                                            <button onclick="subtocard()"><span>-</span></button>
                                                            <input type="text" value="1" id="sladdtocard">
                                                            <button onclick="plustocard()"><span>+</span></button>
                                                        </div>
                                                        <div class="danhmucprod">
                                                            <p class="aa-prod-category">
                                                                <span>Danh mục: </span><a href="#">Váy cao cấp SPY</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="aa-prod-view-bottom">
                                                        <a href="cart.html"
                                                           class="aa-add-to-cart-btn addTocardViewQuick"
                                                           style="color: white;"><span
                                                                class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                                                        <a href="detailsProduct.html" class="aa-add-to-cart-btn"
                                                           style="color: white;"><span
                                                                class="fa fa-eye"></span>Xem chi tiết</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal-dialog -->
                        </div><!-- / Xem nhanh modal -->
                    </div>
                    <div class="aa-product-catg-pagination">
                        <nav>
                            <ul class="pagination">
                                <%
                                    // hiển thị số trang
                                    int numPage = (int) request.getAttribute("numPage");

                                    // lấy trang hiện tại
                                    int pageNow = Integer.parseInt(request.getParameter("page"));
                                    System.out.println(pageNow);


                                %>

                                <li>
                                    <a href="LoadListFProductController?page=<%=Integer.parseInt(request.getParameter("page")) - 1%>&idCategory=<%= request.getParameter("idCategory")%>&search=<%= request.getParameter("search")%>&type=<%= request.getParameter("type")%>&orderBy=<%= request.getParameter("orderBy")%>" aria-label="Previous">
                                        <span aria-hidden="true" class="nextprebar">&laquo;</span>
                                    </a>
                                </li>
                              <!--  <li><a href="#" class="activenextbar">1</a></li> -->

                                <% for( int i = 1; i <= numPage; i++){
                                    if(i == pageNow){
                                %>
                                <li style="background-color: #ff6600"><a href="LoadListFProductController?page=<%=i%>&idCategory=<%= request.getParameter("idCategory")%>&search=<%= request.getParameter("search")%>&type=<%= request.getParameter("type")%>&orderBy=<%= request.getParameter("orderBy")%>"><%=i%></a></li>
                                <% } else {%>
                                <li><a href="LoadListFProductController?page=<%=i%>&idCategory=<%= request.getParameter("idCategory")%>&search=<%= request.getParameter("search")%>&type=<%= request.getParameter("type")%>&orderBy=<%= request.getParameter("orderBy")%>"><%=i%></a></li>
                                <%}}%>
                                <li>
                                    <a href="LoadListFProductController?page=<%=Integer.parseInt(request.getParameter("page")) + 1%>&idCategory=<%= request.getParameter("idCategory")%>&search=<%= request.getParameter("search")%>&type=<%= request.getParameter("type")%>&orderBy=<%= request.getParameter("orderBy")%>" aria-label="Next">
                                        <span aria-hidden="true" class="nextprebar">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
                <aside class="aa-sidebar">
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3><span class="red">Danh</span> Mục
                            <div class="iconec">
                                <div class="plus"></div>
                            </div>
                        </h3>
                        <ul class="aa-catg-nav">
                            <li><a href="#">Áo thun quý tộc</a></li>
                            <li><a href="">Quần Jean</a></li>
                            <li><a href="">Áo sơ mi</a></li>
                            <li><a href="">Quần kaki</a></li>
                            <li><a href="">Áo thun tay dài</a></li>
                        </ul>
                    </div>

                    <h3 class="maintitilefilter">Lọc bởi
                        <div class="iconec">
                            <div class="plus"></div>
                        </div>
                    </h3>

                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <p><span class="red healtitle">Màu</span> sắc</p>
                        <div class="aa-color-tag">
                            <a class="aa-color-green" href="#"></a>
                            <a class="aa-color-yellow" href="#"></a>
                            <a class="aa-color-pink" href="#"></a>
                            <a class="aa-color-purple" href="#"></a>
                            <a class="aa-color-blue" href="#"></a>
                            <a class="aa-color-orange" href="#"></a>
                            <a class="aa-color-gray" href="#"></a>
                        </div>
                    </div>
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <p><span class="red healtitle">Khoảng</span> Giá</p>
                        <!-- price range -->
                        <div class="aa-sidebar-price-range">
                            <form action="">
                                <div id="skipstep" class="noUi-target noUi-ltr noUi-horizontal noUi-background">
                                </div>
                                <div class="rangespan">
                                    <span id="skip-value-lower" class="example-val">300,000 VND</span>
                                    <span id="skip-value-upper" class="example-val">1,000,000 VND</span>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <p><span class="red healtitle">Size</span></p>
                        <div class="divsize">
                            <a href="">S</a>
                            <a href="">M</a>
                            <a href="">L</a>
                            <a href="">XL</a>
                            <a href="">XXL</a>
                        </div>
                    </div>

                </aside>
                <div class="leftdivsmall">
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3><span class="red">Top</span>
                            <div class="iconec">
                                <div class="plus"></div>
                            </div>
                        </h3>
                        <div class="aa-recently-views">
                            <ul>
                                <li>
                                    <a href="detailsProduct.html" class="aa-cartbox-img g1"></a>
                                    <div class="aa-cartbox-info">
                                        <div class="imggddiv">
                                            <img class="imggd" src="../img/do/nu/nu/spn15.webp" alt="">
                                        </div>
                                        <h4><a href="detailsProduct.html">Áo Khoác Dù Nữ WOP 2004</a></h4>
                                        <div class="gdprice">
                                            <p>529,000 VND</p>
                                            <del>609,000
                                                VND
                                            </del>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <a href="detailsProduct.html" class="aa-cartbox-img g1"></a>
                                    <div class="aa-cartbox-info">
                                        <div class="imggddiv">
                                            <img class="imggd" src="../img/do/nu/nu/spn3.webp" alt="">
                                        </div>
                                        <h4><a href="detailsProduct.html">Áo kiểu Nữ Croptop Nữ WSH 2009</a></h4>
                                        <div class="gdprice">
                                            <p>299,000 VND</p>
                                            <del>359,000
                                                VND
                                            </del>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <a href="detailsProduct.html" class="aa-cartbox-img g1"></a>
                                    <div class="aa-cartbox-info">
                                        <div class="imggddiv">
                                            <img class="imggd" src="../img/do/nu/nu/spn9.webp" alt="">
                                        </div>
                                        <h4><a href="detailsProduct.html"></a></h4>
                                        <div class="gdprice">
                                            <p>399,000 VND</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- / product category -->


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
<footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-footer-top-area">
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div class="aa-footer-widget">
                                    <h3>CÔNG TY TNHH <span style="color:#ff7315;">TVT</span> SHOP</h3>
                                    <ul class="aa-footer-nav">
                                        <li><a href="#">Giới thiệu</a></li>
                                        <li><a href="#">Tuyển dụng</a></li>
                                        <li><a href="#">Tạp chí</a></li>
                                        <li><a href="#">Hợp tác</a></li>

                                    </ul>
                                    <img src="../img/logosalenoti.png" alt="" style=" width: 130px;margin-top: 20px;">
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="aa-footer-widget">
                                    <div class="aa-footer-widget">
                                        <h3>HỖ TRỢ KHÁCH HÀNG</h3>
                                        <ul class="aa-footer-nav">
                                            <li><a href="chooseSize.html">Hướng dẫn chọn size</a></li>
                                            <li><a href="shopping_guide.html">Hướng dẫn mua hàng</a></li>
                                            <li><a href="membership_policy.html">Chính sách thành viên</a></li>
                                            <li><a href="payment_policy.html">Chính sách đổi trả</a></li>
                                            <li><a href="guarantee.html">Chính sách bảo hành</a></li>
                                            <li><a href="check_orders.html">Tra cứu đơn hàng</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="aa-footer-widget">
                                    <div class="aa-footer-widget">
                                        <h3>ĐỐI TÁC VẬN CHUYỂN</h3>
                                        <ul class="aa-footer-nav giaohang">
                                            <li><img src="../img/giaohangnhanh.webp" alt=""></li>
                                            <li><img src="../img/giaohangtietkiem.webp" alt=""></li>
                                            <li><img src="../img/grap.webp" alt=""></li>

                                        </ul>
                                        <h3>PHƯƠNG THỨC THANH TOÁN</h3>
                                        <ul class="aa-footer-nav giaohang">
                                            <li><img src="../img/vnpay.webp" alt=""></li>
                                            <li><img src="../img/momo.webp" alt=""></li>
                                            <li><img src="../img/cash.webp" alt=""></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="aa-footer-widget">
                                    <div class="aa-footer-widget">
                                        <h3>Contact Us</h3>
                                        <address>
                                            <p> Đại học Nông Lâm</p>
                                            <p><span class="fa fa-phone"></span>+1 212-982-4589</p>
                                            <p><span class="fa fa-envelope"></span>tvtshop@gmail.com</p>
                                        </address>
                                        <div class="aa-footer-social">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-google"></i></a>
                                            <a href="#"><i class="fa fa-youtube"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-footer-bottom-area">
                        <a>© 2020 TVTShop. Powered by Haravan Enterprice</a>
                        <a href=""> Terms & Conditions</a>
                        <a href="">Safety and Security</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
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
<script src="js/bootstrap.js"></script>
<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="js/jquery.smartmenus.js"></script>
<!-- SmartMenus jQuery Bootstrap Addon -->
<script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>
<!-- To Slider JS -->
<script src="js/sequence.js"></script>
<script src="js/sequence-theme.modern-slide-in.js"></script>
<!-- Product view slider -->
<script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
<script type="text/javascript" src="js/jquery.simpleLens.js"></script>
<!-- slick slider -->
<script type="text/javascript" src="js/slick.js"></script>
<!-- Price picker slider -->
<script type="text/javascript" src="js/nouislider.js"></script>
<!-- Custom js -->
<script src="js/custom.js"></script>


</body>

</html>