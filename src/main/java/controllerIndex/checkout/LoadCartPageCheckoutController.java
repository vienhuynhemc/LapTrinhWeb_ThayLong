package controllerIndex.checkout;

import beans.account.AccountCustomer;
import beans.cart.Cart;
import model.cart.CartModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "LoadCartPageCheckoutController",urlPatterns = "/LoadCartPageCheckoutController")
public class LoadCartPageCheckoutController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();

        AccountCustomer acc = (AccountCustomer) session.getAttribute("user");

        // System.out.println(acc);

        ArrayList<Cart> listCart = CartModel.getInstance().loadCartByID(acc.getIdUser());

//        System.out.println(acc.getIdUser());
//        System.out.println(listCart);

        request.setAttribute("listProduct",listCart);

        request.getRequestDispatcher("ajax/cart_pageCheckout.jsp").forward(request,response);


    }
}
