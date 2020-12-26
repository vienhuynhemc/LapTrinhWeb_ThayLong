<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/12/2020
  Time: 9:11 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TVTSHOP ADMIN | Thông tin lịch sử nhập hàng thu nhập </title>
    <link rel="stylesheet" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../../css/indexAdmin.css">
    <script src="../../js/indexAdmin.js"></script>

    <link rel="stylesheet" href="../../css/lichSuNhapHangAdmin.css">
    <script src="../../js/lichSuNhapHangAdmin.js"></script>

    <style>
        .table {
            background-color: #f5f5fa;
            border-radius: 10px;
            padding: 10px;
            margin-top: 40px;
            margin-bottom: 40px;
        }
    </style>

</head>

<body>


<div class="indexleft">
    <div class="indexleftlogo">
        <i class="fa fa-android"></i>
    </div>
    <div class="indexleftselect">
        <div>
            <a href="../index.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-linode"></i>
                    <p>Trang chủ</p>
                </div>
            </a>
            <a href="thuNhap.html" class="indexleftselectitem  ">
                <div class="active">
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
                    <li><a href="quanLyNVGH.html"> <i class="fa fa-truck"></i> Nhân viên giao hàng</a></li>
                    <li><a href="quanLyNVK.html"><i class="fa fa-cube"></i>Nhân viên kho</a></li>
                    <li><a href="quanLyKhachHang.html"><i class="fa fa-users"></i>Khách hàng</a></li>
                </ul>
                <input type="checkbox" style="display: none;">
            </div>
            <a href="quanLyBinhLuan.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-comment-o"></i>
                    <p>Quản lý đánh giá</p>
                </div>
            </a>
            <a href="quanLyDonHang.html" class="indexleftselectitem  ">
                <div>
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
                    <li><a href="lichSuNhapHang.html"><i class="fa fa-history"></i>Lịch sử nhập
                        hàng</a></li>
                </ul>
                <input type="checkbox" style="display: none;">
            </div>
            <div class="indexleftselectitemlv2 dontactiveindexleftselectitemlv2"
                 onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-wpforms"></i>
                        <p>Quản lý sản phẩm</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li><a href="quanLySanPham.html"> <i class="fa fa-copy"></i>Sản phẩm</a></li>
                    <li><a href="quanLyDanhMuc.html"><i class="fa fa-sticky-note-o"></i>Danh mục</a></li>
                    <li><a href="quanLyHangSanXuat.html"><i class="fa fa-viadeo-square"></i>Hãng sản xuất</a></li>
                </ul>
                <input type="checkbox" style="display: none;">
            </div>
            <a href="quanLyMaGiamGia.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-balance-scale"></i>
                    <p>Mã giảm giá</p>
                </div>
            </a>
            <div class="indexleftselectitemlv2 dontactiveindexleftselectitemlv2"
                 onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-envelope-o"></i>
                        <p>Liên hệ</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li><a href="guiEmailThongBao.html"> <i class="fa fa-bullhorn"></i>Thông báo</a></li>
                    <li><a href="phanHoiLienHe.html"><i class="fa fa-reply-all"></i>Phản hồi</a></li>
                </ul>
                <input type="checkbox" style="display: none;">
            </div>
            <a href="thongTinTaiKhoanAdmin.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-user-circle-o"></i>
                    <p>Thông tin tài khoản</p>
                </div>
            </a>
            <a href="../../index.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-shopping-cart"></i>
                    <p>Trở về trang mua sắm</p>
                </div>
            </a>
            <a href="login.html" class="indexleftselectitem  ">
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
            <div class="indextopsearch">
                <i class="fa fa-search"></i>
                <input type="text" placeholder="Tìm kiếm">
            </div>
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
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar1.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong> Diệu Đặng</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar2.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Hoàng Nguyễn</strong> bình luận trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar3.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Sơn</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar4.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Xinh Gái</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar5.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Lê Nguyễn</strong> vừa bình luận trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar6.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Hồng Nhan</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar1.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong> Diệu Đặng</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar2.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Hoàng Nguyễn</strong> bình luận trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar3.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Sơn</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar4.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Xinh Gái</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar5.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Lê Nguyễn</strong> vừa bình luận trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../../img/product/avatar6.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Hồng Nhan</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="checkbox" style="display: none;">
            </div>
            <a class="indextopaccount">
                <div>
                    <img src="../../img/product/avatar7.jpg" alt="">
                </div>
                <div>
                    <h3>Nguyễn Thị Hoa Hồng</h3>
                    <p>Admin</p>
                </div>
            </a>
        </div>
    </div>

    <div class="backgroundindexmain">
    </div>

    <!-- Code trang ở đây-->

    <div class="indexmain">
        <div>
            <div class="left">
                <div>
                    <div id="listleftitem">
                        <div class="leftitem activeleftitem" onclick="changerightdonhang(this)">

                            <div>
                                <img src="../../img/product/avatar7.jpg" alt="">
                            </div>

                            <div>
                                <p>Nguyễn Thị Hoa Hồng</p>
                                <div class="hoanthanh">
                                    <i class="fa fa-circle"></i>
                                    <p>PN1042</p>
                                </div>
                            </div>

                            <div>
                            </div>

                            <div>
                                <h3>Đơn nhập hàng</h3>
                                <p>#PN1402</p>
                                <p style="display: none;"></p>
                                <div>
                                    <div class="dateright">
                                        <i class="fa fa-file-text"></i>
                                        <div>
                                            <p>Tổng giá nhập</p>
                                            <p>89,000,000 VND</p>
                                        </div>
                                    </div>
                                    <div class="dateright">
                                        <i class="fa fa-truck"></i>
                                        <div>
                                            <p>Ngày nhập hàng</p>
                                            <p>14 Tháng Tám 2020</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="table">

                                    <div class="tableheader">
                                        <p>Sản phẩm & mô tả</p>
                                        <p>Size</p>
                                        <p>Màu</p>
                                        <p>Số lượng</p>
                                        <p>Giá nhập</p>
                                        <p>Tổng giá</p>
                                    </div>

                                    <div>
                                        <div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/dp1.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>4</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Quần Jeans Nữ Tưa Lai Túi Lệch WJL 4011</p>
                                                    <p>Mã sản phẩm: SP1753419</p>
                                                </div>
                                                <p>XXL</p>
                                                <p>Xanh đậm</p>
                                                <p>100</p>
                                                <p>120,000 VND</p>
                                                <p>12,000,000 VND</p>
                                            </div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro1.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>1</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Sweater Nam Stay Together MSW 1006</p>
                                                    <p>Mã sản phẩm: SP1242930</p>
                                                </div>
                                                <p>XXL</p>
                                                <p>Xanh đậm</p>
                                                <p>40</p>
                                                <p>300,000 VND</p>
                                                <p>12,000,000 VND</p>
                                            </div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro2.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>2</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Sweater Nam Stay Together Cánh Đồng MSW 1005</p>
                                                    <p>Mã sản phẩm: SP1453419</p>
                                                </div>
                                                <p>XXL</p>
                                                <p>Xanh đậm</p>
                                                <p>200</p>
                                                <p>299,000 VND</p>
                                                <p>24,000,000 VND</p>
                                            </div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro3.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>1</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Sweater Nam Basic MSW 1004</p>
                                                    <p>Mã sản phẩm: SP2253419</p>
                                                </div>
                                                <p>XXL</p>
                                                <p>Xanh đậm</p>
                                                <p>300</p>
                                                <p>399,000 VND</p>
                                                <p>36,000,000 VND</p>
                                            </div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro5.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>2</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Thun MTS 1011</p>
                                                    <p>Mã sản phẩm: SP2353419</p>
                                                </div>
                                                <p>XXL</p>
                                                <p>Xanh đậm</p>
                                                <p>10</p>
                                                <p>199,000 VND</p>
                                                <p>1,990,000 VND</p>
                                            </div>
                                            <div class="tableitem">
                                                <div class="tableitemimg">
                                                    <div>
                                                        <img src="../../img/product/pro4.webp" alt="">
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <p>1</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tablenitemame">
                                                    <p>Áo Sweater Logo Sài Gòn MSW 1003</p>
                                                    <p>Mã sản phẩm: SP2153419</p>
                                                </div>
                                                <p>XXL</p>
                                                <p>Xanh đậm</p>
                                                <p>50</p>
                                                <p>199,000 VND</p>
                                                <p>9,000,000 VND</p>
                                            </div>
                                        </div>
                                    </div>

                                </div>


                                <div class="nguoimua">
                                    <h3>Admin nhập hàng</h3>
                                    <div>
                                        <img src="../../img/product/avatar7.jpg" alt="">
                                    </div>
                                    <p>Nguyễn Thị Hoa Hồng</p>
                                    <p><strong>Email: </strong>nguyenthihoahong@gmail.com</p>
                                    <p><strong>Số điện thoại: </strong>0971134509</p>
                                    <p><strong>Địa chỉ: </strong>KP6, Linh Trung, Thủ Đức, TP HCM</p>
                                </div>


                            </div>

                        </div>
                        <a class="atrove" href="thuNhap.html"> <i class="fa fa-arrow-left"></i> Trở về thu nhập</a>
                    </div>
                </div>
            </div>

            <div class="right" id="right">
                <div>
                    <h3>Đơn nhập hàng</h3>
                    <p>#PN1402</p>
                    <p style="display: none;"></p>
                    <div>
                        <div class="dateright">
                            <i class="fa fa-file-text"></i>
                            <div>
                                <p>Tổng giá nhập</p>
                                <p>89,000,000 VND</p>
                            </div>
                        </div>
                        <div class="dateright">
                            <i class="fa fa-truck"></i>
                            <div>
                                <p>Ngày nhập hàng</p>
                                <p>14 Tháng Tám 2020</p>
                            </div>
                        </div>
                    </div>
                    <div class="table">

                        <div class="tableheader">
                            <p>Sản phẩm & mô tả</p>
                            <p>Size</p>
                            <p>Màu</p>
                            <p>Số lượng</p>
                            <p>Giá nhập</p>
                            <p>Tổng giá</p>
                        </div>

                        <div>
                            <div>
                                <div class="tableitem">
                                    <div class="tableitemimg">
                                        <div>
                                            <img src="../../img/product/dp1.webp" alt="">
                                        </div>
                                        <div>
                                            <div>
                                                <p>4</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tablenitemame">
                                        <p>Quần Jeans Nữ Tưa Lai Túi Lệch WJL 4011</p>
                                        <p>Mã sản phẩm: SP1753419</p>
                                    </div>
                                    <p>XXL</p>
                                    <p>Xanh đậm</p>
                                    <p>100</p>
                                    <p>120,000 VND</p>
                                    <p>12,000,000 VND</p>
                                </div>
                                <div class="tableitem">
                                    <div class="tableitemimg">
                                        <div>
                                            <img src="../../img/product/pro1.webp" alt="">
                                        </div>
                                        <div>
                                            <div>
                                                <p>1</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tablenitemame">
                                        <p>Áo Sweater Nam Stay Together MSW 1006</p>
                                        <p>Mã sản phẩm: SP1242930</p>
                                    </div>
                                    <p>XXL</p>
                                    <p>Xanh đậm</p>
                                    <p>40</p>
                                    <p>300,000 VND</p>
                                    <p>12,000,000 VND</p>
                                </div>
                                <div class="tableitem">
                                    <div class="tableitemimg">
                                        <div>
                                            <img src="../../img/product/pro2.webp" alt="">
                                        </div>
                                        <div>
                                            <div>
                                                <p>2</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tablenitemame">
                                        <p>Áo Sweater Nam Stay Together Cánh Đồng MSW 1005</p>
                                        <p>Mã sản phẩm: SP1453419</p>
                                    </div>
                                    <p>XXL</p>
                                    <p>Xanh đậm</p>
                                    <p>200</p>
                                    <p>299,000 VND</p>
                                    <p>24,000,000 VND</p>
                                </div>
                                <div class="tableitem">
                                    <div class="tableitemimg">
                                        <div>
                                            <img src="../../img/product/pro3.webp" alt="">
                                        </div>
                                        <div>
                                            <div>
                                                <p>1</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tablenitemame">
                                        <p>Áo Sweater Nam Basic MSW 1004</p>
                                        <p>Mã sản phẩm: SP2253419</p>
                                    </div>
                                    <p>XXL</p>
                                    <p>Xanh đậm</p>
                                    <p>300</p>
                                    <p>399,000 VND</p>
                                    <p>36,000,000 VND</p>
                                </div>
                                <div class="tableitem">
                                    <div class="tableitemimg">
                                        <div>
                                            <img src="../../img/product/pro5.webp" alt="">
                                        </div>
                                        <div>
                                            <div>
                                                <p>2</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tablenitemame">
                                        <p>Áo Thun MTS 1011</p>
                                        <p>Mã sản phẩm: SP2353419</p>
                                    </div>
                                    <p>XXL</p>
                                    <p>Xanh đậm</p>
                                    <p>10</p>
                                    <p>199,000 VND</p>
                                    <p>1,990,000 VND</p>
                                </div>
                                <div class="tableitem">
                                    <div class="tableitemimg">
                                        <div>
                                            <img src="../../img/product/pro4.webp" alt="">
                                        </div>
                                        <div>
                                            <div>
                                                <p>1</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tablenitemame">
                                        <p>Áo Sweater Logo Sài Gòn MSW 1003</p>
                                        <p>Mã sản phẩm: SP2153419</p>
                                    </div>
                                    <p>XXL</p>
                                    <p>Xanh đậm</p>
                                    <p>50</p>
                                    <p>199,000 VND</p>
                                    <p>9,000,000 VND</p>
                                </div>
                            </div>
                        </div>

                    </div>


                    <div class="nguoimua">
                        <h3>Admin nhập hàng</h3>
                        <div>
                            <img src="../../img/product/avatar7.jpg" alt="">
                        </div>
                        <p>Nguyễn Thị Hoa Hồng</p>
                        <p><strong>Email: </strong>nguyenthihoahong@gmail.com</p>
                        <p><strong>Số điện thoại: </strong>0971134509</p>
                        <p><strong>Địa chỉ: </strong>KP6, Linh Trung, Thủ Đức, TP HCM</p>
                    </div>


                </div>
            </div>
        </div>
    </div>

    <!-- Quan tâm nhiêu đây thôi-->
</div>

</body>

</html>