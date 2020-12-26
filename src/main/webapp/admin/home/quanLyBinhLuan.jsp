<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/12/2020
  Time: 9:00 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TVTSHOP ADMIN | Quản lý bình luận</title>
    <link rel="stylesheet" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../../css/indexAdmin.css">
    <script src="../../js/indexAdmin.js"></script>

    <link rel="stylesheet" href="../../css/quanLyBinhLuanAdmin.css">

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
                <div class="active">
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
                                        <p><strong>Hoàng Nguyễn</strong> đánh giá trên trang của bạn</p>
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
                                        <p><strong>Lê Nguyễn</strong> vừa đánh giá trên trang của bạn</p>
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
                                        <p><strong>Hoàng Nguyễn</strong> đánh giá trên trang của bạn</p>
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
                                        <p><strong>Lê Nguyễn</strong> vừa đánh giá trên trang của bạn</p>
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
            <div id="div1">
                <div class="header">
                    <div class="leftheader">
                        <select name="" id="">
                            <option value="" selected>Ngày đánh giá</option>
                            <option value="">Số sao</option>
                            <option value="">Trạng thái</option>
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
                        <p>Hiển thị <strong> 6 </strong> trên tổng 63 đánh giá</p>
                        <button><i class="fa fa-caret-left"></i></button>
                        <ul>
                            <li>1</li>
                            <li>2</li>
                            <li>3</li>
                            <li>4</li>
                            <li>5</li>
                            <li>6</li>
                            <li class="none">...</li>
                            <li>11</li>
                        </ul>
                        <button><i class="fa fa-caret-right"></i></button>
                    </div>
                </div>
                <div class="main" id="main">
                    <div class="item report">
                        <div>
                            <div class="itemleft">
                                <div>
                                    <img src="../../img/product/avatar1.jpg" alt="">
                                </div>
                            </div>

                            <div class="itemright">
                                <div class="star">
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <h3>Diệu Đặng</h3>
                                <div class="noidungbl">
                                    <div>
                                        <p>Quần ko giống mô tả, shop ghi 87-90cm, mình còn mua size L nhưng quần
                                            shop
                                            giao dài
                                            có 82cm, mình cao 1m58 mà mặc nó thành quần ngố lun á, cũng khá chật chứ
                                            ko
                                            rộng các
                                            vòng như shop báo. Shop kêu gửi lại shop đổi cho cái khác nhưng thủ tục
                                            của
                                            ghtk quá
                                            rườm rà nên thôi chấp nhận bỏ cái quần này vậy
                                        </p>
                                    </div>
                                </div>
                                <div class="action">
                                    <div onclick="changeShowBL(this)" class="hienthibinhluan">
                                        <button><i class="fa fa-eye"></i>Hiển thị</button>
                                        <button><i class="fa fa-eye-slash"></i>Ẩn</button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                    <a href="/home/detailsProduct.html">
                                        <div class="eyesanpham">
                                            <p>Xem đánh giá</p>
                                            <i class="fa fa-share-square"></i>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="trashremove" onclick="removeitem(this)">
                                <i class="fa fa-trash-o"></i>
                            </div>

                            <div class="baocao">
                                <p>
                                    <i class="fa fa-flag"></i>
                                    Bị báo cáo
                                    <i class="fa fa-caret-right"></i>
                                </p>

                                <button onclick="aibaocao(this)"><i class="fa fa-question-circle-o"></i> Ai báo
                                    cáo?
                                </button>
                            </div>

                            <div>
                                <div class="header">
                                    <div class="leftheader">
                                        <select name="" id="">
                                            <option value="" selected>Ngày báo cáo</option>
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
                                        <p>Hiển thị <strong> 2 </strong> trên tổng 2 báo cáo</p>
                                        <button><i class="fa fa-caret-left"></i></button>
                                        <ul>
                                            <li>1</li>
                                        </ul>
                                        <button><i class="fa fa-caret-right"></i></button>
                                    </div>
                                    <button onclick="trovetrangquanly()"><i class="fa fa-arrow-left"></i> Trở lại
                                        quản
                                        lý
                                    </button>
                                </div>
                                <div class="maindiv2">
                                    <div class="maindiv2header">
                                        <p>Hình đại diện</p>
                                        <p>Họ và tên</p>
                                        <p>Số điện thoại</p>
                                        <p>Email</p>
                                        <p>Ngày báo cáo</p>
                                    </div>
                                    <div class="itemdiv2">
                                        <div>
                                            <img src="../../img/product/avatar1.jpg" alt="">
                                        </div>
                                        <p>Diệu Đặng</p>
                                        <p>0334-271-103</p>
                                        <p>dieudang@gmail.com</p>
                                        <p>24 Tháng Bảy 2020</p>
                                    </div>
                                    <div class="itemdiv2">
                                        <div>
                                            <img src="../../img/product/avatar2.jpg" alt="">
                                        </div>
                                        <p>Nguyễn Văn A</p>
                                        <p>0971-122-209</p>
                                        <p>nguyenvana@gmail.com</p>
                                        <p>22 Tháng Bảy 2020</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div>
                            <div class="itemleft">
                                <div>
                                    <img src="../../img/product/avatar2.jpg" alt="">
                                </div>
                            </div>

                            <div class="itemright">
                                <div class="star">
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <h3>Cao Anh</h3>
                                <div class="noidungbl">
                                    <div>
                                        <p>Hàng về thì thấy là quần màu xanh đậm chứ kp xanh nhạt nữa :)) Quần mỏng,
                                            mềm nhưng bên trong hơi xù và ngứa, chắc giặt thì hết Mình m58 eo 64
                                            46kg mặc quần vừa khít, ôm bụng nhưng mỗi tội là bị cộc =)) 4 sao
                                        </p>
                                    </div>
                                </div>
                                <div class="action">
                                    <div onclick="changeShowBL(this)" class="hienthibinhluan">
                                        <button><i class="fa fa-eye"></i>Hiển thị</button>
                                        <button><i class="fa fa-eye-slash"></i>Ẩn</button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                    <a href="/home/detailsProduct.html">
                                        <div class="eyesanpham">
                                            <p>Xem đánh giá</p>
                                            <i class="fa fa-share-square"></i>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="trashremove" onclick="removeitem(this)">
                                <i class="fa fa-trash-o"></i>
                            </div>

                            <div class="baocao">
                                <p>
                                    <i class="fa fa-flag"></i>
                                    Bị báo cáo
                                    <i class="fa fa-caret-right"></i>
                                </p>

                                <button onclick="aibaocao(this)"><i class="fa fa-question-circle-o"></i> Ai báo
                                    cáo?
                                </button>
                            </div>
                            <div>
                                <div class="header">
                                    <div class="leftheader">
                                        <select name="" id="">
                                            <option value="" selected>Ngày báo cáo</option>
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
                                        <p>Hiển thị <strong> 0 </strong> trên tổng 0 báo cáo</p>
                                        <button><i class="fa fa-caret-left"></i></button>
                                        <ul>
                                            <li>1</li>
                                        </ul>
                                        <button><i class="fa fa-caret-right"></i></button>
                                    </div>
                                    <button onclick="trovetrangquanly()"><i class="fa fa-arrow-left"></i> Trở lại
                                        quản
                                        lý
                                    </button>
                                </div>
                                <div class="maindiv2">
                                    <div class="maindiv2header">
                                        <p>Hình đại diện</p>
                                        <p>Họ và tên</p>
                                        <p>Số điện thoại</p>
                                        <p>Email</p>
                                        <p>Ngày báo cáo</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div>
                            <div class="itemleft">
                                <div>
                                    <img src="../../img/product/avatar3.jpg" alt="">
                                </div>
                            </div>

                            <div class="itemright">
                                <div class="star">
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <h3>Nguyễn Minh Châu</h3>
                                <div class="noidungbl">
                                    <div>
                                        <p>Chán</br>
                                            Bảo shop kiểm tra kĩ cho mình rồi</br>
                                            Vừa mặc lên sờ vào cúc thì bị rụng. Kb dùng khuy thay vào được k nhỉ
                                        </p>
                                    </div>
                                </div>
                                <div class="action">
                                    <div onclick="changeShowBL(this)" class="hienthibinhluan">
                                        <button><i class="fa fa-eye"></i>Hiển thị</button>
                                        <button><i class="fa fa-eye-slash"></i>Ẩn</button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                    <a href="/home/detailsProduct.html">
                                        <div class="eyesanpham">
                                            <p>Xem đánh giá</p>
                                            <i class="fa fa-share-square"></i>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="trashremove" onclick="removeitem(this)">
                                <i class="fa fa-trash-o"></i>
                            </div>

                            <div class="baocao">
                                <p>
                                    <i class="fa fa-flag"></i>
                                    Bị báo cáo
                                    <i class="fa fa-caret-right"></i>
                                </p>

                                <button onclick="aibaocao(this)"><i class="fa fa-question-circle-o"></i> Ai báo
                                    cáo?
                                </button>
                            </div>
                            <div>
                                <div class="header">
                                    <div class="leftheader">
                                        <select name="" id="">
                                            <option value="" selected>Ngày báo cáo</option>
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
                                        <p>Hiển thị <strong> 0 </strong> trên tổng 0 báo cáo</p>
                                        <button><i class="fa fa-caret-left"></i></button>
                                        <ul>
                                            <li>1</li>
                                        </ul>
                                        <button><i class="fa fa-caret-right"></i></button>
                                    </div>
                                    <button onclick="trovetrangquanly()"><i class="fa fa-arrow-left"></i> Trở lại
                                        quản
                                        lý
                                    </button>
                                </div>
                                <div class="maindiv2">
                                    <div class="maindiv2header">
                                        <p>Hình đại diện</p>
                                        <p>Họ và tên</p>
                                        <p>Số điện thoại</p>
                                        <p>Email</p>
                                        <p>Ngày báo cáo</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div>
                            <div class="itemleft">
                                <div>
                                    <img src="../../img/product/avatar4.jpg" alt="">
                                </div>
                            </div>

                            <div class="itemright">
                                <div class="star">
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <h3>Lưu Thị Ánh</h3>
                                <div class="noidungbl">
                                    <div>
                                        <p>Quần màu đen rộng hơn quần xanh cùng size. quần đen này size S nhưng rộng
                                            lắm. giặt 2 lần đã xù lông rồi. giao hàng nhanhhhhhhhhhhhhhhhhhh
                                        </p>
                                    </div>
                                </div>
                                <div class="action">
                                    <div onclick="changeShowBL(this)" class="hienthibinhluan">
                                        <button><i class="fa fa-eye"></i>Hiển thị</button>
                                        <button><i class="fa fa-eye-slash"></i>Ẩn</button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                    <a href="/home/detailsProduct.html">
                                        <div class="eyesanpham">
                                            <p>Xem đánh giá</p>
                                            <i class="fa fa-share-square"></i>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="trashremove" onclick="removeitem(this)">
                                <i class="fa fa-trash-o"></i>
                            </div>

                            <div class="baocao">
                                <p>
                                    <i class="fa fa-flag"></i>
                                    Bị báo cáo
                                    <i class="fa fa-caret-right"></i>
                                </p>

                                <button onclick="aibaocao(this)"><i class="fa fa-question-circle-o"></i> Ai báo
                                    cáo?
                                </button>
                            </div>
                            <div>
                                <div class="header">
                                    <div class="leftheader">
                                        <select name="" id="">
                                            <option value="" selected>Ngày báo cáo</option>
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
                                        <p>Hiển thị <strong> 0 </strong> trên tổng 0 báo cáo</p>
                                        <button><i class="fa fa-caret-left"></i></button>
                                        <ul>
                                            <li>1</li>
                                        </ul>
                                        <button><i class="fa fa-caret-right"></i></button>
                                    </div>
                                    <button onclick="trovetrangquanly()"><i class="fa fa-arrow-left"></i> Trở lại
                                        quản
                                        lý
                                    </button>
                                </div>
                                <div class="maindiv2">
                                    <div class="maindiv2header">
                                        <p>Hình đại diện</p>
                                        <p>Họ và tên</p>
                                        <p>Số điện thoại</p>
                                        <p>Email</p>
                                        <p>Ngày báo cáo</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div>
                            <div class="itemleft">
                                <div>
                                    <img src="../../img/product/avatar5.jpg" alt="">
                                </div>
                            </div>

                            <div class="itemright">
                                <div class="star">
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <h3>Khương Hồng Nhan</h3>
                                <div class="noidungbl">
                                    <div>
                                        <p>Quần đẹp lắm nhưng chắc do mình cao hay sao ấy đặt size M nhưng lại bị
                                            ngắn nhưng k sao quần đẹp nên bỏ qua
                                            </br> Mình cũng rất thích cách shop chốt đơn nha❤️❤️
                                            </br> Sẽ ủng hộ shop dài dài😍
                                        </p>
                                    </div>
                                </div>
                                <div class="action">
                                    <div onclick="changeShowBL(this)" class="hienthibinhluan">
                                        <button><i class="fa fa-eye"></i>Hiển thị</button>
                                        <button><i class="fa fa-eye-slash"></i>Ẩn</button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                    <a href="/home/detailsProduct.html">
                                        <div class="eyesanpham">
                                            <p>Xem đánh giá</p>
                                            <i class="fa fa-share-square"></i>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="trashremove" onclick="removeitem(this)">
                                <i class="fa fa-trash-o"></i>
                            </div>

                            <div class="baocao">
                                <p>
                                    <i class="fa fa-flag"></i>
                                    Bị báo cáo
                                    <i class="fa fa-caret-right"></i>
                                </p>

                                <button onclick="aibaocao(this)"><i class="fa fa-question-circle-o"></i> Ai báo
                                    cáo?
                                </button>
                            </div>
                            <div>
                                <div class="header">
                                    <div class="leftheader">
                                        <select name="" id="">
                                            <option value="" selected>Ngày báo cáo</option>
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
                                        <p>Hiển thị <strong> 0 </strong> trên tổng 0 báo cáo</p>
                                        <button><i class="fa fa-caret-left"></i></button>
                                        <ul>
                                            <li>1</li>
                                        </ul>
                                        <button><i class="fa fa-caret-right"></i></button>
                                    </div>
                                    <button onclick="trovetrangquanly()"><i class="fa fa-arrow-left"></i> Trở lại
                                        quản
                                        lý
                                    </button>
                                </div>
                                <div class="maindiv2">
                                    <div class="maindiv2header">
                                        <p>Hình đại diện</p>
                                        <p>Họ và tên</p>
                                        <p>Số điện thoại</p>
                                        <p>Email</p>
                                        <p>Ngày báo cáo</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item report">
                        <div>
                            <div class="itemleft">
                                <div>
                                    <img src="../../img/product/avatar6.jpg" alt="">
                                </div>
                            </div>

                            <div class="itemright">
                                <div class="star">
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <h3>Tran Trần Xinh Gái</h3>
                                <div class="noidungbl">
                                    <div>
                                        <p>Ảnh 1 kiểu hàng về 1 kiểu. Đc cái shipper thân thiện. Chất vải cx đc
                                            nhưng mà quá ngắn, k mặc đc. Shop phục vụ kém :(((
                                        </p>
                                    </div>
                                </div>
                                <div class="action">
                                    <div onclick="changeShowBL(this)" class="hienthibinhluan">
                                        <button><i class="fa fa-eye"></i>Hiển thị</button>
                                        <button><i class="fa fa-eye-slash"></i>Ẩn</button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                    <a href="/home/detailsProduct.html">
                                        <div class="eyesanpham">
                                            <p>Xem đánh giá</p>
                                            <i class="fa fa-share-square"></i>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="trashremove" onclick="removeitem(this)">
                                <i class="fa fa-trash-o"></i>
                            </div>

                            <div class="baocao">
                                <p>
                                    <i class="fa fa-flag"></i>
                                    Bị báo cáo
                                    <i class="fa fa-caret-right"></i>
                                </p>

                                <button onclick="aibaocao(this)"><i class="fa fa-question-circle-o"></i> Ai báo
                                    cáo?
                                </button>
                            </div>
                            <div>
                                <div class="header">
                                    <div class="leftheader">
                                        <select name="" id="">
                                            <option value="" selected>Ngày báo cáo</option>
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
                                        <p>Hiển thị <strong> 1 </strong> trên tổng 1 báo cáo</p>
                                        <button><i class="fa fa-caret-left"></i></button>
                                        <ul>
                                            <li>1</li>
                                        </ul>
                                        <button><i class="fa fa-caret-right"></i></button>
                                    </div>
                                    <button onclick="trovetrangquanly()"><i class="fa fa-arrow-left"></i> Trở lại
                                        quản
                                        lý
                                    </button>
                                </div>
                                <div class="maindiv2">
                                    <div class="maindiv2header">
                                        <p>Hình đại diện</p>
                                        <p>Họ và tên</p>
                                        <p>Số điện thoại</p>
                                        <p>Email</p>
                                        <p>Ngày báo cáo</p>
                                    </div>
                                    <div class="itemdiv2">
                                        <div>
                                            <img src="../../img/product/avatar4.jpg" alt="">
                                        </div>
                                        <p>Lê Vy</p>
                                        <p>0334-271-103</p>
                                        <p>vyprovjp@gmail.com</p>
                                        <p>26 Tháng Bảy 2020</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div>
                            <div class="itemleft">
                                <div>
                                    <img src="../../img/product/avatar7.jpg" alt="">
                                </div>
                            </div>

                            <div class="itemright">
                                <div class="star">
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <h3>Nguyễn Thị Hoa Hồng</h3>
                                <div class="noidungbl">
                                    <div>
                                        <p>Tuyệt vời, 5 sao nhé provjp
                                        </p>
                                    </div>
                                </div>
                                <div class="action">
                                    <div onclick="changeShowBL(this)" class="hienthibinhluan">
                                        <button><i class="fa fa-eye"></i>Hiển thị</button>
                                        <button><i class="fa fa-eye-slash"></i>Ẩn</button>
                                        <input type="checkbox" style="display: none;">
                                    </div>
                                    <a href="/home/detailsProduct.html">
                                        <div class="eyesanpham">
                                            <p>Xem đánh giá</p>
                                            <i class="fa fa-share-square"></i>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="trashremove" onclick="removeitem(this)">
                                <i class="fa fa-trash-o"></i>
                            </div>

                            <div class="baocao">
                                <p>
                                    <i class="fa fa-flag"></i>
                                    Bị báo cáo
                                    <i class="fa fa-caret-right"></i>
                                </p>

                                <button onclick="aibaocao(this)"><i class="fa fa-question-circle-o"></i> Ai báo
                                    cáo?
                                </button>
                            </div>
                            <div>
                                <div class="header">
                                    <div class="leftheader">
                                        <select name="" id="">
                                            <option value="" selected>Ngày báo cáo</option>
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
                                        <p>Hiển thị <strong> 0 </strong> trên tổng 0 báo cáo</p>
                                        <button><i class="fa fa-caret-left"></i></button>
                                        <ul>
                                            <li>1</li>
                                        </ul>
                                        <button><i class="fa fa-caret-right"></i></button>
                                    </div>
                                    <button onclick="trovetrangquanly()"><i class="fa fa-arrow-left"></i> Trở lại
                                        quản
                                        lý
                                    </button>
                                </div>
                                <div class="maindiv2">
                                    <div class="maindiv2header">
                                        <p>Hình đại diện</p>
                                        <p>Họ và tên</p>
                                        <p>Số điện thoại</p>
                                        <p>Email</p>
                                        <p>Ngày báo cáo</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="div2">
            </div>

        </div>

    </div>

    <!-- Quan tâm nhiêu đây thôi-->
</div>

</body>

</html>


<script src="../../js/quanLyBinhLuanAdmin.js"></script>
