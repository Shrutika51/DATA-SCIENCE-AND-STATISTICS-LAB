<%-- 
    Document   : AdminDashboard
    Created on : 13 Dec 2025, 3:46:12 pm
    Author     : lokes
--%>

<%@page import="com.mycompany.dbapp.EmployerDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.dbapp.Employer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Admin Panel</h1>
<h3>View All Posted Jobs</h3>

           <%
        List<Employer> allJobs = EmployerDAO.getAllEmployer(); // Fetch all jobs from database
         if(allJobs != null && !allJobs.isEmpty()) {
         for(Employer job : allJobs) {
           %>
        <div class="job-card">
        <p>Name: <%= job.getName() %></p>
        <p>Mobile: <%= job.getMobile() %></p>
        <p>Work Type: <%= job.getWorkType() %></p>
        <p>Location: <%= job.getLocation() %></p>
        <p>Budget: <%= job.getBudget() %></p>
        <p>Date: <%= job.getDate() %></p>
        
        
        <a href="JobDetails.jsp?jobid=<%=job.getId()%>">View Details</a>
         </div>
        <%
                 }
             } else {
         %>
              <p>No jobs posted yet.</p>
        <%
              }
            %>

    </body>
</html>
