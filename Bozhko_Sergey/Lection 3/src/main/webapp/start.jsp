<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://exigen.ru/students/tags" prefix="util" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <title>Game page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
</head>

<body>
        <tags:hello userName=" player"/>

        <div>
            <form action="${pageContext.request.contextPath}/temp.jsp" method="POST">
                <p> Value: <input type = "text" name = "value"></p>

                <p> <input type = "submit" name = "get" value = "Try"> </p>
                <input type = "hidden" name = "action" value = "start">

            </form>
        </div>

</body>
</html>
