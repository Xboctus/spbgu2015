<%@ taglib uri="http://exigen.ru/students/tags" prefix="util" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>Bookmark Page</title>
        <link rel="stylesheet" type="text/css"
                               href="${pageContext.request.contextPath}/css/common.css">
    </head>
    <body>
        <util:helloTag/>
        <tags:hello userName="Player"/>


        <div>
            <form action="${ToDo}" method="POST">
                <c:set>
                    <p> Value: <input type = "text" name = "value"></p>
                    <var="test" value="${value}">
                    <p> <input type = "submit" name = "get" value = "Go"> </p>
                    <input type = "hidden" name = "action" value = "start">
                    <var="check" value="${util:Check(test)}">
                </c:set>
                <c:if test = "${check} = 1">
                    <c:set var="ToDo" value="win.jsp"/>
                </c:if>
                <c:if test = "${check} = 0">
                    <c:set var="ToDo" value="lose.jsp"/>
                </c:if>
            </form>
        </div>
    </body>
</html>
