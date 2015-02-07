<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/6
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
	//通过pageContext.getRequest方法来获取request对象
	ServletRequest req = pageContext.getRequest();
	String name = req.getParameter("name");
	out.println("name="+name+"<br>");
	//pageContext.getServletConfig方法
	out.println("ServletConfig="+ pageContext.getServletConfig());
	//pageContext.setAttribute方法
	pageContext.setAttribute("username",name);
	//pageContext.getServletContext方法
	pageContext.getServletContext().setAttribute("sharevalue","多个页面共享");
	//pageContext.getSession方法
	pageContext.getSession().setAttribute("sessionvalue","只有在session中才是共享的");
	out.println("<br>pageContext.getAttributte('username')=");
	//pageContext.getAttribute方法
	out.println(pageContext.getAttribute("username"));
	/*//pageContext.forward方法
	pageContext.forward("pageContext2.jsp");*/
%>
<html>
<head>
	<title>pageContext内置对象</title>
</head>
<body>
	<a href="pageContext2.jsp">NEXT--></a>
</body>
</html>
