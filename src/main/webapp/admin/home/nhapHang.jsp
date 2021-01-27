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
    <title>TVTSHOP ADMIN | Nhập hàng</title>
    <link rel="stylesheet" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/indexAdmin.css">
    <script src="js/indexAdmin.js"></script>

    <link rel="stylesheet" href="css/nhapHangAdmin.css">


</head>

<body>


<div class="indexleft">
    <div class="indexleftlogo">
        <i class="fa fa-android"></i>
    </div>
    <div class="indexleftselect">
        <div>
            <a href="index.html" class="indexleftselectitem  ">
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
                    <li><a href="quanLyNVGH.html"> <i class="fa fa-truck"></i> Nhân viên giao
                        hàng</a></li>
                    <li><a href="quanLyNVK.html"><i class="fa fa-cube"></i>Nhân viên kho</a></li>
                    <li><a href="quanLyKhachHang.html"><i class="fa fa-users"></i>Khách hàng</a>
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
            <a href="quanLyDonHang.html" class="indexleftselectitem  ">
                <div>
                    <i class="fa fa-file-text-o"></i>
                    <p>Quản lý đơn hàng</p>
                </div>
            </a>
            <div class="indexleftselectitemlv2" onclick="indexleftselectitemlv2(this)">
                <div class="indexleftselectitem">
                    <div>
                        <i class="fa fa-object-group"></i>
                        <p>Nhập hàng</p>
                    </div>
                    <i class="fa fa-angle-right"></i>
                </div>
                <ul>
                    <li class="activelv2"><a href="nhapHang.html"> <i class="fa fa-cart-arrow-down"></i>Nhập
                        hàng</a></li>
                    <li><a href="lichSuNhapHang.html"><i class="fa fa-history"></i>Lịch sử nhập hàng</a></li>
                </ul>
                <input type="checkbox" style="display: none;" checked>
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
        <div id="div1">
            <h3>Nhập hàng</h3>
            <div class="linediv12"></div>
            <div class="div12inputlv2">
                <label for="">Mã phiếu nhập</label>
                <input type="text" value="PH1003" disabled>
            </div>
            <div class="div12inputlv2">
                <label for="">Hãng sản xuất</label>
                <select name="" id="loadhangsanxuat">
                    <option value="" selected>Chọn hãng sản xuất</option>
                </select>
            </div>
            <div class="div12inputlv2">
                <label for="">Chọn sản phẩm</label>
                <select name="" id="">
                    <option value="" selected>Chọn sản phẩm</option>
                </select>
            </div>
            <div class="div12inputlv2">
                <label for="">Chọn size</label>
                <select name="" id="">
                    <option value="" selected>Chọn size</option>
                </select>
            </div>
            <div class="div12inputlv2">
                <label for="">Chọn màu</label>
                <select name="" id="">
                    <option value="" selected>Chọn màu</option>
                </select>
            </div>
            <div class="div12inputlv2">
                <label for="">Số lượng</label>
                <input type="text" placeholder="Nhập số lượng ở đây">
            </div>
            <div class="linediv12"></div>
            <button class="submitnhaphang" onclick="nhaphang()"><i class="fa fa-file-text"></i> Nhập hàng</button>
        </div>
        <div id="div2">
            <div>
                <div class="header">
                    <div class="leftheader"><select name="" id="">
                        <option value="" selected>Mặc địch</option>
                        <option value="">Giá nhập</option>
                        <option value="">Số lượng</option>
                        <option value="">Tổng giá</option>
                        <option value="">Tên sản phẩm</option>
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
                    <button onclick="xoacacmuadachon()"><i class="fa fa-trash"></i>Xóa các mục đã chọn</button>
                    <div class="leftnextpage">
                        <p>Hiển thị <strong> 4 </strong> trên tổng 4 mục nhập</p>
                        <button><i class="fa fa-caret-left"></i></button>
                        <ul>
                            <li>1</li>
                        </ul>
                        <button><i class="fa fa-caret-right"></i></button>
                    </div>
                </div>
                <div class="maindiv2" id="maindiv2">
                    <div class="maindiv2header">
                        <button onclick="allselect()">+</button>
                        <p>Tên sản phẩm</p>
                        <p>Size</p>
                        <p>Màu</p>
                        <p>Giá nhập</p>
                        <p>Số lượng</p>
                        <p>Tổng giá</p>
                    </div>
                    <div class="item">

                        <label for="">
                            <input type="checkbox">
                        </label>

                        <div class="hinhsanpham">
                            <img src="../../img/product/pro10.webp" alt="">
                        </div>

                        <p class="itemname">
                            Áo Thun MTS 1011
                        </p>

                        <p class="itemsize">M</p>

                        <p class="itemmau">Đỏ</p>

                        <p class="itemgianhap">360,000 VND</p>

                        <input type="number" class="itemsoluong" value="40">

                        <p class="itemtongia">12,400,000 VND</p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>
                    </div>
                    <div class="item">

                        <label for="">
                            <input type="checkbox">
                        </label>

                        <div class="hinhsanpham">
                            <img src="../../img/product/pro1.webp" alt="">
                        </div>

                        <p class="itemname">
                            Áo Sweater Nam Stay Together MSW 1006
                        </p>

                        <p class="itemsize">XXL</p>

                        <p class="itemmau">Xanh đậm</p>

                        <p class="itemgianhap">270,000 VND</p>

                        <input type="number" class="itemsoluong" value="60">

                        <p class="itemtongia">13,300,000 VND</p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>
                    </div>
                    <div class="item">

                        <label for="">
                            <input type="checkbox">
                        </label>

                        <div class="hinhsanpham">
                            <img src="../../img/product/pro2.webp" alt="">
                        </div>

                        <p class="itemname">
                            Áo Sweater Nam Stay Cánh Đồng MSW 1005
                        </p>

                        <p class="itemsize">XL</p>

                        <p class="itemmau">Xanh nhạt</p>

                        <p class="itemgianhap">299,000 VND</p>

                        <input type="number" class="itemsoluong" value="100">

                        <p class="itemtongia">29,900,000 VND</p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>
                    </div>
                    <div class="item">

                        <label for="">
                            <input type="checkbox">
                        </label>

                        <div class="hinhsanpham">
                            <img src="../../img/product/pro3.webp" alt="">
                        </div>

                        <p class="itemname">
                            Áo Sweater Nam Basic MSW 1004
                        </p>

                        <p class="itemsize">L</p>

                        <p class="itemmau">Đỏ cam</p>

                        <p class="itemgianhap">399,000 VND</p>

                        <input type="number" class="itemsoluong" value="100">

                        <p class="itemtongia">39,900,000 VND</p>

                        <div class="itemsubmit" onclick="showselect(this)">
                            <input type="text" style="display: none;">
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <i class="fa fa-circle"></i>
                            <div>
                                <button onclick="removekhachhang(this)"><i class="fa fa-trash"></i>Xóa</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Quan tâm nhiêu đây thôi-->
</div>

</body>

</html>

<script src="js/nhapHangAdmin.js"></script>

<script>

    $(document).ready(function (){

        loadHSX();


    })
    function loadHSX() {

        $.ajax({
            url: 'LoadManufactor',
            dataType:'json',
            type:'get',
            success: function (data) {

                for (let i = 0; i < data.length; i++) {

                    $("#loadhangsanxuat").append("<option value=" + data[i].manufacturerId + ">" + data[i].manufacturerName + "</option>");

                }
            },
            error: function (e) {
                alert("loi load tinh");
            }
        });

    }

</script>