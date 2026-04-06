<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 4/6/2026
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<%@ include file="header.jsp" %>

<table border="1">
  <tr>
    <th>STT</th>
    <th>Ten</th>
    <th>Phong</th>
    <th>Luong</th>
    <th>Ngay</th>
    <th>Trang thai</th>
    <th></th>
  </tr>

  <c:forEach var="e" items="${employees}" varStatus="loop">
    <tr>
      <td>${loop.count}</td>
      <td><c:out value="${e.name}"/></td>
      <td>${e.department}</td>

      <td>
        <fmt:formatNumber value="${e.salary}" type="number"/>
      </td>

      <td>
        <fmt:formatDate value="${e.joinDate}" pattern="dd/MM/yyyy"/>
      </td>

      <td>
        <c:choose>
          <c:when test="${e.status == 'Dang lam'}">
            <span style="color:green">Dang lam</span>
          </c:when>
          <c:when test="${e.status == 'Nghi phep'}">
            <span style="color:orange">Nghi phep</span>
          </c:when>
          <c:otherwise>
            <span style="color:blue">Thu viec</span>
          </c:otherwise>
        </c:choose>
      </td>

      <td>
        <a href="<c:url value='/employees/${e.code}'/>">Chi tiet</a>
      </td>
    </tr>
  </c:forEach>
</table>

<p>
  Tong luong phong Ky thuat:
  <fmt:formatNumber value="${totalSalary}" type="number"/>
</p>

<%@ include file="footer.jsp" %>

