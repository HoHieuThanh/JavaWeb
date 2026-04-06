<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 4/6/2026
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ include file="header.jsp" %>

<h2>Chi tiet nhan vien</h2>

<p>Ma: ${emp.code}</p>
<p>Ten: <c:out value="${emp.name}"/></p>
<p>Phong: ${emp.department}</p>

<p>
  Luong:
  <c:choose>
    <c:when test="${sessionScope.role == 'manager'}">
      ${emp.salary}
    </c:when>
    <c:otherwise>
      ***
    </c:otherwise>
  </c:choose>
</p>

<a href="<c:url value='/employees'/>">Quay lai</a>

<%@ include file="footer.jsp" %>

