import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.sql.*;
/**
 *
 * @author Prerna
 */
@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         String uname = request.getParameter("username");
             String password = request.getParameter("password");
             RequestDispatcher rd = null;
        try  {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
             Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1","app","app");
         PreparedStatement ps = c.prepareStatement(" select * from users where UNAME = ? and PASSWORD = ? ");
         ps.setString(1, uname);
         ps.setString(2, password);
        
        ResultSet rs = ps.executeQuery();
        HttpSession session = request.getSession();
                
         
          
        if(rs.next())
        {
             session.setAttribute("name",rs.getString("uname"));
             rd = request.getRequestDispatcher("index.jsp");
//             Class.forName("org.apache.derby.jdbc.ClientDriver");
//          Connection d = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1","app","app");
//        
//          String username = request.getParameter("username");
//          PreparedStatement ps2 = d.prepareStatement("insert into CARTPRODUCT values(?)");
//          ps2.setString(6, username);
        }
        else{
            request.setAttribute("status", "failed");
            rd = request.getRequestDispatcher("login.jsp");
        }
        rd.forward(request, response);
       
        }
        
        catch(Exception e)
        {
            out.println("Exception"+e);
        }
    }

   
}
