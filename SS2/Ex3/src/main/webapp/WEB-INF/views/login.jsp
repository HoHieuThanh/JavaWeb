<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 4/6/2026
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
  <title>Login</title>
</head>
<body>

<h2>Dang nhap</h2>

<form action="login" method="post">
  Username: <input type="text" name="username"/><br/>
  Password: <input type="password" name="password"/><br/>
  <button type="submit">Login</button>
</form>

<p style="color:red">${error}</p>

</body>
</html>

