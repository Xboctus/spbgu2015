<%@ taglib prefix="util" uri="http://exigenservices.com" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Hello!</title>
    <c:if test="${not empty param.number}">
        <c:if test="${param.number ne ''}">
            <c:choose>
                <c:when test="${util:Check(param.number)}">
                    <meta http-equiv="refresh" content="0; ${pageContext.request.contextPath}/win.jsp">
                </c:when>
                <c:otherwise>
                    <meta http-equiv="refresh" content="0; ${pageContext.request.contextPath}/lose.jsp">
                </c:otherwise>
            </c:choose>
        </c:if>
    </c:if>
</head>
<body>
    <form method="post">
        <c:if test="${param.number == ''}">
            <p style="color: red;">You should enter a number.</p>
        </c:if>
        <p>Enter number from 1 to 100:</p>
        <p><input type="text" name="number"></p>
        <p><input type="submit"></p>
    </form>
</body>
</html>
