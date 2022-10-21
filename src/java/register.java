import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.sql.*;
/**
 *
 * @author Prerna
 */
@WebServlet(urlPatterns = {"/register"})
public class register extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
             Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1","app","app");
        
             String uname = request.getParameter("name");
             String uemail = request.getParameter("email");
             String upwd = request.getParameter("pass");
             String umobile = request.getParameter("contact");
             String repeat = request.getParameter("re_pass");
             RequestDispatcher rd = null;
             /**out.println(uname);
             out.println(uemail);
             out.println(upwd);
             out.println(umobile);
             out.println(repeat);**/
             PreparedStatement ps = c.prepareStatement("insert into users values(?,?,?,?)");
            
             ps.setString(1, uname);
             ps.setString(2, upwd);
             ps.setString(3, uemail);
             ps.setString(4,umobile);
             
             int i = ps.executeUpdate();
            rd = request.getRequestDispatcher("registration.jsp");
             if(i>0){
                 request.setAttribute("status", "success");
                 
             }
             else{
                 request.setAttribute("status", "failed");
             }
             rd.forward(request, response);
             ps.close();
             c.close();
        }
        catch(Exception e)
        {
            out.println("Exception"+e);
        }
        }
    }


