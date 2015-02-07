<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/6
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title></title>
</head>
<body>
	当前页面的hash码：<%=page.hashCode()%><br>
	当前页面的字符串描述:<%=page.toString()%><br>
	page和this的比较：<%=page.equals(this)%><br>
</body>
</html>
