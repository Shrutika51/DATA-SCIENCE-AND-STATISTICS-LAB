<%-- 
    Document   : Acceptjob
    Created on : 9 Dec 2025, 1:57:22 pm
    Author     : ambad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
/* ===== GLOBAL RESET ===== */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: linear-gradient(135deg, #e0e7ff, #f0f4f8);
}

/* ===== WRAPPER ===== */
.accept-form-wrapper {
    width: 100%;
    max-width: 500px;
    padding: 20px;
}

/* ===== FORM CARD ===== */
.accept-form-card {
    background: rgba(255,255,255,0.9);
    border-radius: 22px;
    padding: 40px 35px;
    box-shadow: 0 20px 45px rgba(0,0,0,0.12);
    transition: transform 0.4s ease, box-shadow 0.4s ease;
}

.accept-form-card:hover {
    transform: translateY(-6px) scale(1.02);
    box-shadow: 0 25px 60px rgba(0,0,0,0.15);
}

.accept-form-card h1 {
    font-size: 2.2rem;
    color: #1f2937;
    text-align: center;
    margin-bottom: 30px;
}

/* ===== FORM GROUP ===== */
.form-group {
    position: relative;
    margin-bottom: 20px;
}

/* ICON INSIDE INPUT */
.form-group .icon {
    position: absolute;
    left: 12px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 1.1rem;
    opacity: 0.6;
}

/* INPUTS & FLOATING LABELS */
.form-group input {
    width: 100%;
    padding: 16px 16px 16px 45px;
    border-radius: 14px;
    border: 1px solid #cbd5e1;
    outline: none;
    font-size: 1rem;
    transition: all 0.3s ease;
}

.form-group label {
    position: absolute;
    left: 40px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 1.2rem;
    font-weight: 500;
    color: #4a5568;
    pointer-events: none;
    transition: 0.3s ease;
    background: rgba(255,255,255,0.9);
    padding: 0 6px;
}

/* FLOAT LABEL ON FOCUS */
.form-group input:focus + label,
.form-group input:not(:placeholder-shown) + label {
    top: -8px;
    font-size: 0.75rem;
    color: #3b82f6;
    font-weight: 600;
}

/* FOCUS EFFECT */
.form-group input:focus {
    border-color: #3b82f6;
    box-shadow: 0 0 0 3px rgba(59,130,246,0.2);
}

/* ===== SUBMIT BUTTON ===== */
input[type="submit"] {
    width: 100%;
    padding: 14px;
    border-radius: 35px;
    border: none;
    font-size: 1.1rem;
    font-weight: 600;
    color: #fff;
    background: linear-gradient(135deg, #3b82f6, #2563eb);
    cursor: pointer;
    transition: all 0.4s ease;
}

input[type="submit"]:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 30px rgba(59,130,246,0.45);
}

/* ===== RESPONSIVE ===== */
@media (max-width: 480px) {
    .accept-form-card {
        padding: 25px 20px;
    }

    .accept-form-card h1 {
        font-size: 1.7rem;
    }
}

</style>
    </head>
    <body>
        <% 
            int jobid = Integer.parseInt(request.getParameter("jobid"));
        
        %>
        
        
        <div class="accept-form-wrapper">
    <div class="accept-form-card">
        <h1>Enter Your Details</h1>
        <form action="AcceptJobServlet" onsubmit="return validateAcceptForm()">
            
            <div class="form-group">
                <span class="icon">👤</span>
                <input type="text" name="wname" required>
                <label>Worker Name</label>
            </div>
            
            <div class="form-group">
                <span class="icon">📞</span>
                <input type="text" name="wmobile" required>
                <label>Worker Mobile No</label>
            </div>
            
            <input type="hidden" name="jobid" value="<%=jobid%>">
            
            <input type="submit" value="Submit Details">
        </form>
    </div>
</div>
            
            <script>
function validateAcceptForm() {
    let name = document.querySelector('input[name="wname"]').value.trim();
    let mobile = document.querySelector('input[name="wmobile"]').value.trim();

    if(name === "") {
        alert("Please enter your name");
        return false;
    }

    if(mobile === "" || isNaN(mobile) || mobile.length !== 10) {
        alert("Please enter a valid 10-digit mobile number");
        return false;
    }

    return true;
}
</script>


    </body>
</html>