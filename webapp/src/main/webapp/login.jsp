<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DevOpsHub | Sign In</title>

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
                radial-gradient(circle at 15% 20%, rgba(59,130,246,0.18), transparent 35%),
                radial-gradient(circle at 85% 70%, rgba(139,92,246,0.18), transparent 35%),
                #060a14;
            color: #f8fafc;
        }

        .navbar {
            height: 64px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 7%;
            border-bottom: 1px solid rgba(255,255,255,0.08);
            background: rgba(6,10,20,0.85);
        }

        .logo {
            font-size: 22px;
            font-weight: 700;
        }

        .logo span {
            color: #60a5fa;
        }

        .nav-links {
            display: flex;
            gap: 36px;
            color: #aab4c7;
            font-size: 14px;
        }

        .nav-links a {
            color: #aab4c7;
            text-decoration: none;
        }

        .nav-links a:hover {
            color: #ffffff;
        }

        .signin-nav {
            padding: 9px 22px;
            border: 1px solid #334155;
            border-radius: 10px;
            color: white;
            text-decoration: none;
            font-size: 14px;
        }

        .main {
            min-height: calc(100vh - 64px);
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 80px;
            align-items: center;
            padding: 70px 8%;
        }

        .hero {
            max-width: 620px;
        }

        .badge {
            display: inline-block;
            padding: 8px 14px;
            border: 1px solid rgba(59,130,246,0.45);
            border-radius: 20px;
            background: rgba(59,130,246,0.08);
            color: #60a5fa;
            font-size: 12px;
            letter-spacing: 0.3px;
            margin-bottom: 28px;
        }

        .hero h1 {
            font-size: 58px;
            line-height: 1.05;
            margin-bottom: 24px;
        }

        .hero h1 span {
            color: #6ea8ff;
        }

        .hero p {
            color: #aab4c7;
            font-size: 16px;
            line-height: 1.7;
            max-width: 590px;
        }

        .tech-row,
        .feature-row {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 28px;
        }

        .tech,
        .feature {
            padding: 10px 15px;
            border: 1px solid rgba(255,255,255,0.08);
            border-radius: 8px;
            background: rgba(255,255,255,0.04);
            color: #cbd5e1;
            font-size: 12px;
        }

        .card {
            width: 100%;
            max-width: 665px;
            padding: 36px;
            border-radius: 20px;
            background: rgba(17,24,39,0.88);
            border: 1px solid rgba(148,163,184,0.2);
            box-shadow: 0 25px 70px rgba(0,0,0,0.35);
        }

        .card h2 {
            font-size: 25px;
            margin-bottom: 10px;
        }

        .subtitle {
            color: #8b97aa;
            font-size: 13px;
            margin-bottom: 32px;
        }

        .form-group {
            margin-bottom: 18px;
        }

        .form-group label {
            display: block;
            color: #cbd5e1;
            font-size: 12px;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .form-group input {
            width: 100%;
            padding: 13px 14px;
            border-radius: 8px;
            border: 1px solid #2d3a50;
            background: #0b1220;
            color: #ffffff;
            outline: none;
            font-size: 14px;
        }

        .form-group input:focus {
            border-color: #4f8df7;
            box-shadow: 0 0 0 2px rgba(79,141,247,0.12);
        }

        .form-group input::placeholder {
            color: #64748b;
        }

        .submit-btn {
            width: 100%;
            margin-top: 8px;
            padding: 13px;
            border: none;
            border-radius: 8px;
            background: linear-gradient(90deg, #3b82f6, #6366f1);
            color: white;
            font-weight: 700;
            cursor: pointer;
            font-size: 14px;
        }

        .submit-btn:hover {
            opacity: 0.92;
        }

        .bottom-text {
            text-align: center;
            margin-top: 20px;
            color: #7f8ba0;
            font-size: 13px;
        }

        .bottom-text a {
            color: #60a5fa;
            text-decoration: none;
        }

        @media (max-width: 900px) {
            .main {
                grid-template-columns: 1fr;
                padding: 50px 6%;
            }

            .nav-links {
                display: none;
            }

            .hero h1 {
                font-size: 45px;
            }

            .card {
                max-width: 100%;
            }
        }
    </style>
</head>

<body>

<nav class="navbar">
    <div class="logo">DevOps<span>Hub</span></div>

    <div class="nav-links">
        <a href="index.jsp">Platform</a>
        <a href="index.jsp">Pipelines</a>
        <a href="index.jsp">Monitoring</a>
        <a href="index.jsp">Deployments</a>
    </div>

    <a href="login.jsp" class="signin-nav">Sign In</a>
</nav>

<main class="main">

    <section class="hero">

        <div class="badge">DEVOPS AUTOMATION PLATFORM</div>

        <h1>
            Build faster.<br>
            <span>Deploy smarter.</span>
        </h1>

        <p>
            A modern DevOps platform for automating builds, testing,
            containerization and application deployments through a unified workflow.
        </p>

        <div class="tech-row">
            <div class="tech">GitHub</div>
            <div class="tech">Jenkins</div>
            <div class="tech">Maven</div>
            <div class="tech">Docker</div>
            <div class="tech">Deploy</div>
        </div>

        <div class="feature-row">
            <div class="feature">CI/CD Automation</div>
            <div class="feature">Docker Ready</div>
            <div class="feature">Automated Deployments</div>
            <div class="feature">Monitoring</div>
        </div>

    </section>

    <section class="card">

        <h2>Welcome back</h2>

        <p class="subtitle">
            Sign in to continue to the DevOps automation platform.
        </p>

        <form action="login-success.jsp" method="post">

            <div class="form-group">
                <label>EMAIL ADDRESS</label>
                <input
                    type="email"
                    name="email"
                    placeholder="you@example.com"
                    required>
            </div>

            <div class="form-group">
                <label>PASSWORD</label>
                <input
                    type="password"
                    name="password"
                    placeholder="Enter your password"
                    required>
            </div>

            <button type="submit" class="submit-btn">
                Sign In
            </button>

        </form>

        <div class="bottom-text">
            Don't have an account?
            <a href="index.jsp">Create an account</a>
        </div>

    </section>

</main>

</body>
</html>