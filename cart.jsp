<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
            <meta name="author" content="" />
        <title>Freelancer - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
        crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
              rel="stylesheet" type="text/css" />
        <link
            href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
            rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/index-styles.css" rel="stylesheet" />

        <%@ page import = "java.io.*,java.util.*, java.sql.*" %>
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav
            class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
            id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">Prerna's MyMyntra</a>
                <button
                    class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
                    type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
                    aria-expanded="false" aria-label="Toggle navigation">
                    Menu <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Items_To_Buy</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">AboutUs</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">Cart</a></li>
                            <%
                                if (session.getAttribute("name") != null) {%>

                        <li class="nav-item mx-0 mx-lg-1"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="">Orders</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="login.jsp">Logout</a></li>
                        <li class="nav-item mx-0 mx-lg-1 bg-danger"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="login.jsp" name="user"><%=session.getAttribute("name")%></a>
                        </li>
                        <%} else { %>
                        <li class="nav-item mx-0 mx-lg-1 bg-danger"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="login.jsp">Login Now!</a>
                        </li>
                        <%
                            }
                        %>
                    </ul>
                </div>
            </div>
        </nav>
        <header class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">

                <%
                    try {
                        if (request.getParameter("add1") != null) {
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1", "app", "app");

                          
                            //String size = request.getParameter("p1");
                           

                            PreparedStatement ps = c.prepareStatement("insert into CARTPRODUCT values(?,?,?,?,?,?)");
                            ps.setInt(1, 1);
                            ps.setString(2, "Kurti1");
                            ps.setString(3, "Small");
                            ps.setInt(4, 500);
                            ps.setString(5, String.valueOf('F'));
                            ps.setString(6,"Avanti");
                            
                            ps.executeUpdate();
                            ps.close();
                            c.close();
                %>
                <b><font color="black" size="30px">
                <%  
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection d = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1", "app", "app");
                    PreparedStatement ps2 = d.prepareStatement("select * from CARTPRODUCT where USERNAME = 'Avanti' and ID=1 ");
                    ResultSet rs = ps2.executeQuery();
                    
                    

                    while (rs.next()) {
                        int Pid = rs.getInt("ID");
                        String Pname = rs.getString("PRODUCT_NAME");
                        String PSize = rs.getString("SIZE");
                        int PCost = rs.getInt("COST");
                        String stats = rs.getString("STATUS");
                        String u = rs.getString("USERNAME");
                        
                        out.println("P_id: ");
                        out.println(Pid+"    ");
                        out.println("Product Name: ");
                        out.println(Pname+"    ");
                        out.println("Size:");
                        out.println(PSize+"    ");
                        out.println("Cost");
                        out.println(PCost+"     ");
                        //out.println(u);
                         }
                    %>
                </font></b> 

                <%
                    }
                    if (request.getParameter("buy1") != null) {
//                       if (request.getParameter("add1") != null) {
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1", "app", "app");

                          
                            String size = request.getParameter("p1");
                           

                            PreparedStatement ps = c.prepareStatement("insert into CARTPRODUCT values(?,?,?,?,?,?)");
                            ps.setInt(1, 1);
                            ps.setString(2, "Kurti1");
                            ps.setString(3, "Small");
                            ps.setInt(4, 500);
                            ps.setString(5, String.valueOf('T'));
                            ps.setString(6,"Avanti");
                            
                            ps.executeUpdate();
                            ps.close();
                            c.close();

                        out.println("Item 1 added in Bill");
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection d = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1", "app", "app");
                    PreparedStatement ps2 = d.prepareStatement("select * from CARTPRODUCT where USERNAME = 'Avanti' and ID=1 and STATUS='T'");
                    ResultSet rs = ps2.executeQuery();
                    
                    

                    while (rs.next()) {
                        int Pid = rs.getInt("ID");
                        String Pname = rs.getString("PRODUCT_NAME");
                        String PSize = rs.getString("SIZE");
                        int PCost = rs.getInt("COST");
                        String stats = rs.getString("STATUS");
                        String u = rs.getString("USERNAME");
                        
                        out.println("P_id: ");
                        out.println(Pid+"    ");
                        out.println("Product Name: ");
                        out.println(Pname+"    ");
                        out.println("Size:");
                        out.println(PSize+"    ");
                        out.println("Cost");
                        out.println(PCost+"     ");
                        //out.println(u);
                         }
                    }
                    
                    
                    if (request.getParameter("add2") != null) {
//                        Class.forName("org.apache.derby.jdbc.ClientDriver");
//                       Class.forName("org.apache.derby.jdbc.ClientDriver");
                            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1", "app", "app");

                       
                           

                            PreparedStatement ps = c.prepareStatement("insert into CARTPRODUCT values(?,?,?,?,?,?)");
                            ps.setInt(1, 2);
                            ps.setString(2, "Kurti_2");
                            ps.setString(3, "Medium");
                            ps.setInt(4, 1000);
                            ps.setString(5, String.valueOf('F'));
                            ps.setString(6,"Avanti");
                            
                            ps.executeUpdate();
                            ps.close();
                            c.close();
                        out.println("Product 2 added to cart");
                %>
                
                <b><font color="blue" size="30px">
                <%  
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection d = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1", "app", "app");
                    PreparedStatement ps2 = d.prepareStatement("select * from CARTPRODUCT where USERNAME = 'Avanti' and ID=2 ");
                    ResultSet rs = ps2.executeQuery();
                    
                    

                    while (rs.next()) {
                        int Pid = rs.getInt("ID");
                        String Pname = rs.getString("PRODUCT_NAME");
                        String PSize = rs.getString("SIZE");
                        int PCost = rs.getInt("COST");
                        String stats = rs.getString("STATUS");
                        String u = rs.getString("USERNAME");
                        
                        out.println("P_id: ");
                        out.println(Pid+"    ");
                        out.println("Product Name: ");
                        out.println(Pname+"    ");
                        out.println("Size:");
                        out.println(PSize+"    ");
                        out.println("Cost");
                        out.println(PCost+"     ");
                        //out.println(u);
                         }
                    %>
                </font></b> 
                <%
                        }
                        if (request.getParameter("buy2") != null) {
                            
                            out.println("Item 2 added in Bill");
                        }
                        if (request.getParameter("add3") != null) {
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1", "app", "app");

                    
                           

                            PreparedStatement ps = c.prepareStatement("insert into CARTPRODUCT values(?,?,?,?,?,?)");
                            ps.setInt(1, 3);
                            ps.setString(2, "Kurti_3");
                            ps.setString(3, "Medium");
                            ps.setInt(4, 500);
                            ps.setString(5, String.valueOf('F'));
                            ps.setString(6,"Avantika");
                            
                            ps.executeUpdate();
                            ps.close();
                            c.close();
                            out.println("Item 3 Added");
                        }%>
                        
                <b><font color="black" size="30px">
                <%  
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection d = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1", "app", "app");
                    PreparedStatement ps2 = d.prepareStatement("select * from CARTPRODUCT where USERNAME = 'Preshu' and ID=3 ");
                    ResultSet rs = ps2.executeQuery();
                    
                    

                    while (rs.next()) {
                        int Pid = rs.getInt("ID");
                        String Pname = rs.getString("PRODUCT_NAME");
                        String PSize = rs.getString("SIZE");
                        int PCost = rs.getInt("COST");
                        String stats = rs.getString("STATUS");
                        String u = rs.getString("USERNAME");
                        
                        out.println("P_id: ");
                        out.println(Pid+"    ");
                        out.println("Product Name: ");
                        out.println(Pname+"    ");
                        out.println("Size:");
                        out.println(PSize+"    ");
                        out.println("Cost");
                        out.println(PCost+"     ");
                        //out.println(u);
                         }
                    %>
                </font ></b> 
                        <%
                        if (request.getParameter("buy3") != null) {
                            out.println("Item 3 added in Bill");
                        }
                        
                        
                        if (request.getParameter("add4") != null) {
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Register1", "app", "app");

                       

                            PreparedStatement ps = c.prepareStatement("insert into CARTPRODUCT values(?,?,?,?,?,?)");
                            ps.setInt(1, 4);
                            ps.setString(2, "Kurti4");
                            ps.setString(3, "Small");
                            ps.setInt(4, 2500);
                            ps.setString(5, String.valueOf('F'));
                            ps.setString(6,"Preshu");
                            
                            ps.executeUpdate();
                            ps.close();
                            c.close();
                            out.println("Item 4 Added");
                        }
                        if (request.getParameter("buy4") != null) {
                            out.println("Item 4 added in Bill");
                        }
                        if (request.getParameter("add5") != null) {
                            out.println("Item 5 Added");
                        }
                        if (request.getParameter("buy5") != null) {
                            out.println("Item 5 added in Bill");
                        }
                        if (request.getParameter("add6") != null) {
                            out.println("Item 6 Added");
                        }
                        if (request.getParameter("buy6") != null) {
                            out.println("Item 6 added in Bill");
                        }
                        if (request.getParameter("add7") != null) {
                            out.println("Item 7 Added");
                        }
                        if (request.getParameter("buy7") != null) {
                            out.println("Item 7 added in Bill");
                        }
                        if (request.getParameter("add8") != null) {
                            out.println("Item 8 Added");
                        }
                        if (request.getParameter("buy8") != null) {
                            out.println("Item 8 added in Bill");
                        }

                    }
                    catch(Exception e)
            {
              out.println("Exception"+e);
           }


                %>

                <a href="index.jsp">  <input type="submit" value="back to products" ></a>
            <a href="Proceed.jsp">  <input type="submit" background="Green" value="Proceed to Pay" ></a>
            
            </div></header>

