<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/5
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>request内置对象</title>
</head>
<body>
	<%
		/*解决中文乱码问题，但不能解决用URL传递中文的乱码*/
		request.setCharacterEncoding("utf-8");
		/*调用setAttribute方法*/
		request.setAttribute("password","123456789");
	%>
	用户名：<%=request.getParameter("username")%><br>
	兴趣：
	<%
		if(request.getParameterValues("favorite") != null) {
			String[] favorites = request.getParameterValues("favorite");
			for(int i=0;i<favorites.length;i++) {
				out.println(favorites[i]+"&nbsp;&nbsp;");
			}
		}
	%><br>
	服务器版本号：<%=request.getProtocol()%><br>
	服务器名字：<%=request.getServerName()%><br>
	客户端请求的文件路径：<%=request.getServletPath()%><br>
	服务器端口号：<%=request.getServerPort()%><br>
	请求长度：<%=request.getContentLength()%><br>
	请求中编码方式：<%=request.getCharacterEncoding()%><br>
	请求中网络接口的IP：<%=request.getLocalAddr()%><br>
	请求中的主机名：<%=request.getLocalName()%><br>
	获取指定属性：<%=request.getAttribute("password")%><br>
</body>
</html>
