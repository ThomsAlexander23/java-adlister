import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "incorrectServlet", urlPatterns = "/incorrect")
public class incorrectServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String outcome = "lost";
        req.setAttribute("outcome" , outcome);
        System.out.println(req);
        req.getRequestDispatcher("/outcome.jsp").forward(req, res);
    }
}