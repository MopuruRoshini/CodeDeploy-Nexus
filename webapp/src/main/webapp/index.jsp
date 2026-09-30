<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DevOpsHub | Automation Platform</title>
    <link rel="stylesheet" href="style.css">

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            min-height: 100vh;
            background:
                radial-gradient(circle at 15% 20%, rgba(59,130,246,0.18), transparent 30%),
                radial-gradient(circle at 85% 70%, rgba(139,92,246,0.18), transparent 30%),
                #070b14;
            color: white;
        }

        /* NAVBAR */

        nav {
            height: 75px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 7%;
            border-bottom: 1px solid rgba(255,255,255,0.08);
            background: rgba(7,11,20,0.75);
            backdrop-filter: blur(15px);
        }

        .logo {
            font-size: 23px;
            font-weight: bold;
            letter-spacing: -0.5px;
        }

        .logo span {
            color: #60a5fa;
        }

        .nav-links {
            display: flex;
            gap: 35px;
        }

        .nav-links a {
            color: #aeb8ca;
            text-decoration: none;
            font-size: 14px;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: white;
        }

        .login-btn {
            padding: 10px 20px;
            border: 1px solid rgba(255,255,255,0.15);
            border-radius: 9px;
            color: white !important;
        }

        /* HERO */

        .hero {
            min-height: calc(100vh - 75px);
            display: grid;
            grid-template-columns: 1.1fr 0.9fr;
            gap: 80px;
            align-items: center;
            padding: 60px 8%;
        }

        .badge {
            display: inline-block;
            padding: 8px 14px;
            border-radius: 30px;
            background: rgba(59,130,246,0.12);
            border: 1px solid rgba(96,165,250,0.25);
            color: #7db7ff;
            font-size: 12px;
            margin-bottom: 25px;
        }

        .hero h1 {
            font-size: 62px;
            line-height: 1.05;
            letter-spacing: -3px;
            margin-bottom: 25px;
        }

        .hero h1 span {
            background: linear-gradient(90deg,#60a5fa,#a78bfa);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            max-width: 600px;
            color: #9aa6ba;
            font-size: 17px;
            line-height: 1.7;
            margin-bottom: 30px;
        }

        /* PIPELINE */

        .pipeline {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-bottom: 30px;
        }

        .pipeline-item {
            padding: 9px 14px;
            background: rgba(255,255,255,0.05);
            border: 1px solid rgba(255,255,255,0.08);
            border-radius: 8px;
            color: #cbd5e1;
            font-size: 12px;
        }

        .arrow {
            color: #64748b;
            padding-top: 9px;
        }

        /* FORM CARD */

        .card {
            background: rgba(17,24,39,0.82);
            border: 1px solid rgba(255,255,255,0.1);
            border-radius: 20px;
            padding: 35px;
            box-shadow:
                0 25px 80px rgba(0,0,0,0.45),
                inset 0 1px rgba(255,255,255,0.05);
            backdrop-filter: blur(20px);
        }

        .card-header {
            margin-bottom: 25px;
        }

        .card-header h2 {
            font-size: 25px;
            margin-bottom: 8px;
        }

        .card-header p {
            color: #7f8ba0;
            font-size: 13px;
        }

        .input-group {
            margin-bottom: 17px;
        }

        .input-group label {
            display: block;
            color: #b8c2d4;
            font-size: 12px;
            margin-bottom: 7px;
        }

        input {
            width: 100%;
            padding: 13px 14px;
            border-radius: 9px;
            border: 1px solid #273247;
            background: #0b1120;
            color: white;
            outline: none;
            transition: 0.3s;
        }

        input:focus {
            border-color: #60a5fa;
            box-shadow: 0 0 0 3px rgba(96,165,250,0.1);
        }

        .register-btn {
            width: 100%;
            padding: 14px;
            margin-top: 5px;
            border: none;
            border-radius: 9px;
            background: linear-gradient(90deg,#3b82f6,#6366f1);
            color: white;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .register-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 30px rgba(59,130,246,0.3);
        }

        .signin {
            text-align: center;
            margin-top: 18px;
            color: #7f8ba0;
            font-size: 13px;
        }

        .signin a {
            color: #60a5fa;
            text-decoration: none;
        }

        /* FEATURES */

        .features {
            display: flex;
            gap: 12px;
            margin-top: 30px;
            flex-wrap: wrap;
        }

        .feature {
            padding: 12px 15px;
            border-radius: 9px;
            background: rgba(255,255,255,0.04);
            border: 1px solid rgba(255,255,255,0.07);
            color: #aeb8ca;
            font-size: 12px;
        }

        .feature span {
            color: #4ade80;
            margin-right: 5px;
        }

        /* RESPONSIVE */

        @media(max-width: 900px) {

            .hero {
                grid-template-columns: 1fr;
                padding: 45px 6%;
            }

            .hero h1 {
                font-size: 45px;
            }

            .nav-links {
                display: none;
            }

        }

    </style>
</head>

<body>

<!-- NAVIGATION -->

<nav>

    <div class="logo">
        ◈ DevOps<span>Hub</span>
    </div>

    <div class="nav-links">
        <a href="#">Platform</a>
        <a href="#">Pipelines</a>
        <a href="#">Monitoring</a>
        <a href="#">Deployments</a>
    </div>

    <a href="login.jsp" class="login-btn">Sign In</a>

</nav>


<!-- HERO -->

<section class="hero">

    <div>

        <div class="badge">
            DEVOPS AUTOMATION PLATFORM
        </div>

        <h1>
            Build faster.<br>
            <span>Deploy smarter.</span>
        </h1>

        <p>
            A modern DevOps platform for automating builds,
            testing, containerization and application deployments
            through a unified workflow.
        </p>


        <!-- PIPELINE -->

        <div class="pipeline">

    <div class="pipeline-item">GitHub</div>
    <div class="pipeline-item">Jenkins</div>
    <div class="pipeline-item">Maven</div>
    <div class="pipeline-item">Docker</div>
    <div class="pipeline-item">Deploy</div>

</div>

        <!-- FEATURES -->

        <div class="features">

    <div class="feature">
        CI/CD Automation
    </div>

    <div class="feature">
        Docker Ready
    </div>

    <div class="feature">
        Automated Deployments
    </div>

    <div class="feature">
        Monitoring
    </div>

</div>

    </div>


    <!-- REGISTER CARD -->

    <div class="card">

        <div class="card-header">

            <h2>Create your account</h2>

            <p>
                Start exploring the DevOps automation platform.
            </p>

        </div>


        <form action="success.jsp" method="post">

            <div class="input-group">

                <label>FULL NAME</label>

                <input
                    type="text"
                    name="Name"
                    placeholder="Enter your full name"
                    required>

            </div>


            <div class="input-group">

                <label>MOBILE NUMBER</label>

                <input
                    type="text"
                    name="mobile"
                    placeholder="Enter mobile number"
                    required>

            </div>


            <div class="input-group">

                <label>EMAIL ADDRESS</label>

                <input
                    type="email"
                    name="email"
                    placeholder="you@example.com"
                    required>

            </div>


            <div class="input-group">

                <label>PASSWORD</label>

                <input
                    type="password"
                    name="psw"
                    placeholder="Create a password"
                    required>

            </div>


            <div class="input-group">

                <label>CONFIRM PASSWORD</label>

                <input
                    type="password"
                    name="psw-repeat"
                    placeholder="Confirm your password"
                    required>

            </div>


            <button type="submit" class="register-btn">
                Create Account
            </button>

        </form>


        <div class="signin">

            Already have an account?
            <a href="login.jsp">Sign in</a>

        </div>

    </div>

</section>

</body>
</html>