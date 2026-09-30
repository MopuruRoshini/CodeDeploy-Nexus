<!DOCTYPE html>
<html>
<head>
    <title>DevOps Learning - Sign In</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<h1>Sign In</h1>

<p>Login to DevOps Learning</p>

<hr>

<form action="login-success.jsp" method="post">

    <label><b>Email</b></label>
    <input type="email" name="email" placeholder="Enter Email" required>
    <br><br>

    <label><b>Password</b></label>
    <input type="password" name="password" placeholder="Enter Password" required>
    <br><br>

    <button type="submit">Sign In</button>

</form>

<br>

<a href="index.jsp">Back to Registration</a>

</body>
</html>