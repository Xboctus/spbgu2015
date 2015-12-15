<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="util" uri="http://exigen.ru/students/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Game page</title>
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
