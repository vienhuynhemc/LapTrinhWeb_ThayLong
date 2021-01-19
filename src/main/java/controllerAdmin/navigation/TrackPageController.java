package controllerAdmin.navigation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TrackPageController", urlPatterns = "/TrackPageController")
public class TrackPageController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //  Controller này được gọi sau khi đăng nhập thành công
        //  Kiểm tra xem thử có lưu vết không nếu có lưu vết thì đi tới trang tương ứng không thì tới adminindexnavigaion
        String trackPage = (String) request.getSession().getAttribute("trackPage");
        if (trackPage != null) {
            if (trackPage.equals("admin.quanLyMaGiamGia")) {
                request.getSession().removeAttribute("trackPage");
                response.sendRedirect("admin/home/quanLyMaGiamGia.jsp");
            } else if (trackPage.equals("admin.quanLyHangSanXuat")) {
                request.getSession().removeAttribute("trackPage");
                response.sendRedirect("admin/home/quanLyHangSanXuat.jsp");
            }else if(trackPage.equals("admin.guiEmailThongBao")){
                request.getSession().removeAttribute("trackPage");
                response.sendRedirect("admin/home/guiEmailThongBao.jsp");
            }else if(trackPage.equals("admin.thongTinTaiKhoanAdmin")){
                request.getSession().removeAttribute("trackPage");
                response.sendRedirect("admin/home/thongTinTaiKhoanAdmin.jsp");
            }
        } else {
            response.sendRedirect("AdminIndexNavigation");
        }
        //  Lấy thời gian hiện tại
        long nowTime = System.currentTimeMillis();
        //  Chạy minimaxAlphabeta của m
        // to do
        //  Lấy thời gian đã sử dụng
        long timeUsed = System.currentTimeMillis()- nowTime;
    }
}
