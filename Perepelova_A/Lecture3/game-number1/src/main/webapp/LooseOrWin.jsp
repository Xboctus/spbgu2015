<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="WEB-INF/tag.tld" prefix="tag" %>
<html>
<body>
<p>Hey!</p>

   <c:set var="number">
            <%= request.getParameter("value") %>
   </c:set>
 <p>Check = : <c:out value="${number}"/><p>

<c:set var="var1">
            <tag:checking value = "${number}"/>
    </c:set>
     <c:if test = "${check == true}">
          <p>enter</p>
          <jsp:forward page="Win.jsp">
          <jsp:param name="number" value="${check}"/>
          </jsp:forward>
     </c:if>

      <c:if test = "${check == false}">
                   <jsp:forward page="Lose.jsp">
                   <jsp:param name="number" value="${check}"/>
                   </jsp:forward>
       </c:if>
</body>
</html>