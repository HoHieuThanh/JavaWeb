<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 4/6/2026
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<body>

<h2>Login</h2>

<form action="login" method="post">
  Username: <input name="username"/><br/>
  Password: <input name="password" type="password"/><br/>
  <button>Login</button>
</form>

<p style="color:red">${errorMessage}</p>

</body>
</html>

