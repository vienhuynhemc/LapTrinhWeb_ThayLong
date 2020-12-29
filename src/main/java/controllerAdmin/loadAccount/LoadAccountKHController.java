package controllerAdmin.loadAccount;

import beans.account.AccountCustomer;
import model.loadAccount.LoadAccountKHModel;
import model.loadAccount.LoadNextPageModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;


@WebServlet(name = "LoadAccountKHController",urlPatterns = "/LoadAccountKHController")
public class LoadAccountKHController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println(request.getParameter("page"));
       // int page = Integer.parseInt(request.getParameter("page"));
      //  System.out.println(page);
        String type = request.getParameter("type");

        String search = request.getParameter("search");
        String orderby = request.getParameter("orderBy");
        System.out.println(type);
        System.out.println(search);
        System.out.println(orderby);

        Collection<AccountCustomer> listKH = LoadAccountKHModel.getInstance().loadListKH(1,type,search,orderby);



        int numberPage = LoadAccountKHModel.getInstance().getNumPage();
        //Laod số trang
        request.setAttribute("numberPage",numberPage);
        //load danh sách khách hàng
        request.setAttribute("listKH",listKH);

        request.getRequestDispatcher("admin/home/quanLyKhachHang.jsp").forward(request,response);

    }
}
