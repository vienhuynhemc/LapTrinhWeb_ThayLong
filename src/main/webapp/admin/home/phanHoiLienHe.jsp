<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/12/2020
  Time: 8:38 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TVTSHOP ADMIN | Phản hồi liên lệ</title>
    <link rel="stylesheet" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../../css/indexAdmin.css">
    <script src="../../js/indexAdmin.js"></script>

    <link rel="stylesheet" href="../../css/phanHoiLienHeAdmin.css">
    <script src="../../js/phanHoiLienHeAdmin.js"></script>

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
            <div class="indexleftselectitemlv2" onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-envelope-o"></i>
                        <p>Liên hệ</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li><a href="guiEmailThongBao.html"> <i class="fa fa-bullhorn"></i>Thông báo</a></li>
                    <li class="activelv2"><a href="phanHoiLienHe.html"><i class="fa fa-reply-all"></i>Phản hồi</a>
                    </li>
                </ul>
                <input type="checkbox" style="display: none;" checked>
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
                <div class="leftheader">
                    <select name="" id="">
                        <option value="" selected>Ngày gửi</option>
                    </select>
                    <div>
                        <div class="leftheadersort" onclick="changesort(this)">
                            <i class=" fa fa-sort-amount-desc" id="leftheadersort1"></i>
                            <i class=" fa fa-sort-amount-asc" id="leftheadersort2"></i>
                            <input type="checkbox" style="display: none;">
                        </div>
                        <div class="leftheadersearch" id="leftheadersearch">
                            <i class="fa fa-search" onclick="showsearch()"></i>
                            <div>
                                <i class="fa fa-search" onclick="hiddensearch()"></i>
                                <input type="text" placeholder="Tìm kiếm">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="leftnextpage">
                    <button><i class="fa fa-caret-left"></i></button>
                    <ul>
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                        <li class="none">...</li>
                        <li>11</li>
                    </ul>
                    <button><i class="fa fa-caret-right"></i></button>
                </div>
                <div>
                    <div id="listleftitem">
                        <div class="leftitem" onclick="changerightdonhang(this)" id="item1">

                            <div>
                                <img src="../../img/user.jpg" alt="">
                            </div>

                            <div>
                                <p>An</p>
                                <div class="hoanthanh">
                                    <i class="fa fa-circle"></i>
                                    <p>LH3132</p>
                                </div>
                            </div>
                            <div></div>

                            <div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/user.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>An</p>
                                            <p>nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>25 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash"
                                               onclick="removeitem(document.getElementById('item1'))"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào shop, <br><br> Vui lòng cho tôi biết thêm về dịch vụ giao
                                                hàng tận tay
                                                của bạn.</p>
                                        </div>
                                    </div>
                                    <div class="phanhoi">
                                        <button onclick="phanHoi(this)">
                                            <i class="fa fa-reply"></i>Phản hồi
                                        </button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar7.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Thị Hoa Hồng</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>26 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Chúng tôi sẽ nhận tiền khi nào hàng tới tay bạn
                                                nhé.<br><br> Admin,<br>-Nguyễn Thị Hoa Hồng</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;" checked>
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar2.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Văn A</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>27 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Bạn có thể từ chối đơn hàng nếu kiếm tra hàng
                                                có điều gì đó
                                                bất thường. Chúng tôi cảm kích vì điều đó !<br><br>
                                                Admin,<br>-Nguyễn Văn A</p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="leftitem" onclick="changerightdonhang(this)" id="item2">

                            <div>
                                <img src="../../img/user.jpg" alt="">
                            </div>

                            <div>
                                <p>An</p>
                                <div class="hoanthanh">
                                    <i class="fa fa-circle"></i>
                                    <p>LH3131</p>
                                </div>
                            </div>
                            <div></div>

                            <div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/user.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>An</p>
                                            <p>nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>25 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash"
                                               onclick="removeitem(document.getElementById('item2'))"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào shop, <br><br> Vui lòng cho tôi biết thêm về dịch vụ giao
                                                hàng tận tay
                                                của bạn.</p>
                                        </div>
                                    </div>
                                    <div class="phanhoi">
                                        <button onclick="phanHoi(this)">
                                            <i class="fa fa-reply"></i>Phản hồi
                                        </button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar7.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Thị Hoa Hồng</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>26 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Chúng tôi sẽ nhận tiền khi nào hàng tới tay bạn
                                                nhé.<br><br> Admin,<br>-Nguyễn Thị Hoa Hồng</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;" checked>
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar2.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Văn A</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>27 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Bạn có thể từ chối đơn hàng nếu kiếm tra hàng
                                                có điều gì đó
                                                bất thường. Chúng tôi cảm kích vì điều đó !<br><br>
                                                Admin,<br>-Nguyễn Văn A</p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="leftitem" onclick="changerightdonhang(this)" id="item3">

                            <div>
                                <img src="../../img/user.jpg" alt="">
                            </div>

                            <div>
                                <p>An</p>
                                <div class="hoanthanh">
                                    <i class="fa fa-circle"></i>
                                    <p>LH3131</p>
                                </div>
                            </div>
                            <div></div>

                            <div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/user.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>An</p>
                                            <p>nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>25 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash"
                                               onclick="removeitem(document.getElementById('item3'))"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào shop, <br><br> Vui lòng cho tôi biết thêm về dịch vụ giao
                                                hàng tận tay
                                                của bạn.</p>
                                        </div>
                                    </div>
                                    <div class="phanhoi">
                                        <button onclick="phanHoi(this)">
                                            <i class="fa fa-reply"></i>Phản hồi
                                        </button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar7.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Thị Hoa Hồng</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>26 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Chúng tôi sẽ nhận tiền khi nào hàng tới tay bạn
                                                nhé.<br><br> Admin,<br>-Nguyễn Thị Hoa Hồng</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;" checked>
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar2.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Văn A</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>27 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Bạn có thể từ chối đơn hàng nếu kiếm tra hàng
                                                có điều gì đó
                                                bất thường. Chúng tôi cảm kích vì điều đó !<br><br>
                                                Admin,<br>-Nguyễn Văn A</p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="leftitem" onclick="changerightdonhang(this)" id="item4">

                            <div>
                                <img src="../../img/user.jpg" alt="">
                            </div>

                            <div>
                                <p>An</p>
                                <div class="hoanthanh">
                                    <i class="fa fa-circle"></i>
                                    <p>LH3131</p>
                                </div>
                            </div>
                            <div></div>

                            <div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/user.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>An</p>
                                            <p>nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>25 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash"
                                               onclick="removeitem(document.getElementById('item4'))"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào shop, <br><br> Vui lòng cho tôi biết thêm về dịch vụ giao
                                                hàng tận tay
                                                của bạn.</p>
                                        </div>
                                    </div>
                                    <div class="phanhoi">
                                        <button onclick="phanHoi(this)">
                                            <i class="fa fa-reply"></i>Phản hồi
                                        </button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar7.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Thị Hoa Hồng</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>26 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Chúng tôi sẽ nhận tiền khi nào hàng tới tay bạn
                                                nhé.<br><br> Admin,<br>-Nguyễn Thị Hoa Hồng</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;" checked>
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar2.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Văn A</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>27 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Bạn có thể từ chối đơn hàng nếu kiếm tra hàng
                                                có điều gì đó
                                                bất thường. Chúng tôi cảm kích vì điều đó !<br><br>
                                                Admin,<br>-Nguyễn Văn A</p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="leftitem" onclick="changerightdonhang(this)" id="item5">

                            <div>
                                <img src="../../img/user.jpg" alt="">
                            </div>

                            <div>
                                <p>An</p>
                                <div class="hoanthanh">
                                    <i class="fa fa-circle"></i>
                                    <p>LH3131</p>
                                </div>
                            </div>
                            <div></div>

                            <div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/user.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>An</p>
                                            <p>nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>25 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash"
                                               onclick="removeitem(document.getElementById('item5'))"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào shop, <br><br> Vui lòng cho tôi biết thêm về dịch vụ giao
                                                hàng tận tay
                                                của bạn.</p>
                                        </div>
                                    </div>
                                    <div class="phanhoi">
                                        <button onclick="phanHoi(this)">
                                            <i class="fa fa-reply"></i>Phản hồi
                                        </button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar7.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Thị Hoa Hồng</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>26 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Chúng tôi sẽ nhận tiền khi nào hàng tới tay bạn
                                                nhé.<br><br> Admin,<br>-Nguyễn Thị Hoa Hồng</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;" checked>
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar2.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Văn A</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>27 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Bạn có thể từ chối đơn hàng nếu kiếm tra hàng
                                                có điều gì đó
                                                bất thường. Chúng tôi cảm kích vì điều đó !<br><br>
                                                Admin,<br>-Nguyễn Văn A</p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="leftitem" onclick="changerightdonhang(this)" id="item6">

                            <div>
                                <img src="../../img/user.jpg" alt="">
                            </div>

                            <div>
                                <p>An</p>
                                <div class="hoanthanh">
                                    <i class="fa fa-circle"></i>
                                    <p>LH3131</p>
                                </div>
                            </div>
                            <div></div>

                            <div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/user.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>An</p>
                                            <p>nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>25 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash"
                                               onclick="removeitem(document.getElementById('item6'))"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào shop, <br><br> Vui lòng cho tôi biết thêm về dịch vụ giao
                                                hàng tận tay
                                                của bạn.</p>
                                        </div>
                                    </div>
                                    <div class="phanhoi">
                                        <button onclick="phanHoi(this)">
                                            <i class="fa fa-reply"></i>Phản hồi
                                        </button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;">
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar7.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Thị Hoa Hồng</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>26 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Chúng tôi sẽ nhận tiền khi nào hàng tới tay bạn
                                                nhé.<br><br> Admin,<br>-Nguyễn Thị Hoa Hồng</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="rightitem" onclick="mora(this)">
                                    <input type="checkbox" style="display: none;" checked>
                                    <div class="rightheader">
                                        <div>
                                            <div>
                                                <img src="../../img/product/avatar2.jpg" alt="">
                                            </div>
                                        </div>

                                        <div class="rightinfor">
                                            <p>Nguyễn Văn A</p>
                                            <p>Tới nguyenvanan@gmail.com</p>
                                        </div>

                                        <div class="rightend">
                                            <p>27 Tháng Tám, 2018, 11:18 AM</p>
                                            <i class="fa fa-trash" onclick="removeitemm(this)"></i>
                                        </div>

                                    </div>
                                    <div class="rightcontent">
                                        <div>
                                            <p>Xin chào An, <br><br> Bạn có thể từ chối đơn hàng nếu kiếm tra hàng
                                                có điều gì đó
                                                bất thường. Chúng tôi cảm kích vì điều đó !<br><br>
                                                Admin,<br>-Nguyễn Văn A</p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                </div>
            </div>

            <div class="right" id="right">

            </div>
        </div>
    </div>

    <!-- Quan tâm nhiêu đây thôi-->
</div>

</body>

</html>