import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name="adsServlet", urlPatterns = "/ads")
public class adsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Ads adsDao = DaoFactory.getAdsDao();

        List<Ad> showAds = adsDao.all();

        req.setAttribute("ads", showAds);
        req.getRequestDispatcher("ads/index.jsp").forward(req, res);
    }


}
