<%@ page import="beans.loginAdmin.UserAdmin" %>
<%@ page import="beans.ringNotification.RingNotification" %>
<%@ page import="model.headerAdmin.HeaderAdminModel" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/12/2020
  Time: 8:14 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TVTSHOP ADMIN | Trang chủ</title>
    <link rel="stylesheet" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../css/indexAdmin.css">
    <link rel="stylesheet" href="../css/trangchuAdmin.css">

    <script src="../js/indexAdmin.js"></script>
</head>

<body>

<%

    //----------------------Kiểm tra thử đăng nhập hay chưa và có vai trò ở trang này hay không------------------------------------//
    if (request.getSession().getAttribute("userAdmin") == null) {

        //  Lưu vô session biến trang chờ đợi là trang này để có gì đăng nhập thành công chuyển tới trang này
        request.getSession().setAttribute("trackPage", "admin.index");

        //  Lưu trackpage xong thì sendredirect tới login
        response.sendRedirect("login.jsp");

    } else {

        UserAdmin userAdmin = (UserAdmin) request.getSession().getAttribute("userAdmin");
        List<RingNotification> ringNotificationList = HeaderAdminModel.getInstance().getListRingNotificationFromId(userAdmin.getAccount().getId());

%>


<div class="indexleft">
    <div class="indexleftlogo">
        <i class="fa fa-android"></i>
    </div>
    <div class="indexleftselect">
        <div>
            <a href="index.jsp" class="indexleftselectitem  ">
                <div class="active">
                    <i class="fa fa-linode"></i>
                    <p>Trang chủ</p>
                </div>
            </a>
            <a href="thuNhap.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-money"></i>
                    <p>Thu nhập</p>
                </div>
            </a>
            <div class="indexleftselectitemlv2 dontactiveindexleftselectitemlv2"
                 onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-user-o"></i>
                        <p>Quản lý tài khoản</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li><a href="LoadAccountNVVCController?page=1&type=RegisDate&search=&orderBy=DESC"> <i
                            class="fa fa-truck"></i> Nhân viên giao hàng</a></li>
                    <li><a href="LoadAccountNVKController?page=1&type=RegisDate&search=&orderBy=DESC"><i
                            class="fa fa-cube"></i>Nhân viên kho</a></li>
                    <li><a href="LoadAccountKHController?page=1&type=RegisDate&search=&orderBy=DESC"><i
                            class="fa fa-users"></i>Khách hàng</a></li>
                    </li>
                </ul>
                <input type="checkbox" style="display: none;">
            </div>
            <a href="quanLyBinhLuan.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-comment-o"></i>
                    <p>Quản lý đánh giá</p>
                </div>
            </a>
            <a href="home/quanLyDonHang.jsp" class="indexleftselectitem  ">
                <div <%if (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("quanLyDonHang")) {%>
                        class="active"
                        <%}%>
                >
                    <i class="fa fa-file-text-o"></i>
                    <p>Quản lý đơn hàng</p>
                </div>
            </a>
            <div class="indexleftselectitemlv2 dontactiveindexleftselectitemlv2"
                 onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-object-group"></i>
                        <p>Nhập hàng</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li><a href="nhapHang.html"> <i class="fa fa-cart-arrow-down"></i>Nhập hàng</a></li>
                    <li><a href="lichSuNhapHang.html"><i class="fa fa-history"></i>Lịch sử nhập hàng</a></li>
                </ul>
                <input type="checkbox" style="display: none;">
            </div>
            <div
                    <%
                        if ((request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("quanLyDanhMuc")) ||
                                (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("quanLySanPham")) ||
                                (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("quanLyHangSanXuat"))
                        ) {
                    %>
                    class="indexleftselectitemlv2"
                    <%} else {%>
                    class="indexleftselectitemlv2 dontactiveindexleftselectitemlv2"
                    <%}%>

                    onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-wpforms"></i>
                        <p>Quản lý sản phẩm</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li
                            <%if (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("quanLySanPham")) {%>
                            class="activelv2"
                            <%}%>
                    ><a href="home/quanLySanPham.jsp"> <i class="fa fa-copy"></i>Sản phẩm</a></li>
                    <li
                            <%if (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("quanLyDanhMuc")) {%>
                            class="activelv2"
                            <%}%>
                    ><a href="../LoadCategoryController?page=1&search=&type=ngay_tao&orderBy=asc"><i
                            class="fa fa-sticky-note-o"></i>Danh
                        mục</a></li>
                    <li
                            <%if (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("quanLyHangSanXuat")) {%>
                            class="activelv2"
                            <%}%>
                    ><a href="home/quanLyHangSanXuat.jsp"><i class="fa fa-viadeo-square"></i>Hãng
                        sản xuất</a></li>
                </ul>
                <%
                    if ((request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("quanLyDanhMuc")) ||
                            (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("quanLySanPham")) ||
                            (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("quanLyHangSanXuat"))
                    ) {
                %>
                <input type="checkbox" style="display: none;" checked>
                <%} else {%>
                <input type="checkbox" style="display: none;">
                <%}%>
            </div>
            <a href="home/quanLyMaGiamGia.jsp" class="indexleftselectitem  ">
                <div <%if (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("quanLyMaGiamGia")) {%>
                        class="active"
                        <%}%>
                >
                    <i class="fa fa-balance-scale"></i>
                    <p>Mã giảm giá</p>
                </div>
            </a>
            <div
                    <%
                        if ((request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("guiEmailThongBao")) ||
                                (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("phanHoiLienHe"))
                        ) {
                    %>
                    class="indexleftselectitemlv2"
                    <%} else {%>
                    class="indexleftselectitemlv2 dontactiveindexleftselectitemlv2"
                    <%}%>

                    onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-envelope-o"></i>
                        <p>Liên hệ</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li
                            <%if (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("guiEmailThongBao")) {%>
                            class="activelv2"
                            <%}%>
                    ><a href="home/guiEmailThongBao.jsp"> <i class="fa fa-bullhorn"></i>Thông báo</a></li>
                    <li
                            <%if (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("phanHoiLienHe")) {%>
                            class="activelv2"
                            <%}%>
                    ><a href="phanHoiLienHe.html"><i class="fa fa-reply-all"></i>Phản hồi</a></li>
                </ul>
                <%
                    if ((request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("guiEmailThongBao")) ||
                            (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("phanHoiLienHe"))
                    ) {
                %>
                <input type="checkbox" style="display: none;" checked>
                <%} else {%>
                <input type="checkbox" style="display: none;">
                <%}%>
            </div>
            <a href="home/thongTinTaiKhoanAdmin.jsp" class="indexleftselectitem  ">
                <div
                        <%if (request.getParameter("activeSelect") != null && request.getParameter("activeSelect").equals("thongTinTaiKhoanAdmin")) {%>
                        class="active"
                        <%}%>
                >
                    <i class="fa fa-user-circle-o"></i>
                    <p>Thông tin tài khoản</p>
                </div>
            </a>
            <a href="../index.jsp" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-shopping-cart"></i>
                    <p>Trở về trang mua sắm</p>
                </div>
            </a>
            <a href="../LogOutAdminController" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-power-off"></i>
                    <p>Đăng xuất</p>
                </div>
            </a>
        </div>
    </div>
</div>

<div class="indexright">
    <div class="indextop">
        <h3>TVT<span style="color: #2a2935;">S</span>hop</h3>
        <div class="indextopright">
            <div class="indextopbell  dontindextopbellinfor" onclick="indextopbellinfor(this)">
                <i class="fa fa-bell-o"></i>
                <div>
                    <i class="fa fa-circle"></i>
                </div>
                <div class="indextopbellinfor">
                    <i class="fa fa-caret-up"></i>
                    <div>
                        <h3>Thông báo</h3>
                        <div class="indextopbellinforcontent">
                            <div>

                                <%

                                    for (RingNotification ringNotification : ringNotificationList) {


                                %>

                                <a class="indextopbellinforcontentitem" href="<%=ringNotification.getLink()%>">
                                    <div>
                                        <img src="<%=ringNotification.getLinkImgSender()%>" alt="">
                                    </div>
                                    <div>
                                        <p><strong><%=ringNotification.getNameSender()%>
                                        </strong> <%=ringNotification.getContent()%>
                                        </p>
                                        <p><%=ringNotification.getDateCreated().toStrngRingNotification()%>
                                        </p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>

                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="checkbox" style="display: none;">
            </div>
            <a class="indextopaccount">
                <div>
                    <img src="<%=userAdmin.getAccount().getAvatarLink()%>" alt="">
                </div>
                <div>
                    <h3><%=userAdmin.getAccount().getDisplayName()%>
                    </h3>
                    <p>Admin</p>
                </div>
            </a>
        </div>
    </div>

    <div class="backgroundindexmain">
    </div>
    <!-- Code trang ở đây-->

    <div class="indexmain">
        <div class="div1">
            <div class="div1item">
                <div class="div1item1">
                    <i class="fa fa-users"></i>
                    <div>
                        <h3>5680</h3>
                        <p>Tổng số khách hàng đăng nhập</p>
                    </div>
                    <p>71%</p>
                </div>
                <div class="div1item2">
                    <div></div>
                    <div class="div1item2color1"></div>
                </div>
            </div>
            <div class="div1item">
                <div class="div1item1">
                    <i class="fa fa-user-plus"></i>
                    <div>
                        <h3>126</h3>
                        <p>Khách hàng đăng ký mới</p>
                    </div>
                    <p>63%</p>
                </div>
                <div class="div1item2">
                    <div></div>
                    <div class="div1item2color2"></div>
                </div>
            </div>
            <div class="div1item">
                <div class="div1item1">
                    <i class="fa fa-comment-o"></i>
                    <div>
                        <h3>803</h3>
                        <p>Đánh giá mới của khách hàng</p>
                    </div>
                    <p>40%</p>
                </div>
                <div class="div1item2">
                    <div></div>
                    <div class="div1item2color3"></div>
                </div>
            </div>
        </div>

        <div class="div2">
            <div class="div21">
                <h3>
                    <div class="iconheader"></div>
                    Mục tiêu doanh số
                    <div class="lineh3header"></div>
                </h3>
                <p>Tổng hiệu suất của tháng này</p>
                <div class="div21item">
                    <div>
                        <p>Đơn đặt hàng</p>
                        <h3 class="div21itemcolor1">366</h3>
                    </div>
                    <div>
                        <div></div>
                        <div class="div21itemcolor2"></div>
                    </div>
                    <div>
                        <p>Mục tiêu hàng tháng</p>
                        <p>100%</p>
                    </div>
                </div>
                <div class="div21item">
                    <div>
                        <p>Tổng thu nhập</p>
                        <h3 class="div21itemcolor3">127,429,288 VND</h3>
                    </div>
                    <div>
                        <div></div>
                        <div class="div21itemcolor4"></div>
                    </div>
                    <div>
                        <p>Mục tiêu hàng tháng</p>
                        <p>100%</p>
                    </div>
                </div>
            </div>
            <div class="div22">
                <h3>
                    <div class="iconheader"></div>
                    Top khách hàng
                    <div class="lineh3header"></div>
                </h3>
                <div>
                    <div>
                        <div class="div22item">
                            <div>
                                <img src="../img/product/avatar1.jpg" alt="">
                            </div>
                            <div>
                                <p>Diệu Đặng</p>
                                <p>1,172,000 VND</p>
                            </div>
                            <p>14,240,404 VND</p>
                            <i class="fa fa-angle-up div22up"></i>
                        </div>
                        <div class="div22line"></div>
                        <div class="div22item">
                            <div>
                                <img src="../img/product/avatar2.jpg" alt="">
                            </div>
                            <div>
                                <p>Nguyễn Văn A</p>
                                <p>499,000 VND</p>
                            </div>
                            <p>13,160,000 VND</p>
                            <i class="fa fa-angle-up div22up"></i>
                        </div>
                        <div class="div22line"></div>
                        <div class="div22item">
                            <div>
                                <img src="../img/product/avatar3.jpg" alt="">
                            </div>
                            <div>
                                <p>Nguyễn Văn B</p>
                                <p>699,000 VND</p>
                            </div>
                            <p>12,990,000 VND</p>
                            <i class="fa fa-angle-down div22down"></i>
                        </div>
                        <div class="div22line"></div>
                        <div class="div22item">
                            <div>
                                <img src="../img/product/avatar4.jpg" alt="">
                            </div>
                            <div>
                                <p>Nguyễn Văn D</p>
                                <p>250,000 VND</p>
                            </div>
                            <p>10,060,000 VND</p>
                            <i class="fa fa-angle-down div22down"></i>
                        </div>
                        <div class="div22line"></div>
                        <div class="div22item">
                            <div>
                                <img src="../img/product/avatar5.jpg" alt="">
                            </div>
                            <div>
                                <p>Nguyễn Văn E</p>
                                <p>1,720,000 VND</p>
                            </div>
                            <p>9,450,000 VND</p>
                            <i class="fa fa-angle-up div22up"></i>
                        </div>
                        <div class="div22line"></div>
                        <div class="div22item">
                            <div>
                                <img src="../img/product/avatar6.jpg" alt="">
                            </div>
                            <div>
                                <p>Nguyễn Văn F</p>
                                <p>120,000 VND</p>
                            </div>
                            <p>9,230,000 VND</p>
                            <i class="fa fa-angle-down div22down"></i>
                        </div>
                        <div class="div22line"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="div3">
            <div class="div31">
                <h3>
                    <div class="iconheader"></div>
                    Lịch sử hành động
                    <div class="lineh3header"></div>
                </h3>
                <div>
                    <div>
                        <div class="div31item">
                            <div class="div31itemcolor1">
                                <i class="fa fa-circle"></i>
                                <div></div>
                            </div>
                            <div>
                                <p>5 giây trước</p>
                                <p>Admin <strong>Nguyễn Thị Hoa Hồng</strong> vừa duyệt đơn hàng
                                    <strong>DH1003</strong> cho nhân viên kho <strong>Nguyễn Văn A</strong>
                                </p>
                            </div>
                        </div>
                        <div class="div31item">
                            <div class="div31itemcolor2">
                                <i class="fa fa-circle"></i>
                                <div></div>
                            </div>
                            <div>
                                <p>29 giây trước</p>
                                <p>Admin <strong>Nguyễn Thị Hoa Hồng</strong> vừa duyệt đơn hàng
                                    <strong>DH1002</strong> cho nhân viên kho <strong>Nguyễn Văn B</strong>
                                </p>
                            </div>
                        </div>
                        <div class="div31item">
                            <div class="div31itemcolor3">
                                <i class="fa fa-circle"></i>
                                <div></div>
                            </div>
                            <div>
                                <p>52 giây trước</p>
                                <p>Nhân viên giao hàng<strong> Nguyễn Hữu Đa</strong> vừa xác nhận giao hàng thành
                                    công đơn hàng <strong>DH0994</strong></p>
                            </div>
                        </div>
                        <div class="div31item">
                            <div class="div31itemcolor4">
                                <i class="fa fa-circle"></i>
                                <div></div>
                            </div>
                            <div>
                                <p>2 phút trước</p>
                                <p>Nhân viên kho <strong>Nguyễn Văn A</strong> vừa đóng gói đơn hàng
                                    <strong>DH0998</strong> và giao cho nhân viên giao hàng <strong>Nguyễn Trọng
                                        Cảnh</strong></p>
                            </div>
                        </div>
                        <div class="div31item">
                            <div class="div31itemcolor1">
                                <i class="fa fa-circle"></i>
                                <div></div>
                            </div>
                            <div>
                                <p>5 phút trước</p>
                                <p>Nhân viên kho <strong>Nguyễn Văn B</strong> vừa đóng gói đơn hàng
                                    <strong>DH0999</strong> và giao cho nhân viên giao hàng <strong>Nguyễn Lưu
                                        Ly</strong></p>
                            </div>
                        </div>
                        <div class="div31item">
                            <div class="div31itemcolor2">
                                <i class="fa fa-circle"></i>
                                <div></div>
                            </div>
                            <div>
                                <p>6 phút trước</p>
                                <p>Admin <strong>Nguyễn Thị Hoa Hồng</strong> vừa duyệt đơn hàng
                                    <strong>DH1001</strong> cho nhân viên kho <strong>Nguyễn Văn A</strong>
                                </p>
                            </div>
                        </div>
                        <div class="div31item">
                            <div class="div31itemcolor3">
                                <i class="fa fa-circle"></i>
                                <div></div>
                            </div>
                            <div>
                                <p>7 phút trước</p>
                                <p>Admin <strong>Nguyễn Thị Hoa Hồng</strong> vừa duyệt đơn hàng
                                    <strong>DH1000</strong> cho nhân viên kho <strong>Nguyễn Văn B</strong>
                                </p>
                            </div>
                        </div>
                        <div class="div31item">
                            <div class="div31itemcolor4">
                                <i class="fa fa-circle"></i>
                                <div></div>
                            </div>
                            <div>
                                <p>10 phút trước</p>
                                <p>Nhân viên giao hàng<strong> Nguyễn Văn Đại</strong> vừa xác nhận giao hàng thành
                                    công đơn hàng <strong>DH0992</strong></p>
                            </div>
                        </div>
                        <div class="div31item">
                            <div class="div31itemcolor1">
                                <i class="fa fa-circle"></i>
                                <div></div>
                            </div>
                            <div>
                                <p>15 phút trước</p>
                                <p>Nhân viên giao hàng<strong> Nguyễn Văn Đại</strong> vừa xác nhận giao hàng thành
                                    công đơn hàng <strong>DH0990</strong></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="div32">
                <h3>
                    <div class="iconheader"></div>
                    Những việc cần làm
                    <div class="lineh3header"></div>
                </h3>
                <div>
                    <div>
                        <ul id="vieccanlam">
                            <li>
                                <div class="div32item">
                                    <div>
                                        <p>Duyệt tất cả đơn hàng của tuần này nè :v</p>
                                        <i class="fa fa-close" onclick="removevieccanlam(this)"></i>
                                    </div>
                                    <div class="div32line"></div>
                                </div>
                            </li>
                            <li>
                                <div class="div32item">
                                    <div>
                                        <p>Quản lý một số đánh giá bị báo cáo</p>
                                        <i class="fa fa-close" onclick="removevieccanlam(this)"></i>
                                    </div>
                                    <div class="div32line"></div>
                                </div>
                            </li>
                            <li>
                                <div class="div32item">
                                    <div>
                                        <p>Sửa lại mức lương cho nhân viên Nguyễn Văn A</p>
                                        <i class="fa fa-close" onclick="removevieccanlam(this)"></i>
                                    </div>
                                    <div class="div32line"></div>
                                </div>
                            </li>
                            <li>
                                <div class="div32item">
                                    <div>
                                        <p>Thêm nhân viên giao hàng mới Nguyễn Văn L</p>
                                        <i class="fa fa-close" onclick="removevieccanlam(this)"></i>
                                    </div>
                                    <div class="div32line"></div>
                                </div>
                            </li>
                            <li>
                                <div class="div32item">
                                    <div>
                                        <p>Kiểm tra đơn hàng DH1004</p>
                                        <i class="fa fa-close" onclick="removevieccanlam(this)"></i>
                                    </div>
                                    <div class="div32line"></div>
                                </div>
                            </li>
                            <li>
                                <div class="div32item">
                                    <div>
                                        <p>Nhập hàng: Áo thun + Quần Jean nữ</p>
                                        <i class="fa fa-close" onclick="removevieccanlam(this)"></i>
                                    </div>
                                    <div class="div32line"></div>
                                </div>
                            </li>
                            <li>
                                <div class="div32item">
                                    <div>
                                        <p>Nhập hàng xong nhớ luôn là gửi gmail thông báo cho tất cả khách hàng</p>
                                        <i class="fa fa-close" onclick="removevieccanlam(this)"></i>
                                    </div>
                                    <div class="div32line"></div>
                                </div>
                            </li>
                            <li>
                                <div class="div32item">
                                    <div>
                                        <p>Thay đổi hình đại diện</p>
                                        <i class="fa fa-close" onclick="removevieccanlam(this)"></i>
                                    </div>
                                    <div class="div32line"></div>
                                </div>
                            </li>
                            <li>
                                <div class="div32item">
                                    <div>
                                        <p>Thống kế doanh thu</p>
                                        <i class="fa fa-close" onclick="removevieccanlam(this)"></i>
                                    </div>
                                    <div class="div32line"></div>
                                </div>
                            </li>
                            <li>
                                <div class="div32item">
                                    <div>
                                        <p>Duyệt tất cả đơn hàng</p>
                                        <i class="fa fa-close" onclick="removevieccanlam(this)"></i>
                                    </div>
                                    <div class="div32line"></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div>
                    <input type="text" placeholder="Việc cần làm" id="inputvieccanlam">
                    <button onclick="addViecCanLam()">+</button>
                </div>
            </div>
        </div>

    </div>

    <!-- Quan tâm nhiêu đây thôi-->
</div>

</body>

</html>
<%}%>