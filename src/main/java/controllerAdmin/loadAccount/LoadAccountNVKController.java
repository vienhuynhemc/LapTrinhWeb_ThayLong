package controllerAdmin.loadAccount;

import beans.account.AccountEmployee;
import model.loadAccount.LoadAccountNVKModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "LoadAccountNVKController",urlPatterns = "/LoadAccountNVKController")
public class LoadAccountNVKController extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int number = Integer.parseInt(request.getParameter("page"));

        Collection<AccountEmployee> listNVK = LoadAccountNVKModel.getInstance().loadListNVK(number).values();

       // int numberPage = LoadNextPageModel.getInstance().loadNumberPageKH();
        //Load số trang
        //request.setAttribute("numberPage",numberPage);
        //load danh sách khách hàng
        request.setAttribute("listNVK",listNVK);

        request.getRequestDispatcher("admin/home/quanLyNVK.jsp").forward(request,response);

    }
}
