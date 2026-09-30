<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>DevOpsHub | Registration Successful</title>

    <link rel="stylesheet" href="style.css">

</head>

<body>

<nav>

    <div class="logo">
        DevOps<span>Hub</span>
    </div>

    <div class="nav-links">

        <a href="index.jsp">Platform</a>
        <a href="index.jsp">Pipelines</a>
        <a href="index.jsp">Monitoring</a>
        <a href="index.jsp">Deployments</a>

    </div>

    <a href="login.jsp" class="login-btn">
        Sign In
    </a>

</nav>


<div class="page">

    <div class="card center-card">

        <div class="success-icon">
            OK
        </div>

        <h1>Registration Successful</h1>

        <p class="card-subtitle">
            Welcome to DevOpsHub. Your account has been created successfully.
        </p>


        <div class="details">

            <h3>ACCOUNT DETAILS</h3>


            <div class="detail">

                <span class="label">
                    Name
                </span>

                <span class="value">
                    <%= request.getParameter("Name") %>
                </span>

            </div>


            <div class="detail">

                <span class="label">
                    Mobile
                </span>

                <span class="value">
                    <%= request.getParameter("mobile") %>
                </span>

            </div>


            <div class="detail">

                <span class="label">
                    Email
                </span>

                <span class="value">
                    <%= request.getParameter("email") %>
                </span>

            </div>

        </div>


        <div class="buttons">

            <a href="index.jsp" class="btn btn-primary">
                Back to Dashboard
            </a>

            <a href="login.jsp" class="btn btn-secondary">
                Sign In
            </a>

        </div>


        <div class="pipeline">

            GitHub -> Jenkins -> Maven -> Docker -> Deploy

        </div>

    </div>

</div>

</body>

</html>