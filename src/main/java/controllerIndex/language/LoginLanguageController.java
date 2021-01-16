package controllerIndex.language;

import model.language.IndexLanguageModel;
import model.language.LoginLanguageModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "LoginLanguageController",urlPatterns = "/LoginLanguageController")
public class LoginLanguageController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//  Lấy ngôn ngữ nhận vào
        String lang = request.getParameter("lang");

        //  Tiếp theo xem thử nếu null thì chứng tỏ đang được chuyển trang tới, ta lấy ngôn ngữ của sesstion
        if (lang == null) {

            //  Lấy ngôn ngữ của sesstion
            lang = (String) request.getSession().getAttribute("lang");

        } else {

            //  Không thì gán cho session biết là đang ở ngôn ngữ nào
            request.getSession().setAttribute("lang", lang);

        }

        //  Nếu không có gì, chức tỏ ta phải lấy mặc định là việt nam
        if (lang == null) {
            lang = "vietnamese";
        }


        //  Gán list ngôn ngữ cho thằng sesstion luôn để Rediract tới trang luôn
        //  Láy list ngôn ngữ của trang với lang tương ứng
        Map<String, String> map = LoginLanguageModel.getInstance().getList(lang);

        //  Lưu lại trong session
        request.getSession().setAttribute("langList", map);

        //  send redirect tới trang tương ứng
        response.sendRedirect("thong-tin");
    }
}
