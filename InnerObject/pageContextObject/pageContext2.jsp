<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/6
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	out.println("<br>pageContext.getAttribute('username')=");
	out.println(pageContext.getAttribute("username"));
	out.println("<br>pageContext.getSession.getAttribute('sessionvalue')=");
	out.println(pageContext.getSession().getAttribute("sessionvalue"));
	out.println("<br>pageContext.getServletContext.getAttribute('sharevalue')=");
	out.println(pageContext.getServletContext().getAttribute("sharevalue"));
%>
<html>
<head>
	<title></title>
</head>
<body>
</body>
</html>
