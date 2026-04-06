<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 4/6/2026
  Time: 9:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<html>
<head>
    <title>Search Events</title>
</head>
<body>

<h2>
    Ket qua tim kiem cho:
    <c:out value="${keyword}" />
</h2>

<p>
    Tim thay ${totalFound} su kien
</p>

<c:if test="${empty events}">
    <p>Khong tim thay su kien nao phu hop.</p>
</c:if>

<c:if test="${not empty events}">
    <table border="1">
        <tr>
            <th>STT</th>
            <th>Ten su kien</th>
            <th>Ngay</th>
            <th>Gia ve</th>
            <th>Ve con lai</th>
            <th>Thao tac</th>
        </tr>

        <c:forEach var="event" items="${events}" varStatus="loop">
            <tr>
                <td>${loop.count}</td>

                <td>
                    <c:out value="${event.name}" />
                </td>

                <td>${event.eventDate}</td>

                <td>
                    <c:choose>
                        <c:when test="${event.price == 0}">
                            MIEN PHI
                        </c:when>
                        <c:otherwise>
                            <fmt:formatNumber value="${event.price}" type="number"/>
                        </c:otherwise>
                    </c:choose>
                </td>

                <td>
                    <c:choose>
                        <c:when test="${event.remainingTickets == 0}">
                            <span style="color:red">HET VE</span>
                        </c:when>

                        <c:when test="${event.remainingTickets < 10}">
                        <span style="color:orange">
                            Sap het (con ${event.remainingTickets} ve)
                        </span>
                        </c:when>

                        <c:otherwise>
                        <span style="color:green">
                                ${event.remainingTickets}
                        </span>
                        </c:otherwise>
                    </c:choose>
                </td>

                <td>
                    <c:choose>
                        <c:when test="${event.remainingTickets == 0}">
                            <button disabled>Dat ve</button>
                        </c:when>
                        <c:otherwise>
                            <a href="<c:url value='/events/${event.id}/book'/>">
                                Dat ve
                            </a>
                        </c:otherwise>
                    </c:choose>
                </td>

            </tr>
        </c:forEach>
    </table>
</c:if>


<c:if test="${not empty events}">
    <p>
        Su kien dau tien:
            ${fn:toUpperCase(events[0].name)}
    </p>
</c:if>

<p>
    Do dai keyword: ${fn:length(keyword)} ky tu
</p>

</body>
</html>

