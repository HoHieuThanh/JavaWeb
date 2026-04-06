<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 4/6/2026
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<p>
  Xin chao: ${sessionScope.loggedUser}
  | <a href="<c:url value='/employees'/>">Nhan vien</a>
  | <a href="<c:url value='/logout'/>">Logout</a>
</p>

<hr/>
