<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/16
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title></title>
</head>
<body>
一个简单的聊天窗口
<br><hr>
<%
	request.setCharacterEncoding("utf-8");

	String content = (String)application.getAttribute(new String("content"));
	out.println(content);
	application.setAttribute("content",content+(String)request.getParameter("content")+"<br>");
%>
<form action="application.jsp" method="post">
	<input type="text" name="content">
	<input type="submit" value="发送">
</form>
</body>
</html>
