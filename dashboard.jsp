<%-- 
    Document   : dashboard
    Created on : 7 Dec 2025, 3:16:07?pm
    Author     : lokes
--%>

<%@page import="com.mycompany.dbapp.Employer"%>

<%@ page import="java.util.*" %>
<link rel="stylesheet" href="style.css"/>
<%
    Employer s = (Employer) session.getAttribute("user");
    if (s == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>

   <body>
    <div class="dashboard-card">
        <span class="badge">ID: <%= s.getId() %></span>

        <h2>Welcome, <%= s.getName() %></h2>

        <div class="info">
            <p><b>Mobile No:</b> <%= s.getMobile() %></p>
            <p><b>Work Type:</b> <%= s.getWorkType() %></p>
            <p><b>Location:</b> <%= s.getLocation() %></p>
            <p><b>Budget:</b> ? <%= s.getBudget() %></p>
            <p><b>Date:</b> <%= s.getDate() %></p>
        </div>

        <a href="LogoutServlet" class="logout-btn">Logout</a>
    </div>
</body>

</html>
