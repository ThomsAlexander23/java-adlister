import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "correctServlet", urlPatterns = "/correct")
public class correctServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        req.setAttribute("outcome", "Winner Winner Chicken Dinner");
        req.getRequestDispatcher("/outcome").forward(req, res);
    }
}
