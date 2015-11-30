<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://exigen.ru/students/tags" prefix="util" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<html>
    <body>
        <util:helloTag/>
        <tags:hello userName="player"/>

        <p>
            <a href="${pageContext.request.contextPath}/bookmark/"><h1>Start the game</h1></a><br>
        </p>
    </body>
</html>
