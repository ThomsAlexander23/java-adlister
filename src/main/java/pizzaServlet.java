import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "pizzaServlet", urlPatterns = "/pizza-order")
public class pizzaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/pizza-order.jsp").forward(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res){
        System.out.println(req.getParameter("address"));
        System.out.println(Arrays.toString(req.getParameterValues("toppings")));
        System.out.println(req.getParameter("crustTypes"));
        System.out.println(req.getParameter("sizeTypes"));
        System.out.println(req.getParameter("sauceTypes"));


    }
}
