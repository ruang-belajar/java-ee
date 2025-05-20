<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h2>Login</h2>
    <form action="login.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username"><br><br>

        <label for="password">Password:</label>
        <input type="password" name="password"><br><br>

        <input type="submit" value="Login">
    </form>

</body>
</html>
