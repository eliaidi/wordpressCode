<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/6
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Date,java.util.Enumeration" %>
<html>
<head>
	<title>application对象</title>
</head>
<body>
<%--通过include指令把appicationCount页面代码引入--%>
<jsp:include page="appicationCount.jsp">
	<jsp:param name="counter_name" value="applicationObject"></jsp:param>
</jsp:include>
<br>从application获得所有属性=
<%
	Enumeration e = application.getAttributeNames();
	while (e.hasMoreElements()) {
		out.println(e.nextElement()+"&nbsp;&nbsp;");
	}
%>
<br>Servlet编译器的版本信息：<%=getServletInfo()%>
</body>
</html>
