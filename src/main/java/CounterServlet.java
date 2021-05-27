import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
    public class CounterServlet extends HttpServlet {
        private int counter = 0;
        protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, IOException {
            counter += 1;
            res.getWriter().println("<h1>This site has been viewed: " + counter + " times!<h1>");
        }
    }
