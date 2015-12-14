<%@ taglib uri="http://exigen.ru/students/tags" prefix="util" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <title>Game page</title>
    <link rel="stylesheet" type="text/css"
                           href="${pageContext.request.contextPath}/css/common.css">
</head>

<body>
    <c:set var="check" value="${util:Check(value)}"/>
    <p>Check = : <c:out value="${check}"/><p>
    <c:if test = "${check == true}">
        <meta http-equiv="refresh" content="0;${pageContext.request.contextPath}/win.jsp" />
    </c:if>
    <c:if test = "${check == false}">
        <meta http-equiv="refresh" content="0;${pageContext.request.contextPath}/lose.jsp" />
    </c:if>
</body>
</html>