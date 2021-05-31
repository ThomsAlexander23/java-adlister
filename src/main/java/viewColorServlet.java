import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "viewColorServlet", urlPatterns = "/viewColor")
public class viewColorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String color = req.getParameter("color");
        req.setAttribute("color", color);
        req.getRequestDispatcher("/viewColor.jsp").forward(req, res);
    }
}
