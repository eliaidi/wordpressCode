<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/5
  Time: 0:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>out内置对象</title>
</head>
<body>
	println方法：<%out.println("打印输出");%><br>
	getBufferSize方法：缓冲区大小=<%=out.getBufferSize()%><br>
	getRemaining方法：缓冲区剩余大小=<%=out.getRemaining()%><br>
	isAutoFlush方法：是否自动清除缓冲区：<%=out.isAutoFlush()%><br>
	clear方法：<%out.close();%><br>
	<%--
	clearBuffer方法：<%out.clearBuffer();%><br>
	flush方法：<%out.flush();%><br>
	close方法：<%out.close();%><br>
	--%>
</body>
</html>
