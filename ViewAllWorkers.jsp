<%-- 
    Document   : WorkList.jsp
    Created on : 5 Dec 2025
    Author     : LENOVO User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.dbapp.AcceptJob"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Work List</title>

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

        .job-card::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 6px;
            height: 100%;
            background: linear-gradient(180deg, #4b79a1, #283e51);
        }

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
        }

        /* ================= NO DATA ================= */
        .no-data {
            text-align: center;
            font-size: 1.2rem;
            color: #777;
            margin-top: 40px;
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
 Heading -->
    <h1 cla
<body>

    <!-- Pagess="page-title">Work List</h1>
    <p class="page-subtitle">Accepted worker job details</p>

    <%
        List<AcceptJob> acc = (List<AcceptJob>) request.getAttribute("acc");

        if (acc != null && !acc.isEmpty()) {
            for (AcceptJob worker : acc) {
    %>

    <!-- Job Card -->
    <div class="job-card">

        <div class="job-details-group">
            <p><strong>ID:</strong> <%= worker.getId() %></p>
            <p><strong>Worker Name:</strong> <%= worker.getWorkerName() %></p>
            <p><strong>Worker Mobile:</strong> <%= worker.getWorkerMobile() %></p>
            <p><strong>Job ID:</strong> <%= worker.getJobId() %></p>
            <p><strong>Job Date:</strong> <%= worker.getDate() %></p>
        </div>

        <div class="action-area">
            <a href="DeleteAcceptJobController?id=<%= worker.getId() %>" class="accept-btn">
                Delete
            </a>
        </div>

    </div>

    <%
            }
        } else {
    %>

    <p class="no-data">No work found.</p>

    <%
        }
    %>

</body>
</html>
