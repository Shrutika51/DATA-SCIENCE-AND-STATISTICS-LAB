<%-- 
    Document   : employer-post
    Created on : 3 Dec 2025, 8:22:20 pm
    Author     : lokes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Job</title>
        <style>
/* ========== RESET ========== */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

/* ========== BODY ========== */
body {
    min-height: 100vh;
    background: linear-gradient(135deg, #eef3f9, #dde6f1);
    display: flex;
    align-items: center;
    justify-content: center;
}

/* ========== WRAPPER ========== */
.postjob-wrapper {
    width: 100%;
    max-width: 480px;   /* increased form width */
}

/* ========== HEADER ========== */
.postjob-header {
    text-align: center;
    margin-bottom: 20px;
}

.postjob-header h1 {
    font-size: 2.4rem;
    background: linear-gradient(90deg, #2f4f7f, #4a6fa5);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.postjob-header p {
    font-size: 1.07rem;
    color: #5b6b7f;
    margin-top: 6px;
}

/* ========== CARD ========== */
.job-card {
    width: 100%;
    background: rgba(255,255,255,0.95);
    padding: 34px;      /* increased padding */
    border-radius: 26px;
    box-shadow: 0 30px 70px rgba(74,111,165,0.28);
}

/* ========== FORM GROUP ========== */
.form-group {
    position: relative;
    margin-bottom: 22px;
}

/* icon */
.form-group .icon {
    position: absolute;
    left: 14px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 1.1rem;
    opacity: 0.6;
}

/* input & select */
.form-group input,
.form-group select {
       width:100%;
    padding: 15px 14px 15px 46px;  /* increased height */
    border-radius: 15px;
    border: 1px solid #cfd8e3;
    outline: none;
    font-size: 1rem;              /* increased font size */
    background: #fff;
    transition: 0.3s;
}

/* focus glow */
.form-group input:focus,
.form-group select:focus {
    border-color: #4a6fa5;
    box-shadow: 0 0 0 3px rgba(74,111,165,0.25);
}

/* floating label */
.form-group label {
    position: absolute;
    left: 40px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 1.15rem;                 /* increased label size */
    font-weight: 600;
    color: #3b5f8a;                  /* darker same blue */
    pointer-events: none;
    transition: 0.3s ease;
    background: #fff;
    padding: 0 6px;
}


/* move label up */
.form-group input:focus + label,
.form-group input:not(:placeholder-shown) + label,
.form-group select:focus + label,
.form-group select:not([value=""]) + label {
    top: -8px;
    font-size: 0.8rem;
    color: #2f4f7f;   /* slightly darker when active */
}


/* ========== SUBMIT BUTTON ========== */
input[type="submit"] {
    width: 100%;
    margin-top: 10px;
    padding: 12px;
    border-radius: 30px;
    border: none;
    background: linear-gradient(135deg, #4a6fa5, #3b5f8a);
    color: #fff;
    font-size: 1.05rem;
    font-weight: 600;
    cursor: pointer;
    transition: 0.4s;
}

input[type="submit"]:hover {
    transform: translateY(-2px);
    box-shadow: 0 15px 35px rgba(74,111,165,0.5);
}

</style>
    </head>
    <body>        
<div class="postjob-wrapper">

    <!-- Page Header -->
    <div class="postjob-header">
        <h1>Post a Job</h1>
        <p>Hire trusted workers quickly and efficiently</p>
    </div>

    <!-- Job Form Card -->
   <div class="job-card">
    <form action="PostJobServlet" onsubmit="return validateForm()">


        <div class="form-group">
            <span class="icon">👤</span>
            <input type="text" name="name" required>
            <label>Name</label>
        </div>

        <div class="form-group">
            <span class="icon">📞</span>
            <input type="text" name="mobile" required>
            <label>Mobile Number</label>
        </div>

        <div class="form-group">
            <span class="icon">🛠️</span>
            <select name="workType" required>
                <option value="" disabled selected></option>
                <option>Cleaning</option>
                <option>Plumbing</option>
                <option>Electrical Work</option>
                <option>Painting</option>
                <option>Carpenter Work</option>
                <option>Construction</option>
                <option>Delivery</option>
            </select>
            <label>Job Type</label>
        </div>

        <div class="form-group">
            <span class="icon">📍</span>
            <input type="text" name="location" required>
            <label>Location</label>
        </div>

        <div class="form-group">
            <span class="icon">💰</span>
            <input type="text" name="budget" required>
            <label>Budget (₹)</label>
        </div>

        <div class="form-group">
            <span class="icon">📅</span>
            <input type="date" name="date" required>
            <label>Date Required</label>
        </div>

        <input type="submit" value="Post Job">
    </form>
</div>

 <script>
function validateForm() {

    // get values using name attribute
    let name = document.querySelector('input[name="name"]').value.trim();
    let mobile = document.querySelector('input[name="mobile"]').value.trim();
    let workType = document.querySelector('select[name="workType"]').value;
    let location = document.querySelector('input[name="location"]').value.trim();
    let budget = document.querySelector('input[name="budget"]').value.trim();
    let date = document.querySelector('input[name="date"]').value;

    // Name validation
    if (name === "") {
        alert("Name cannot be blank");
        return false;
    }

    // Mobile validation
    if (mobile === "" || isNaN(mobile) || mobile.length !== 10) {
        alert("Please enter a valid 10-digit mobile number");
        return false;
    }

    // Job type validation
    if (workType === "") {
        alert("Please select a job type");
        return false;
    }

    // Location validation
    if (location === "") {
        alert("Please enter location");
        return false;
    }

    // Budget validation
    if (budget === "" || isNaN(budget)) {
        alert("Please enter a valid budget");
        return false;
    }

    // Date validation
    if (date === "") {
        alert("Please select required date");
        return false;
    }

    // All validations passed
    return true;
}
</script>

           

    </body>
</html>
