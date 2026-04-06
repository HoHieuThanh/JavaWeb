<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 4/6/2026
  Time: 9:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<html>
<head>
  <title>Orders</title>
</head>
<body>

<h2>
  Xin chao, ${sessionScope.loggedUser}!
  Vai tro: ${sessionScope.role}
</h2>

<table border="1">
  <tr>
    <th>Ma don</th>
    <th>San pham</th>
    <th>Tong tien</th>
    <th>Ngay dat</th>
  </tr>

  <c:forEach var="o" items="${orders}">
    <tr>
      <td>${o.id}</td>
      <td>${o.product}</td>

      <td>
        <fmt:formatNumber value="${o.total}" type="currency" currencySymbol="VND"/>
      </td>

      <td>
        <fmt:formatDate value="${o.date}" pattern="dd/MM/yyyy"/>
      </td>
    </tr>
  </c:forEach>
</table>

<p>
  Tong luot xem: ${applicationScope.totalViewCount}
</p>

<a href="logout">Dang xuat</a>

</body>
</html>
