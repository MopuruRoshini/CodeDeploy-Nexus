<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>DevOpsHub | Login Successful</title>

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

    <a href="index.jsp" class="login-btn">
        Dashboard
    </a>

</nav>


<div class="page">

    <div class="card center-card">

        <div class="success-icon">
            OK
        </div>

        <h1>Login Successful</h1>

        <p class="card-subtitle">
            Welcome back to DevOpsHub.
        </p>


        <div class="details">

            <h3>SESSION DETAILS</h3>


            <div class="detail">

                <span class="label">
                    Account
                </span>

                <span class="value">
                    <%= request.getParameter("email") %>
                </span>

            </div>


            <div class="detail">

                <span class="label">
                    Status
                </span>

                <span class="value">
                    Active
                </span>

            </div>


            <div class="detail">

                <span class="label">
                    Platform
                </span>

                <span class="value">
                    DevOpsHub
                </span>

            </div>

        </div>


        <div class="buttons">

            <a href="index.jsp" class="btn btn-primary">
                Back to Dashboard
            </a>

        </div>


        <div class="pipeline">

            GitHub -> Jenkins -> Maven -> Docker -> Deploy

        </div>

    </div>

</div>

</body>

</html>