<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/13
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
	<title></title>
</head>
<body>
	<h1>用户信息</h1>
<%
	request.setCharacterEncoding("utf-8");
	String username = "";
	String password = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0) {
		for(Cookie c:cookies) {
			if(c.getName().equals("username")) {
				//URL的转码，防止中文乱码
				username = URLDecoder.decode(c.getValue(),"utf-8");
				URLDecoder.decode(c.getValue(),"utf-8");
			} else if(c.getName().equals("password")) {
				//URL的转码，防止中文乱码
				password = URLDecoder.decode(c.getValue(),"utf-8");
			}
		}
	}
%>
	用户名：<%=username%><br>
	密码：<%=password%><br>
</body>
</html>
