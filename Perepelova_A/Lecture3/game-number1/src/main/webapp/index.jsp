<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<body>
<h2>Hello World!Play with me!</h2>

<form action="LooseOrWin.jsp" method = "POST">
<p>
<input type="text" name="value"></p>
<input type="hidden" name="action" value="add">
<p> <input type = "submit"  value = "Go"> </p>
 </form>


</body>
</html>
