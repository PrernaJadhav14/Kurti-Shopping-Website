import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
/**
/**
 *
 * @author Prerna
 */
@WebServlet(urlPatterns = {"/Logout"})
public class Logout extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try 
        {
            if(request.getSession().getAttribute("name")!=null)
            {  HttpSession session = request.getSession();
            session.removeAttribute("name");
            response.sendRedirect("login.jsp");
            }
            else{
               response.sendRedirect("index.jsp"); 
            }
        }
        catch(Exception e)
        {
            out.println("Exception"+e);
        }
    }

}
