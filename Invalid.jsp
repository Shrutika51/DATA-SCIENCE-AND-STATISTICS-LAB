<%-- 
    Document   : Invalid
    Created on : 12 Dec 2025, 00:51:09
    Author     : LENOVO User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Failed</title>
        <style>
            body {
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, sans-serif;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            .error-card {
                background: white;
                padding: 50px;
                border-radius: 15px;
                text-align: center;
                box-shadow: 0 20px 40px rgba(0,0,0,0.1);
                width: 90%;
                max-width: 400px;
                animation: slideUp 0.5s ease-out;
            }

            @keyframes slideUp {
                from { opacity: 0; transform: translateY(30px); }
                to { opacity: 1; transform: translateY(0); }
            }

            .error-icon {
                width: 80px;
                height: 80px;
                background: #ff6b6b;
                border-radius: 50%;
                margin: 0 auto 25px;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 2.5rem;
                color: white;
                font-weight: bold;
            }

            h2 {
                color: #333;
                margin-bottom: 15px;
                font-size: 1.8rem;
            }

            p {
                color: #666;
                margin-bottom: 30px;
                line-height: 1.5;
            }

            .btn {
                display: inline-block;
                background: #667eea;
                color: white;
                padding: 12px 25px;
                border-radius: 8px;
                text-decoration: none;
                font-weight: 600;
                transition: all 0.3s;
                border: none;
                cursor: pointer;
                font-size: 1rem;
            }

            .btn:hover {
                background: #5a6fd8;
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(102, 126, 234, 0.3);
            }

            @media (max-width: 480px) {
                .error-card {
                    padding: 40px 30px;
                }
            }
        </style>
    </head>
    <body>
        <div class="error-card">
            <div class="error-icon">!</div>
            <h2>Access Denied</h2>
            <p>We couldn't log you in. Please check your credentials and try again.</p>
            <a href="Login.jsp" class="btn">Return to Login</a>
        </div>
    </body>
</html>