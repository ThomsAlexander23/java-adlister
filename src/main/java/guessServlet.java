import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

import static java.lang.Integer.parseInt;

@WebServlet(name= "guessServlet", urlPatterns = "/guess")
public class guessServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        req.getRequestDispatcher("/guess.jsp").forward(req, res);
        int guess = parseInt(req.getParameter("value"));
        int actualNum = (int) (Math.random()*1)+2;
            if (guess == actualNum){
                res.sendRedirect("/correct");
        }
            else if ((1 <= guess && guess <= 3)){
            res.sendRedirect("/incorrect");
        }
        else res.sendRedirect("/guess");
    }
}
