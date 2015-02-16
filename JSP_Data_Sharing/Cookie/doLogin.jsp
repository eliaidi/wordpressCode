<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/13
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<html>
<head>
	<title></title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	//首先判断用户是否选择了记住登录
	String[] isUserCookies = request.getParameterValues("isUseCookie");
	if(isUserCookies != null && isUserCookies.length > 0) {
		//把用户名和密码保存在Cookie里
		//URL的转码，防止中文乱码
		String username = URLEncoder.encode(request.getParameter("username"),"utf-8");
		String password = URLEncoder.encode(request.getParameter("password"),"utf-8");
		Cookie usernameCookie = new Cookie("username",username);
		Cookie passwordCookie = new Cookie("password",password);
		//设置Cookie生存期限(秒)
		usernameCookie.setMaxAge(864000);
		passwordCookie.setMaxAge(864000);
		response.addCookie(usernameCookie);
		response.addCookie(passwordCookie);
	} else  {
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length > 0) {
			for(Cookie c:cookies) {
				if(c.getName().equals("username") || c.getName().equals("password")) {
					//设置生存期限等于0（失效）
					c.setMaxAge(0);
					//重新保存
					response.addCookie(c);
				}
			}
		}
	}
%>
	<h>登录成功</h>
	<a href="user.jsp" target="_blank">查看用户信息</a>
</body>
</html>
