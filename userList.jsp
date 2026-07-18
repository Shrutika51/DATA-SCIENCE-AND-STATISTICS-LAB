<%-- 
    Document   : WorkList.jsp
    Created on : 5 Dec 2025, 16:42:35
    Author     : LENOVO User
--%>

<%@page import="com.mycompany.dbapp.Employer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.File"%> 
<%@ page import="com.mycompany.dbapp.Employer" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
/* ================= GLOBAL ================= */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, #f3f6fb, #eef2f7);
    color: #333;
    padding: 40px 20px;
}

/* ================= PAGE HEADING ================= */
.page-title {
    text-align: center;
    font-size: 2.4rem;
    font-weight: 700;
    color: #2f4f6f;
    margin-bottom: 6px;
}

.page-subtitle {
    text-align: center;
    font-size: 1.1rem;
    color: #6c7a89;
    margin-bottom: 40px;
}

/* ================= JOB CARD ================= */
.job-card {
    max-width: 900px;
    margin: 0 auto 30px auto;
    background: rgba(255, 255, 255, 0.95);
    border-radius: 18px;
    padding: 26px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 18px 40px rgba(0, 0, 0, 0.08);
    transition: all 0.4s ease;
    position: relative;
    overflow: hidden;
}

/* Gradient strip */
.job-card::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 6px;
    height: 100%;
    background: linear-gradient(180deg, #4b79a1, #283e51);
}

/* Hover Effect */
.job-card:hover {
    transform: translateY(-8px) scale(1.01);
    box-shadow: 0 25px 60px rgba(0, 0, 0, 0.12);
}

/* ================= JOB DETAILS ================= */
.job-details-group {
    padding-left: 20px;
}

.job-details-group p {
    font-size: 1.05rem;
    margin-bottom: 10px;
    color: #444;
}

.job-details-group p strong {
    color: #2f4f6f;
    font-weight: 600;
}

/* ================= ACTION AREA ================= */
.action-area {
    text-align: center;
    min-width: 160px;
}

/* ================= BUTTON ================= */
.accept-btn {
    display: inline-block;
    padding: 12px 26px;
    background: linear-gradient(135deg, #4b79a1, #283e51);
    color: #fff;
    text-decoration: none;
    font-size: 1rem;
    font-weight: 600;
    border-radius: 30px;
    transition: all 0.35s ease;
    box-shadow: 0 10px 25px rgba(75, 121, 161, 0.4);
}

.accept-btn:hover {
    background: linear-gradient(135deg, #283e51, #4b79a1);
    transform: translateY(-3px);
    box-shadow: 0 16px 35px rgba(40, 62, 81, 0.45);
}
/* ================= DELETE BUTTON ================= */
.delete-btn {
    display: inline-block;
    margin-top: 12px;
    padding: 10px 24px;
    background: linear-gradient(135deg, #c0392b, #8e0e00);
    color: #fff;
    text-decoration: none;
    font-size: 0.95rem;
    font-weight: 600;
    border-radius: 30px;
    transition: all 0.35s ease;
    box-shadow: 0 8px 22px rgba(192, 57, 43, 0.4);
}

.delete-btn:hover {
    background: linear-gradient(135deg, #8e0e00, #c0392b);
    transform: translateY(-3px);
    box-shadow: 0 14px 30px rgba(142, 14, 0, 0.5);
}

/* ================= NO DATA ================= */
p {
    text-align: center;
    font-size: 1.2rem;
    color: #777;
}

/* ================= RESPONSIVE ================= */
@media (max-width: 768px) {
    .job-card {
        flex-direction: column;
        align-items: flex-start;
    }

    .action-area {
        width: 100%;
        margin-top: 20px;
        text-align: center;
    }
}
</style>
    </head>
    <body>
          <h2 class="page-title">Available Jobs</h2>
         <p class="page-subtitle">Choose a job and start earning today</p>

    
        <% 
            List<Employer> userList = (List<Employer>) request.getAttribute("userList"); 
            if (userList != null && !userList.isEmpty()) { 
                for (Employer user : userList) { 
        %>  
        
        <div class="job-card">
            
            <div class="job-details-group">
                
                
        <p> Name : <%= user.getName() %></p>
        <p> Mobile No : <%= user.getMobile() %> </p>
        <p> Work Type : <%= user.getWorkType() %></p> 
        <p> Location : <%= user.getLocation() %> </p>
        <p> Budget : <%= user.getBudget() %> </p>
        <p> Job Date : <%= user.getDate()%></p>
       
        </div>
        <div class="action-area">
            
          
        <a class="accept-btn" href="Acceptjob.jsp?jobid=<%=user.getId() %>">
    Accept Job
</a>
    <a class="delete-btn"
   href="DeleteEmployerController?id=<%= user.getId() %>"
   onclick="return confirm('Are you sure you want to delete this job?');">
   Delete
</a>


        
        
        <br><br><br>
        </div>
        
        </div>
         
        <% 
                } 
            } else { 
        %> 
        
            <p>No work found.</p> 
         
        <% 
            } 
        %> 
    
        
    </body>
</html>