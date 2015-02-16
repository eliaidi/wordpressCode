<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/16
  Time: 22:28
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
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String hobby = request.getParameter("hobby");
%>
	<table border="1">
		<tr>
			<td>姓名：<%=name%></td>
		</tr>
		<tr>
			<td>年龄：<%=age%></td>
		</tr>
		<%
			if(hobby == null) {
				hobby = "无";
			}
		%>
		<tr>
			<td>爱好：<%=hobby%></td>
		</tr>
	</table>
</body>
</html>
