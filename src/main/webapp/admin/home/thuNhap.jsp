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
    <title>TVTSHOP ADMIN | Thu nhập</title>
    <link rel="stylesheet" href="../..//fonts/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../../css/indexAdmin.css">
    <script src="../../js/indexAdmin.js"></script>

    <link rel="stylesheet" href="../../css/thuNhapAdmin.css">
    <script src="../../js/thuNhapAdmin.js"></script>

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
                    <li><a href="lichSuNhapHang.html"><i class="fa fa-history"></i>Lịch sử nhập hàng</a></li>
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
                                        <img src="../..//img/product/avatar1.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong> Diệu Đặng</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../..//img/product/avatar2.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Hoàng Nguyễn</strong> đánh giá trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../..//img/product/avatar3.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Sơn</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../..//img/product/avatar4.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Xinh Gái</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../..//img/product/avatar5.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Lê Nguyễn</strong> vừa đánh giá trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../..//img/product/avatar6.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Hồng Nhan</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../..//img/product/avatar1.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong> Diệu Đặng</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../..//img/product/avatar2.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Hoàng Nguyễn</strong> đánh giá trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../..//img/product/avatar3.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Sơn</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../..//img/product/avatar4.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Xinh Gái</strong> vừa thanh toán một đơn hàng</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../..//img/product/avatar5.jpg" alt="">
                                    </div>
                                    <div>
                                        <p><strong>Lê Nguyễn</strong> vừa đánh giá trên trang của bạn</p>
                                        <p>14:32 - 12/10/2020</p>
                                    </div>
                                </a>
                                <div class="lineindextopbellinforcontentitem"></div>
                                <a class="indextopbellinforcontentitem">
                                    <div>
                                        <img src="../..//img/product/avatar6.jpg" alt="">
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
                    <img src="../..//img/product/avatar7.jpg" alt="">
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
        <div id="div2">
            <div>
                <div class="header">
                    <div class="leftheader">
                        <select name="" id="">
                            <option value="" selected>Ngày thanh toán</option>
                            <option value="">Giá</option>
                            <option value="">Chi</option>
                            <option value="">Thu</option>
                            <option value="">Số loại</option>
                            <option value="">Số lượng</option>
                        </select>
                        <div>
                            <div class="leftheadersort" onclick="changesort2(this)">
                                <i class=" fa fa-sort-amount-desc"></i>
                                <i class=" fa fa-sort-amount-asc"></i>
                                <input type="checkbox" style="display: none;">
                            </div>
                            <div class="leftheadersearch">
                                <i class="fa fa-search" onclick="showsearch2(this)"></i>
                                <div>
                                    <i class="fa fa-search" onclick="hiddensearch2(this)"></i>
                                    <input type="text" placeholder="Tìm kiếm">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="leftnextpage">
                        <p>Hiển thị <strong> 10 </strong> trên tổng 95 đơn thu nhập</p>
                        <button><i class="fa fa-caret-left"></i></button>
                        <ul>
                            <li>1</li>
                            <li>2</li>
                            <li>3</li>
                            <li>4</li>
                            <li>5</li>
                            <li class="none">...</li>
                            <li>9</li>
                        </ul>
                        <button><i class="fa fa-caret-right"></i></button>
                    </div>
                    <button onclick="xemthunhap()"><i class="fa fa-pie-chart"></i> Xem thu nhập</button>
                </div>
                <div class="maindiv2">
                    <div class="maindiv2header">
                        <p>Mã đơn hàng/ Phiếu nhập</p>
                        <p>Hình ảnh sản phẩm</p>
                        <p>Số loại</p>
                        <p>Số lượng</p>
                        <p>Thu nhập</p>
                        <p>Ngày thanh toán</p>
                    </div>
                    <div class="itemdiv2">
                        <p class="thu">#DH4004</p>
                        <div class="hinhanh">
                            <div>
                                <img src="../../img/product/pro5.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro2.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro3.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro3.webp" alt="">
                            </div>
                            <div class="otherdiv">
                                <div></div>
                                <p>+5</p>
                                <img src="../../img/product/pro14.webp" alt="">
                            </div>
                        </div>
                        <p>10</p>
                        <p>14</p>
                        <p class="thu">+ 1,499,000 VND</p>
                        <p>24 Tháng Bảy 2020</p>
                        <div class="eye" onclick="xemthongtindonhang()">
                            <i class="fa fa-eye"></i>
                        </div>
                    </div>
                    <div class="itemdiv2">
                        <p class="chi">#PH1004</p>
                        <div class="hinhanh">
                            <div>
                                <img src="../../img/product/pro7.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro8.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro9.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro10.webp" alt="">
                            </div>
                            <div class="otherdiv">
                                <div></div>
                                <p>+7</p>
                                <img src="../../img/product/pro13.webp" alt="">
                            </div>
                        </div>
                        <p>11</p>
                        <p>400</p>
                        <p class="chi">- 20,200,000 VND</p>
                        <p>24 Tháng Bảy 2020</p>
                        <div class="eye" onclick="xemthongtinnhaphang()">
                            <i class="fa fa-eye"></i>
                        </div>
                    </div>
                    <div class="itemdiv2">
                        <p class="thu">#DH4003</p>
                        <div class="hinhanh">
                            <div>
                                <img src="../../img/do/nu/nu/spn1.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/do/nu/nu/spn2.webp" alt="">
                            </div>
                        </div>
                        <p>2</p>
                        <p>4</p>
                        <p class="thu">+ 360,000 VND</p>
                        <p>23 Tháng Bảy 2020</p>
                        <div class="eye" onclick="xemthongtindonhang()">
                            <i class="fa fa-eye"></i>
                        </div>
                    </div>
                    <div class="itemdiv2">
                        <p class="thu">#DH4002</p>
                        <div class="hinhanh">
                            <div>
                                <img src="../../img/do/nu/nu/spn15.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/do/nu/nu/spn14.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/do/nu/nu/spn13.webp" alt="">
                            </div>
                        </div>
                        <p>3</p>
                        <p>3</p>
                        <p class="thu">+ 600,000 VND</p>
                        <p>22 Tháng Bảy 2020</p>
                        <div class="eye" onclick="xemthongtindonhang()">
                            <i class="fa fa-eye"></i>
                        </div>
                    </div>
                    <div class="itemdiv2">
                        <p class="chi">#PH1003</p>
                        <div class="hinhanh">
                            <div>
                                <img src="../../img/do/nam/1.jpg" alt="">
                            </div>
                            <div>
                                <img src="../../img/do/nam/2.jpg" alt="">
                            </div>
                            <div>
                                <img src="../../img/do/nam/3.jpg" alt="">
                            </div>
                            <div>
                                <img src="../../img/do/nam/4.jpg" alt="">
                            </div>
                            <div class="otherdiv">
                                <div></div>
                                <p>+3</p>
                                <img src="../../img/do/nam/5.jpg" alt="">
                            </div>
                        </div>
                        <p>7</p>
                        <p>50</p>
                        <p class="chi">- 25,000,000 VND</p>
                        <p>22 Tháng Bảy 2020</p>
                        <div class="eye" onclick="xemthongtinnhaphang()">
                            <i class="fa fa-eye"></i>
                        </div>
                    </div>
                    <div class="itemdiv2">
                        <p class="chi">#PH1002</p>
                        <div class="hinhanh">
                            <div>
                                <img src="../../img/do/nam/6.jpg" alt="">
                            </div>
                            <div>
                                <img src="../../img/do/nam/7.jpg" alt="">
                            </div>
                        </div>
                        <p>2</p>
                        <p>20</p>
                        <p class="chi">- 7,600,000 VND</p>
                        <p>22 Tháng Bảy 2020</p>
                        <div class="eye" onclick="xemthongtinnhaphang()">
                            <i class="fa fa-eye"></i>
                        </div>
                    </div>
                    <div class="itemdiv2">
                        <p class="thu">#DH4001</p>
                        <div class="hinhanh">
                            <div>
                                <img src="../../img/product/pro7.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro1.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro10.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro12.webp" alt="">
                            </div>
                        </div>
                        <p>4</p>
                        <p>10</p>
                        <p class="thu">+ 3,320,000 VND</p>
                        <p>22 Tháng Bảy 2020</p>
                        <div class="eye" onclick="xemthongtindonhang()">
                            <i class="fa fa-eye"></i>
                        </div>
                    </div>
                    <div class="itemdiv2">
                        <p class="thu">#DH4000</p>
                        <div class="hinhanh">
                            <div>
                                <img src="../../img/product/pro13.webp" alt="">
                            </div>
                        </div>
                        <p>1</p>
                        <p>1</p>
                        <p class="thu">+ 120,000 VND</p>
                        <p>21 Tháng Bảy 2020</p>
                        <div class="eye" onclick="xemthongtindonhang()">
                            <i class="fa fa-eye"></i>
                        </div>
                    </div>
                    <div class="itemdiv2">
                        <p class="thu">#DH3999</p>
                        <div class="hinhanh">
                            <div>
                                <img src="../../img/do/nu/11.jpg" alt="">
                            </div>
                            <div>
                                <img src="../../img/do/nu/13.jpg" alt="">
                            </div>
                            <div>
                                <img src="../../img/do/nu/8.jpg" alt="">
                            </div>
                        </div>
                        <p>3</p>
                        <p>6</p>
                        <p class="thu">+ 990,000 VND</p>
                        <p>21 Tháng Bảy 2020</p>
                        <div class="eye" onclick="xemthongtindonhang()">
                            <i class="fa fa-eye"></i>
                        </div>
                    </div>
                    <div class="itemdiv2">
                        <p class="chi">#PH1001</p>
                        <div class="hinhanh">
                            <div>
                                <img src="../../img/product/pro5.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro2.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro3.webp" alt="">
                            </div>
                            <div>
                                <img src="../../img/product/pro3.webp" alt="">
                            </div>
                            <div class="otherdiv">
                                <div></div>
                                <p>+2</p>
                                <img src="../../img/product/pro14.webp" alt="">
                            </div>
                        </div>
                        <p>6</p>
                        <p>100</p>
                        <p class="chi">- 49,000,000 VND</p>
                        <p>20 Tháng Bảy 2020</p>
                        <div class="eye" onclick="xemthongtinnhaphang()">
                            <i class="fa fa-eye"></i>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div id="div1">
            <div class="div11">
                <div>
                    <p>Chọn năm: </p>
                    <select name="" id="">
                        <option value="">2020</option>
                        <option value="">2019</option>
                        <option value="">2018</option>
                    </select>
                </div>
                <button class="nonebutton">Tháng 1</button>
                <button class="nonebutton">Tháng 2</button>
                <button>Tháng 3</button>
                <button>Tháng 4</button>
                <button>Tháng 5</button>
                <button class="nonebutton">Tháng 6</button>
                <button class="activebutton">Tháng 7</button>
                <button>Tháng 8</button>
                <button>Tháng 9</button>
                <button>Tháng 10</button>
                <button>Tháng 11</button>
                <button class="nonebutton">Tháng 12</button>
                <button>Tất cả</button>
            </div>

            <div class="div12">
                <div class="div12item">
                    <div>
                        <img src="../img/icon-5.png" alt="">
                        <p>Thu nhập từ bán hàng</p>
                    </div>
                    <h3 class="thu">+ 93,495,000 VND</h3>
                    <img src="../img/bd1.png" alt="">
                </div>

                <div class="div12item">
                    <div>
                        <img src="../img/icon-6.png" alt="">
                        <p>Chi tiêu nhập hàng</p>
                    </div>
                    <h3 class="chi">- 82,500,000 VND</h3>
                    <img src="../img/bd2.png" alt="">
                </div>

                <div class="div12item">
                    <div>
                        <img src="../img/icon-8.png" alt="">
                        <p>Lợi nhuận</p>
                    </div>
                    <h3 class="thu">+ 10,995,000 VND</h3>
                    <img src="../img/bd3.png" alt="">
                </div>
            </div>

            <button onclick="trove()"><i class="fa fa-arrow-left"></i> Trở lại
                thu nhập
            </button>
        </div>
    </div>

    <!-- Quan tâm nhiêu đây thôi-->
</div>

</body>

</html>