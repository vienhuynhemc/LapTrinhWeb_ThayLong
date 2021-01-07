<%@ page import="java.util.Map" %>
<%@ page import="model.language.IndexLanguageModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TVT Shop | Giỏ hàng</title>

    <!-- Font awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <script src="js/Truong/jquery/jquery-3.5.1.min.js" ></script>
    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous"> -->
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
    <link href="css/Mycard.css" rel="stylesheet">
    <link rel="stylesheet" href="css/trangChu.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/banner.css">
    <link rel="stylesheet" href="css/cart.css">

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script src="js/Truong/jquery/jquery-3.5.1.min.js" ></script>
    <![endif]-->



    <%

        //  Lấy list ngôn ngữ ra
        Map<String ,String> lang = (Map<String, String>) session.getAttribute("langList");

        // Riêng ở trang chủ, khi mở server thì nó vô thẳng trang này nên là lấy thủ công ra 1 tí
        if(lang == null){
            lang = IndexLanguageModel.getInstance().getList("vietnamese");
        }

    %>


</head>

<body>

<!-- wpf loader Two -->
<%--<jsp:include page="../share/_LayoutLoadAndScroll.jsp"></jsp:include>--%>
<!-- END SCROLL TOP BUTTON -->

<!-- Start header section -->
<jsp:include page="../share/_LayoutHeader.jsp">
    <jsp:param name="linkMainPage" value="IndexLanguageController"/>
    <jsp:param name="levelPage" value="../"/>
    <jsp:param name="activeselect" value="index.jsp"/>
</jsp:include>
<!-- / header section -->
<!-- menu -->
<!-- / header section -->
<!-- menu -->

<!-- / menu -->

<!-- catg header banner section -->
<%request.setCharacterEncoding("utf-8");%>
<jsp:include page="../share/_LayoutBanner.jsp">
    <jsp:param name="title" value="Giỏ hàng"/>
</jsp:include>
<!-- / catg header banner section -->

<section class="contentcart">
    <div class="cart">
        <div class="cartleft" id="loadCart">

            <!-- dùng ajax để load cart-->





            <!-- end Code-->
        </div>

        <div class="cartright">
            <h3>Thông tin đơn hàng</h3>
            <div class="pricecr">
                <div class="pricedivright">
                    <p>Phí vận chuyển: </p>
                    <p>70,000 VND</p>
                </div>
                <div class="pricedivright">
                    <p>Tổng tiền: </p>
                    <p>4,359,000 VND</p>
                </div>
            </div>
            <div class="linecr"></div>
            <div class="pricecr">
                <div class="pricedivright">
                    <p>Số loại:</p>
                    <p>6</p>
                </div>
                <div class="pricedivright">
                    <p>Số lượng</p>
                    <p>14</p>
                </div>
            </div>
            <div class="linecr"></div>
            <div class="pricecr">
                <div class="pricedivrightinfor">
                    <div>
                        <i class="fa fa-clock-o"></i>
                        <p>Thời gian giao hàng từ 1-5 ngày tùy khu vực</p>
                    </div>
                    <div>
                        <i class="fa fa-truck"></i>
                        <p>Free ship cho đơn hàng từ 499k trở lên</p>
                    </div>
                </div>
            </div>
            <div class="linecr"></div>
            <div class="note">
                <p>Ghi chú đơn hàng</p>
                <textarea name="" id="" cols="30" rows="10"></textarea>
            </div>
            <a href="checkout.html" class="submit">
                Thanh toán
            </a>

            <!-- Lam dep -->>
            <div class="box1">
            </div>
            <div class="box2">
                <div></div>
                <div style="background-color: #ff7315;"></div>
                <div></div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="../share/_LayoutChatBox.jsp"></jsp:include>

<!-- footer -->
<jsp:include page="../share/_LayoutFooter.jsp">
    <jsp:param name="levelPage" value=""/>
</jsp:include>
<!-- / footer -->
<!-- Login Modal -->
<%--<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"--%>
<%--     aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-body">--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
<%--                <h4>Login or Register</h4>--%>
<%--                <form class="aa-login-form" action="">--%>
<%--                    <label for="">Username or Email address<span>*</span></label>--%>
<%--                    <input type="text" placeholder="Username or email">--%>
<%--                    <label for="">Password<span>*</span></label>--%>
<%--                    <input type="password" placeholder="Password">--%>
<%--                    <button class="aa-browse-btn" type="submit">Login</button>--%>
<%--                    <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me--%>
<%--                    </label>--%>
<%--                    <p class="aa-lost-password"><a href="#">Lost your password?</a></p>--%>
<%--                    <div class="aa-register-now">--%>
<%--                        Don't have an account?<a href="account.html">Register now!</a>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </div><!-- /.modal-content -->--%>
<%--    </div><!-- /.modal-dialog -->--%>
<%--</div>--%>




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
<%--<script src="js/custom.js"></script>--%>
<script src="js/Truong/jquery/jquery-3.5.1.min.js" ></script>


<script>
    $(function (){
        $.ajax({
            url: 'LoadCartController',
            dataType:'html',
            type:'get',
            success: function (data) {
                $('#loadCart').html(data);
            },
            error: function (e) {
                window.location.href = "index.jsp";
            }
        });

    });

</script>

</body>

</html>

