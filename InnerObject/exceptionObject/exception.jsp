<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/6
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
	<title></title>
</head>
<body>
	返回异常信息的描述:<%=exception.getMessage()%><br>
	关于异常信息的简短描述:<%=exception.toString()%><br>
	显示异常及其栈的轨迹:<%exception.printStackTrace();%><br>
</body>
</html>
