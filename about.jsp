<%-- 
    Document   : about
    Created on : 8 Dec 2025, 6:51:22 pm
    Author     : lokes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About - Easy Hire Network</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">

   

    <style>
/* ================= GLOBAL ================= */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, #f4f6fb, #eef1f7);
    color: #2c2c2c;
}

/* ================= ABOUT HEADER ================= */
.about-header h1 {
    font-size: 3rem;
    font-weight: 700;
    color: #1f2937;
    letter-spacing: 1px;
}

.about-header p {
    font-size: 1.2rem;
    color: #555;
    margin-top: 10px;
}

/* glowing divider */
.glow-line {
    width: 90px;
    height: 4px;
    margin: 14px auto;
    border-radius: 50px;
    background: linear-gradient(90deg, #6366f1, #22c55e);
    box-shadow: 0 0 12px rgba(99,102,241,0.6);
}

/* ================= ABOUT CARD ================= */
.about-card {
    background: rgba(255, 255, 255, 0.9);
    border-radius: 18px;
    box-shadow: 0 12px 35px rgba(0,0,0,0.08);
    transition: all 0.4s ease;
    position: relative;
    overflow: hidden;
    padding: 26px 28px;
}

/* gradient border on hover */
.about-card::before {
    content: "";
    position: absolute;
    inset: 0;
    border-radius: 18px;
    padding: 2px;
    background: linear-gradient(135deg, #6366f1, #22c55e);
    -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
    -webkit-mask-composite: xor;
    mask-composite: exclude;
    opacity: 0;
    transition: 0.4s ease;
}

.about-card:hover::before {
    opacity: 1;
}

.about-card:hover {
    transform: translateY(-10px) scale(1.02);
    box-shadow: 0 25px 50px rgba(0,0,0,0.15);
}

/* ================= CARD CONTENT ================= */
.about-card h4 {
    font-size: 1.5rem;
    font-weight: 600;
    color: #1e40af;
    margin-bottom: 12px;
}

.about-card p {
    font-size: 1.05rem;
    color: #444;
    line-height: 1.8;
}

.about-card ul {
    padding-left: 18px;
    margin-top: 10px;
}

.about-card ul li {
    font-size: 1rem;
    margin-bottom: 10px;
    color: #333;
    position: relative;
    padding-left: 18px;
}

/* custom bullet */
.about-card ul li::before {
    content: "✔";
    position: absolute;
    left: 0;
    color: #22c55e;
    font-weight: bold;
}
.about-wrapper {
    max-width: 1100px;      /* sets a maximum width for large screens */
    margin-left: auto;       /* centers the content */
    margin-right: auto;      /* centers the content */
    padding-left: 20px;      /* space from window left */
    padding-right: 20px;     /* space from window right */
}

.about-wrapper .row {
    margin-left: -10px;   /* reset Bootstrap negative gutter */
    margin-right: -10px;
}

.about-wrapper .col-md-6 {
    padding-left: 15px;   /* space from left */
    padding-right: 15px;  /* space from right */
}



/* ================= RESPONSIVE ================= */
@media (max-width: 768px) {
    .about-header h1 {
        font-size: 2.2rem;
    }

    .about-card {
        padding: 22px 20px;
    }
     
}

@media (max-width: 480px) {
    .about-wrapper .col-md-6{
        padding-left: 5px;
        padding-right: 5px;
    }
}
</style>
</head>
<body>

    

        <!-- Header -->
        <div class="text-center mb-5 about-header">
    <h1>About Easy Hire Network</h1>
    <div class="glow-line"></div>
    <p>Your modern platform to connect skilled workers with employers seamlessly.</p>
</div>

        <!-- About Content -->
        <div class="row g-4">

            <div class="col-md-6">
                <div class="about-card p-4">
                    <h4>🚀 Our Mission</h4>
                    <p>We aim to simplify job searching and hiring for daily wage workers and employers. 
                    Our smart system ensures fast matching and reliable connections.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="about-card p-4">
                    <h4>🌟 Our Vision</h4>
                    <p>To build a trustworthy network where workers find jobs easily and employers get skilled labor efficiently.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="about-card p-4">
                    <h4>⚙️ How It Works</h4>
                    <ul>
                        <li>Workers register and create their profile with skills.</li>
                        <li>Employers post job requirements and location.</li>
                        <li>Our smart matching system connects them instantly.</li>
                        <li>Workers and employers can communicate and finalize tasks.</li>
                    </ul>
                </div>
            </div>

            <div class="col-md-6">
                <div class="about-card p-4">
                    <h4>💎 Why Choose Us?</h4>
                    <ul>
                        <li>Fast & reliable matching system</li>
                        <li>Skilled and verified workers</li>
                        <li>Easy-to-use interface</li>
                        <li>Secure and trustworthy platform</li>
                    </ul>
                </div>
            </div>

        </div>

    </div>

</body>
</html>

