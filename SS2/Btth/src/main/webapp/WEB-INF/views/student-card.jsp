<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 4/6/2026
  Time: 10:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>The sinh vien</title>
</head>
<body>

<h2>Tra cuu the sinh vien</h2>

<form action="${pageContext.request.contextPath}/student-card" method="get">
    Ma SV: <input type="text" name="msv"/>
    <button>Tra cuu</button>
</form>

<hr/>

<c:if test="${not empty errorMessage}">
    <div style="color:red">
            ${errorMessage}
    </div>
</c:if>

<c:if test="${not empty studentName}">
    <h3>The sinh vien</h3>

    <p><b>Ma SV:</b> ${param.msv}</p>
    <p><b>Ho ten:</b> ${studentName}</p>
    <p><b>Khoa:</b> ${faculty}</p>
    <p><b>Nam hoc:</b> ${year}</p>
    <p><b>GPA:</b> ${gpa}</p>

    <p><b>Xep loai:</b>
        <c:choose>
            <c:when test="${gpa >= 8.0}">
                <span style="color:green">Gioi</span>
            </c:when>

            <c:when test="${gpa >= 6.5}">
                <span style="color:blue">Kha</span>
            </c:when>

            <c:when test="${gpa >= 5.0}">
                <span style="color:orange">Trung binh</span>
            </c:when>

            <c:otherwise>
                <span style="color:red; font-weight:bold">
                    Canh bao hoc vu
                </span>
            </c:otherwise>
        </c:choose>
    </p>
</c:if>

<hr/>

<a href="${pageContext.request.contextPath}/student-card">
    Tra cuu sinh vien khac
</a>

</body>
</html>

