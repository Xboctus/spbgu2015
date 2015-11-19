<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="m" tagdir="/WEB-INF/tags" %>

<html>
<body>
<h2>Hello World!Play with me!</h2>

<Form action="${todo}" method = "post">
<p><input type="text" name="getnumber"/></p>
 <p> <input type = "submit" name = "get" value = "Go"> </p>

<c:catch var="myException">
<c:set var="number" scope ="session"  value ="<m:parse  value ='${getnumber}'/>" />
</c:catch>

<c:if test="${myException != null}">
    There was an exception: %{myException.message}
</c:if>
<c:if test="${myException == null}">
<c:set var="check" scope ="session" value="<m:checking value=${number}/>" />
     <c:if test = "${check} = true">
                    <c:set var="todo" value="Win.jsp"/>
                </c:if>
                <c:if test = "${check} = false">
                    <c:set var="todo" value="Lose.jsp"/>
</c:if>
</form>
</body>
</html>
