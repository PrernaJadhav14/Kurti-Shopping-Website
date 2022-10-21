/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Prerna
 */
@WebServlet(urlPatterns = {"/Product1"})
public class Product1 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  
        {
            if(request.getParameter("add1")!=null)
             {
                 
             }
              if(request.getParameter("buy1")!=null)
             {
                 out.println("Item 1 added in Bill");
             }
              if(request.getParameter("add2")!=null)
             {
                 out.println("Item 2 Added");
             }
              if(request.getParameter("buy2")!=null)
             {
                 out.println("Item 2 added in Bill");
             }
              if(request.getParameter("add3")!=null)
             {
                 out.println("Item 3 Added");
             }
              if(request.getParameter("buy3")!=null)
             {
                 out.println("Item 3 added in Bill");
             }
              if(request.getParameter("add4")!=null)
             {
                 out.println("Item 4 Added");
             }
              if(request.getParameter("buy4")!=null)
             {
                 out.println("Item 4 added in Bill");
             }
              if(request.getParameter("add5")!=null)
             {
                 out.println("Item 5 Added");
             }
              if(request.getParameter("buy5")!=null)
             {
                 out.println("Item 5 added in Bill");
             }
              if(request.getParameter("add6")!=null)
             {
                 out.println("Item 6 Added");
             }
              if(request.getParameter("buy6")!=null)
             {
                 out.println("Item 6 added in Bill");
             }
              if(request.getParameter("add7")!=null)
             {
                 out.println("Item 7 Added");
             }
              if(request.getParameter("buy7")!=null)
             {
                 out.println("Item 7 added in Bill");
             }
              if(request.getParameter("add8")!=null)
             {
                 out.println("Item 8 Added");
             }
              if(request.getParameter("buy8")!=null)
             {
                 out.println("Item 8 added in Bill");
             }
            
        }
        catch(Exception e)
        {
            out.println("Exception"+e);
        }
    }

    
}
