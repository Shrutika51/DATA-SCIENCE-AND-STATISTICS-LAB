<%-- 
    Document   : AdminPanel
    Created on : 12 Dec 2025, 00:47:39
    Author     : LENOVO User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Easy Hire Network - Admin Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 40px 20px;
        }
        
        .admin-container {
            max-width: 800px;
            width: 100%;
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            padding: 40px;
            margin-top: 20px;
        }
        
        .header {
            text-align: center;
            margin-bottom: 40px;
        }
        
        .header h1 {
            color: #333;
            font-size: 2.2rem;
            margin-bottom: 10px;
        }
        
        .header p {
            color: #666;
            font-size: 1.1rem;
        }
        
        .admin-icon {
            font-size: 3.5rem;
            color: #667eea;
            margin-bottom: 15px;
        }
        
        .admin-actions {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
            margin-top: 30px;
        }
        
        .action-card {
            background: #f8f9fa;
            border-radius: 10px;
            padding: 25px;
            text-align: center;
            transition: all 0.3s ease;
            border: 2px solid transparent;
            text-decoration: none;
            color: inherit;
        }
        
        .action-card:hover {
            transform: translateY(-5px);
            border-color: #667eea;
            background: #fff;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .card-icon {
            font-size: 2.5rem;
            color: #667eea;
            margin-bottom: 15px;
        }
        
        .action-card h3 {
            color: #333;
            margin-bottom: 10px;
            font-size: 1.3rem;
        }
        
        .action-card p {
            color: #666;
            font-size: 0.9rem;
            line-height: 1.4;
        }
        
        .logout-btn {
            display: inline-block;
            margin-top: 40px;
            background: #e74c3c;
            color: white;
            padding: 12px 25px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        
        .logout-btn:hover {
            background: #c0392b;
            transform: scale(1.05);
        }
        
        @media (max-width: 600px) {
            .admin-container {
                padding: 30px 20px;
            }
            
            .admin-actions {
                grid-template-columns: 1fr;
            }
            
            .header h1 {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>
    <div class="admin-container">
        <div class="header">
            <i class="fas fa-user-shield admin-icon"></i>
            <h1>Admin Dashboard</h1>
            <p>Easy Hire Network Management Panel</p>
        </div>
        
        <div class="admin-actions">
            <a href="UserListControllerServlet" class="action-card">
                <i class="fas fa-briefcase card-icon"></i>
                <h3>All Employer</h3>
                <p>View and manage all available job listings</p>
            </a>
            
            <a href="AllWorkersController" class="action-card">
                <i class="fas fa-check-circle card-icon"></i>
                <h3>All Workers</h3>
                <p>Monitor jobs that have been accepted by workers</p>
            </a>
        </div>
        
        <div style="text-align: center;">
            <a href="Home.html" class="logout-btn">
                <i class="fas fa-sign-out-alt"></i> Logout
            </a>
        </div>
    </div>
</body>
</html>