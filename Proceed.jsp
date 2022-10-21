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
                <b><font size="30">Scan the QR Code to Pay the bill!</font></b>
                    
                           <img src="qr.png" alt=""/></div>
                         <div>
                             <b><font size="20" color="black">Thank you for the purchase!!</font></b>
                         </div>
                         <img src="Prernaaa.png" alt=""/>