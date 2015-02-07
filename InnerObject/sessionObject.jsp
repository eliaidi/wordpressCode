<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/5
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.SimpleDateFormat,java.sql.Date,java.util.Enumeration" %>
<html>
<head>
	<title></title>
</head>
<body>
<%
	//格式化日期
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
	Date date = new Date(session.getCreationTime());
	session.setAttribute("username","admin");
	session.setAttribute("password","123456");
	//设置当前session的生命为10秒钟
	session.setMaxInactiveInterval(10);
%>
	session创建的时间=<%=sdf.format(date)%><br>
	session的ID=<%=session.getId()%><br>
	从session中获取=<%=session.getAttribute("username")%><br>
	从session获得所有属性=
<%
	Enumeration e = session.getAttributeNames();
	while (e.hasMoreElements()) {
		out.println(e.nextElement()+"&nbsp;&nbsp;");
	}
	/*session.invalidate();*/
%><br>
</body>
</html>
