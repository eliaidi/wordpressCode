<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/16
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="session.userSession" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
	<title>session_user</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	userSession userSession = new userSession();
	userSession.setLoginTime(new java.util.Date());
	userSession.setUsername(username);
	userSession.setPassword(password);
	//设置session
	session.setAttribute("userSession",userSession);
	//时间格式化
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	//获取Session
	userSession userInfo = (userSession)session.getAttribute("userSession");
	try {
		out.println("用户名：" + userInfo.getUsername() + "<br>");
		out.println("密码：" + userInfo.getPassword() + "<br>");
		out.println("上次登录时间：" + formatter.format(userInfo.getLoginTime()) + "<br>");
	}catch (Exception e) {
		e.printStackTrace();
	}
%>
</body>
</html>
