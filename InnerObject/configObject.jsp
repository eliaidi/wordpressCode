<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/6
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Date,java.util.Enumeration" %>
<html>
<head>
	<title>config对象</title>
</head>
<body>
<%
	int org = 0;
	int count = 0;
	try {
		//config.getInitParameter方法
		org = Integer.parseInt(config.getInitParameter("counter"));
	} catch (Exception e) {
		out.println("org:" + e);
	}
	try {
		count = Integer.parseInt((application.getAttribute("config_counter").toString()));
	} catch (Exception e) {
		out.println("config_counter"+e);
	}
	if(count<org) count = org;
	out.println("<br>此页面已经访问了"+count+"次<br>");
	count++;
	application.setAttribute("config_counter",new Integer(count));
%>
Servlet的名字是：<%=config.getServletName()%><br>
Servlet的上下文是：<%=config.getServletContext()%><br>
这个JSP的所有的初始参数的名字=
<%
	Enumeration e = config.getInitParameterNames();
	while (e.hasMoreElements()) {
		out.println(e.nextElement()+"&nbsp;&nbsp;");
	}
%>
</body>
</html>
