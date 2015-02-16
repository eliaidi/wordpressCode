<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/16
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title></title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String content = request.getParameter("content");

	System.out.println(content);

	config.getServletContext().setAttribute("content",content);

	out.println((String)config.getServletContext().getAttribute("content"));


	/*String content =
			(String)getServletConfig().getServletContext().getAttribute(new String("charTopic"));
	out.println(content);
	getServletConfig().getServletContext().setAttribute("charTopic",content+()+"<br>");*/
%>
</body>
</html>
