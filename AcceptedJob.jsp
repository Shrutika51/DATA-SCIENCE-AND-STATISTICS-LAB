<%-- 
    Document   : AcceptedJon.jsp
    Created on : 12 Dec 2025, 23:03:07
    Author     : LENOVO User
--%>

<%@page import="com.mycompany.dbapp.Employer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.File"%> 
<%@ page import="com.mycompany.project1.Employer" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Work List | Professional Portal</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            body {
                min-height: 100vh;
                background: linear-gradient(135deg, #f5f9ff 0%, #e6f0ff 50%, #d9e8ff 100%);
                color: #333;
                line-height: 1.6;
                position: relative;
                overflow-x: hidden;
                padding: 20px;
                display: flex;
                justify-content: center;
                align-items: flex-start;
            }

            /* White & Blue Background Elements */
            .background-container {
                position: fixed;
                width: 100%;
                height: 100%;
                z-index: -1;
                overflow: hidden;
                background: 
                    radial-gradient(circle at 20% 80%, rgba(74, 110, 224, 0.08) 0%, transparent 50%),
                    radial-gradient(circle at 80% 20%, rgba(102, 152, 255, 0.05) 0%, transparent 50%),
                    radial-gradient(circle at 40% 40%, rgba(255, 255, 255, 0.9) 0%, transparent 50%);
            }

            .white-circle {
                position: absolute;
                border-radius: 50%;
                background: rgba(255, 255, 255, 0.95);
                box-shadow: 0 10px 40px rgba(74, 110, 224, 0.1);
                animation: float 15s infinite ease-in-out;
            }

            .circle-1 {
                width: 120px;
                height: 120px;
                top: 15%;
                right: 10%;
                animation-delay: 0s;
                border: 1px solid rgba(74, 110, 224, 0.1);
            }

            .circle-2 {
                width: 80px;
                height: 80px;
                bottom: 20%;
                left: 8%;
                animation-delay: 3s;
                animation-direction: reverse;
                border: 1px solid rgba(74, 110, 224, 0.1);
            }

            @keyframes float {
                0% { transform: translateY(0) rotate(0deg); }
                33% { transform: translateY(-15px) rotate(120deg); }
                66% { transform: translateY(10px) rotate(240deg); }
                100% { transform: translateY(0) rotate(360deg); }
            }

            /* Main Container */
            .work-list-container {
                width: 100%;
                max-width: 1200px;
                background: rgba(255, 255, 255, 0.95);
                border-radius: 24px;
                padding: 40px;
                box-shadow: 
                    0 20px 60px rgba(74, 110, 224, 0.15),
                    inset 0 0 0 1px rgba(255, 255, 255, 0.3);
                backdrop-filter: blur(10px);
                border: 1px solid rgba(74, 110, 224, 0.1);
                animation: fadeIn 0.5s ease-out;
                position: relative;
                overflow: hidden;
            }

            .work-list-container:before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                height: 6px;
                background: linear-gradient(to right, #4a6ee0, #3a5bd0);
                border-radius: 24px 24px 0 0;
            }

            @keyframes fadeIn {
                from { opacity: 0; transform: translateY(20px); }
                to { opacity: 1; transform: translateY(0); }
            }

            /* Header */
            h2 {
                text-align: center;
                font-size: 2.8rem;
                font-weight: 800;
                color: #2c3e50;
                margin-bottom: 40px;
                padding-bottom: 20px;
                position: relative;
                background: linear-gradient(135deg, #4a6ee0, #764ba2);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                background-clip: text;
            }

            h2:after {
                content: '';
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
                width: 120px;
                height: 4px;
                background: linear-gradient(to right, #4a6ee0, #3a5bd0);
                border-radius: 2px;
            }

            /* Work Items Grid - Using your existing HTML structure */
            .work-item {
                background: white;
                border-radius: 16px;
                padding: 30px;
                margin-bottom: 25px;
                box-shadow: 
                    0 10px 30px rgba(74, 110, 224, 0.1),
                    0 5px 15px rgba(0, 0, 0, 0.05),
                    inset 0 0 0 1px rgba(255, 255, 255, 0.9);
                border: 1px solid rgba(74, 110, 224, 0.1);
                transition: all 0.3s ease;
                position: relative;
                overflow: hidden;
                animation: slideIn 0.4s ease-out;
            }

            .work-item:hover {
                transform: translateY(-5px);
                box-shadow: 
                    0 15px 35px rgba(74, 110, 224, 0.15),
                    0 8px 20px rgba(0, 0, 0, 0.07);
                border-color: rgba(74, 110, 224, 0.2);
            }

            .work-item:before {
                content: '';
                position: absolute;
                left: 0;
                top: 0;
                height: 100%;
                width: 6px;
                background: linear-gradient(to bottom, #4a6ee0, #3a5bd0);
                border-radius: 16px 0 0 16px;
            }

            @keyframes slideIn {
                from { opacity: 0; transform: translateX(-20px); }
                to { opacity: 1; transform: translateX(0); }
            }

            /* Work Item Paragraphs - Your original structure preserved */
            .work-item p {
                margin-bottom: 15px;
                font-size: 1.05rem;
                line-height: 1.6;
                display: flex;
                align-items: center;
                color: #2d3748;
                padding: 8px 0;
                border-bottom: 1px solid rgba(74, 110, 224, 0.05);
            }

            .work-item p strong {
                display: inline-block;
                min-width: 140px;
                font-weight: 600;
                color: #2c3e50;
                background: rgba(74, 110, 224, 0.05);
                padding: 6px 12px;
                border-radius: 8px;
                margin-right: 15px;
                font-size: 0.95rem;
            }

            .work-item p:last-child {
                border-bottom: none;
            }

            /* Work Type Styling */
            .work-item p:nth-child(3) {
                position: relative;
            }

            .work-item p:nth-child(3):after {
                content: attr(data-work-type);
                position: absolute;
                right: 0;
                top: 50%;
                transform: translateY(-50%);
                padding: 6px 18px;
                background: linear-gradient(135deg, #4a6ee0, #3a5bd0);
                color: white;
                border-radius: 20px;
                font-size: 0.85rem;
                font-weight: 600;
                box-shadow: 0 4px 12px rgba(74, 110, 224, 0.2);
            }

            /* Budget Styling */
            .work-item p:nth-child(5) {
                position: relative;
                font-weight: 700;
            }

            .work-item p:nth-child(5):after {
                content: '';
                position: absolute;
                right: 0;
                top: 50%;
                transform: translateY(-50%);
                padding: 6px 18px;
                background: linear-gradient(135deg, #4CAF50, #2E7D32);
                color: white;
                border-radius: 20px;
                font-size: 1.1rem;
                font-weight: 700;
                box-shadow: 0 4px 12px rgba(76, 175, 80, 0.2);
            }

            /* Accept Job Button - Your original link preserved */
            .work-item a {
                display: inline-block;
                margin-top: 20px;
                padding: 14px 30px;
                background: linear-gradient(135deg, #4a6ee0 0%, #3a5bd0 100%);
                color: white;
                text-decoration: none;
                border-radius: 12px;
                font-weight: 600;
                font-size: 1.05rem;
                transition: all 0.3s ease;
                box-shadow: 0 8px 20px rgba(74, 110, 224, 0.25);
                border: none;
                cursor: pointer;
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 10px;
                width: 200px;
                position: relative;
                overflow: hidden;
                z-index: 1;
            }

            .work-item a:before {
                content: '';
                position: absolute;
                top: 0;
                left: -100%;
                width: 100%;
                height: 100%;
                background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
                transition: left 0.5s;
                z-index: -1;
            }

            .work-item a:hover:before {
                left: 100%;
            }

            .work-item a:hover {
                transform: translateY(-3px);
                box-shadow: 0 12px 25px rgba(74, 110, 224, 0.35);
                background: linear-gradient(135deg, #3a5bd0 0%, #2a4bc0 100%);
            }

            .work-item a:active {
                transform: translateY(0);
            }

            .work-item a i {
                font-size: 1.1rem;
            }

            /* No Work Found - Your original structure preserved */
            .no-work {
                text-align: center;
                padding: 80px 40px;
                background: white;
                border-radius: 20px;
                border: 2px dashed rgba(74, 110, 224, 0.2);
                position: relative;
                overflow: hidden;
                animation: fadeIn 0.5s ease-out;
            }

            .no-work:before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: 
                    repeating-linear-gradient(
                        45deg,
                        transparent,
                        transparent 10px,
                        rgba(74, 110, 224, 0.03) 10px,
                        rgba(74, 110, 224, 0.03) 20px
                    );
                z-index: 0;
            }

            .no-work p {
                font-size: 1.8rem;
                color: #4a5568;
                font-weight: 600;
                position: relative;
                z-index: 1;
                margin-bottom: 20px;
                background: linear-gradient(135deg, #4a6ee0, #764ba2);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                background-clip: text;
            }

            .no-work .sub-text {
                font-size: 1rem;
                color: #718096;
                position: relative;
                z-index: 1;
                max-width: 400px;
                margin: 0 auto;
                line-height: 1.6;
            }

            .no-work i {
                font-size: 5rem;
                color: rgba(74, 110, 224, 0.2);
                margin-bottom: 25px;
                position: relative;
                z-index: 1;
                display: block;
            }

            /* Responsive Design */
            @media (max-width: 768px) {
                body {
                    padding: 15px;
                }
                
                .work-list-container {
                    padding: 25px 20px;
                    border-radius: 20px;
                }
                
                h2 {
                    font-size: 2.2rem;
                    margin-bottom: 30px;
                }
                
                .work-item {
                    padding: 25px 20px;
                    margin-bottom: 20px;
                }
                
                .work-item p {
                    flex-direction: column;
                    align-items: flex-start;
                    gap: 8px;
                }
                
                .work-item p strong {
                    min-width: 100%;
                    margin-bottom: 5px;
                }
                
                .work-item p:nth-child(3):after,
                .work-item p:nth-child(5):after {
                    position: relative;
                    display: inline-block;
                    margin-top: 8px;
                    transform: none;
                    top: auto;
                    right: auto;
                }
                
                .work-item a {
                    width: 100%;
                    justify-content: center;
                }
            }

            @media (max-width: 480px) {
                .work-list-container {
                    padding: 20px 15px;
                }
                
                h2 {
                    font-size: 1.8rem;
                }
                
                .no-work {
                    padding: 60px 20px;
                }
                
                .no-work p {
                    font-size: 1.5rem;
                }
            }

            /* Status Indicators */
            .work-status {
                position: absolute;
                top: 25px;
                right: 25px;
                padding: 6px 16px;
                border-radius: 20px;
                font-size: 0.85rem;
                font-weight: 600;
                background: rgba(74, 110, 224, 0.1);
                color: #4a6ee0;
                border: 1px solid rgba(74, 110, 224, 0.2);
            }

            /* Job ID Badge */
            .job-id {
                position: absolute;
                bottom: 25px;
                right: 25px;
                font-size: 0.85rem;
                color: #718096;
                background: rgba(74, 110, 224, 0.05);
                padding: 4px 12px;
                border-radius: 8px;
            }

            /* Header Icons Decoration */
            .header-icons {
                text-align: center;
                margin-bottom: 30px;
            }

            .header-icons i {
                font-size: 2.5rem;
                background: linear-gradient(135deg, #4a6ee0, #3a5bd0);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                background-clip: text;
                margin: 0 15px;
                animation: bounce 2s infinite;
            }

            @keyframes bounce {
                0%, 100% { transform: translateY(0); }
                50% { transform: translateY(-10px); }
            }
        </style>
        <script>
            // Add work type and budget badges dynamically
            document.addEventListener('DOMContentLoaded', function() {
                // Add work type badges
                const workTypeParagraphs = document.querySelectorAll('.work-item p:nth-child(3)');
                workTypeParagraphs.forEach(p => {
                    const text = p.textContent;
                    const workType = text.split(':')[1]?.trim();
                    if (workType) {
                        p.setAttribute('data-work-type', workType);
                    }
                });
                
                // Add budget badges
                const budgetParagraphs = document.querySelectorAll('.work-item p:nth-child(5)');
                budgetParagraphs.forEach(p => {
                    const text = p.textContent;
                    const budget = text.split(':')[1]?.trim();
                    if (budget) {
                        p.setAttribute('data-budget', budget);
                        p.insertAdjacentHTML('beforeend', <span class="budget-badge">${budget}</span>);
                    }
                });
                
                // Add icons to each work item
                const workItems = document.querySelectorAll('.work-item');
                workItems.forEach(item => {
                    const paragraphs = item.querySelectorAll('p');
                    
                    // Add icons using pseudo-elements
                    paragraphs[0]?.classList.add('name-field');
                    paragraphs[1]?.classList.add('mobile-field');
                    paragraphs[2]?.classList.add('worktype-field');
                    paragraphs[3]?.classList.add('location-field');
                    paragraphs[4]?.classList.add('budget-field');
                    paragraphs[5]?.classList.add('date-field');
                });
            });
        </script>
    </head>
    <body>
        <div class="background-container">
            <div class="white-circle circle-1"></div>
            <div class="white-circle circle-2"></div>
        </div>
        
        <div class="work-list-container">
            <!-- Header with icons -->
            <div class="header-icons">
                <i class="fas fa-briefcase"></i>
                <i class="fas fa-tools"></i>
                <i class="fas fa-users"></i>
            </div>
            
            <h2>Work List</h2>
            
            
            <% 
                List<Employer> WorkList = (List<Employer>) request.getAttribute("WorkList"); 
                if (WorkList != null && !WorkList.isEmpty()) { 
                    for (Employer emp : WorkList) { 
            %> 
            <div class="work-item">
                <p><strong>Name:</strong> <%= emp.getName()%></p>
                <p><strong>Mobile No:</strong> <%= emp.getMobile() %> </p>
                <p><strong>Work Type:</strong> <%= emp.getWorkType() %></p> 
                <p><strong>Location:</strong> <%= emp.getLocation() %> </p>
                <p><strong>Budget:</strong> ₹<%= emp.getBudget() %> </p>
                <p><strong>Job Date:</strong> <%= emp.getDate()%></p>
                <p><strong> This Work Is Completed </strong></p>
                <!-- Status indicator -->
                <span class="work-status">Completed</span>
            </div>
            <% 
                    } 
                } else { 
            %> 
            <div class="no-work">
                <i class="fas fa-clipboard-list"></i>
                <p>No work found.</p>
                <p class="sub-text">Check back later for new work opportunities or post your own work requirements.</p>
            </div>
            <% 
                } 
            %>
        </div>
    </body>
</html>
</html>

</html>