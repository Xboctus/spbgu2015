<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tags" uri="http://exigen.ru/students/tags" %>

<html>
<head>
    <title>Game page</title>
</head>
<body>
<tags:helloTag/>

<div>
    <form action="${pageContext.request.contextPath}/check.jsp" method="POST">
        <p> Value: <label>
            <input type="text" name="value">
        </label></p>

        <input type = "submit" name = "get" value = "Check">
        <input type = "hidden" name = "action" value = "start">

    </form>
</div>

</body>
</html>
