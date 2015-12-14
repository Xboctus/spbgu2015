<%@ taglib uri="http://exigen.ru/students/tags" prefix="util" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <title>Start Page</title>
    <link rel="stylesheet" type="text/css"
                           href="${pageContext.request.contextPath}/css/common.css">
</head>

<body>
    <tags:hello userName=""/>

    <div>
        <form action="${pageContext.request.contextPath}/check.jsp" method="POST">
             <p> Value: <input type = "text" name = "value"></p>

             <p> <input type = "submit" name = "get" value = "Go"> </p>
             <input type = "hidden" name = "action" value = "start">

        </form>
    </div>
</body>
</html>