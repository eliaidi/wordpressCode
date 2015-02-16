<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/13
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
	<title></title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String username = "";
	String password = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0) {
		for(Cookie c:cookies) {
			if(c.getName().equals("username")) {
				//URL的转码，防止中文乱码
				username = URLDecoder.decode(c.getValue(), "utf-8");
				URLDecoder.decode(c.getValue(), "utf-8");
			} else if(c.getName().equals("password")) {
				//URL的转码，防止中文乱码
				password = URLDecoder.decode(c.getValue(), "utf-8");
			}
		}
	}
%>
	<form name="loginForm" method="post" action="doLogin.jsp">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username" value="<%=username%>"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password" value="<%=password%>"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="checkbox" name="isUseCookie" checked="checked">记住登录信息
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="登录"></td>
			</tr>
		</table>
	</form>
</body>
</html>
