<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/5
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.Cookie,java.util.*,java.sql.Array,java.io.*" %>
<html>
<head>
	<title>response内置对象</title>
</head>
<body>
	缓冲区大小=<%=response.getBufferSize()%><br>
	<%--错误=<%response.sendError(404);%><br>--%>
	响应的编码类型=<%=response.getCharacterEncoding()%><br>
<%
	response.setContentType("text/html;charset=utf-8");//设置响应的MIME类型

	/*response生成的输出流优先级高于内置对象out，先进行打印输出*/
	PrintWriter outer = response.getWriter();//获得输出流
	outer.println("response生成的输出流<br>");

	/*使用了一个Cookie，每次访问此页面时，就通过requset对象把客户端的所有Cookie获取过来*/
	Cookie[] cookies = request.getCookies();
	Cookie cookie_response = null;
	List list = Arrays.asList(cookies);
	Iterator it = list.iterator();
	while (it.hasNext()) {
		Cookie temp = (Cookie)it.next();
		if(temp.getName().equals("_access_time")); {
			cookie_response = temp;
			break;
		}
	}
	if(cookie_response != null) {
		outer.println("访问时间="+cookie_response.getValue()+"<br>");
		cookie_response.setValue(new Date().toString());
	} else {
		cookie_response = new Cookie("_access_time",new java.util.Date().toString());
	}
	response.addCookie(cookie_response);
	response.flushBuffer();
%>
</body>
</html>
