<%-- 
    Document   : FindWork
    Created on : 9 Dec 2025, 11:57:18 am
    Author     : ambad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>/* ================= CENTERED LINK HEADING ================= */
/* Centered heading */
.center-link h1 {
    text-align: center;
    font-size: 32px;
    font-weight: 700;
    margin: 40px 0;
    color: #ff69b4; /* Pinkish color */
}

/* Link inside heading */
.center-link h1 a {
    text-decoration: none;
    color: #ff69b4; /* Pinkish color */
    transition: all 0.3s ease;
}

/* Hover effect */
.center-link h1 a:hover {
    color: #ff1493; /* Darker pink on hover */
    text-shadow: 0 4px 12px rgba(255,20,147,0.6);
    transform: scale(1.05);
}

</style>
    </head>
    <body>
        <div class="center-link">
    <h1>
        <a href="UserListControllerServlet">View All Work Done Post By Employer</a>
    </h1>
</div>


    </body>
</html>