package controllerIndex.wishlist;

import beans.account.AccountCustomer;
import model.wishlist.AddWishlistModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddWishListController")
public class AddWishListController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        AccountCustomer user = (AccountCustomer) session.getAttribute("user");

        String idCustomer = user.getIdUser();

        String color = request.getParameter("ma_mau");
        String idProduct = request.getParameter("ma_sp");

        boolean check = AddWishlistModel.addWishlist(idProduct,idCustomer,color);
        request.setAttribute("check",check);

        request.getRequestDispatcher("notifyAddWishlist/AddWishlistStatus.jsp").forward(request,response);
    }
}
