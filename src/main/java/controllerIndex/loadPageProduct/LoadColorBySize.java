package controllerIndex.loadPageProduct;

import beans.product.ProductColor;
import com.google.gson.Gson;
import model.loadProduct.LoadSizeByIDProductModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "LoadColorBySize",urlPatterns = "/LoadColorBySize")
public class LoadColorBySize extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String ma_sp = request.getParameter("ma_sp");
        String ma_size = request.getParameter("ma_size");

        LoadSizeByIDProductModel loadSizeByIDProductModel = new LoadSizeByIDProductModel();

        ArrayList<ProductColor> list = loadSizeByIDProductModel.laodColorBySize(ma_sp,ma_size);

        System.out.println(list);

        request.setAttribute("listColor",list);

        request.getRequestDispatcher("ajax/colorByIDProduct.jsp").forward(request,response);

    }
}
