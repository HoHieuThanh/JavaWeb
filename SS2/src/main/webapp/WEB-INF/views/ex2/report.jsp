<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 4/6/2026
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
  <title>Bao cao diem</title>
</head>
<body>

<h1>${reportTitle}</h1>
<table border="1">
  <tr>
    <th>STT</th>
    <th>Ho ten</th>
    <th>Diem</th>
    <th>Xep loai</th>
  </tr>

  <c:forEach var="sv" items="${studentList}" varStatus="loop">
    <tr>
      <td>${loop.index + 1}</td>

      <td>
        <!-- Chong XSS -->
        <c:out value="${sv.fullName}" />
      </td>

      <td>
        <c:out value="${sv.score}" />
      </td>

      <td>
        <c:choose>
          <c:when test="${sv.score >= 90}">
            Xuat sac
          </c:when>
          <c:when test="${sv.score >= 80}">
            Gioi
          </c:when>
          <c:when test="${sv.score >= 70}">
            Kha
          </c:when>
          <c:when test="${sv.score >= 60}">
            Trung binh kha
          </c:when>
          <c:when test="${sv.score >= 50}">
            Trung binh
          </c:when>
          <c:otherwise>
            Yeu
          </c:otherwise>
        </c:choose>
      </td>
    </tr>
  </c:forEach>

</table>

</body>
</html>

