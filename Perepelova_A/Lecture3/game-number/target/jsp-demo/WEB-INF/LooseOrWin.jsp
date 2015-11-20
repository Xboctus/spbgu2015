<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<html>
<body>
<p>Hey!</p>
<c:set var="number">
<%= request.getParameter("getnumber") %>
</c:set>
<c:set var="check" > <tags:checking value="${number}"/> </c:set>
     <c:if test = "${check == true}">
          <jsp:forward page="Win.jsp">
          <jsp:attribute var="curnumber" value="${check}">
          </jsp:forward>
     </c:if>
      <c:if test = "${check == false}">
                   <jsp:forward page="Lose.jsp">
                   <jsp:attribute var="curnumber" value="${check}">
                   </jsp:forward>
       </c:if>
</body>
</html>