<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/16
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="session.userSession" %>
<html>
<head>
	<title>session_login</title>
</head>
<body>
<form name="loginForm" method="post" action="user.jsp">
	<table>
		<tr>
			<td>用户名：</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="登录"></td>
		</tr>
	</table>
</form>
</body>
</html>
