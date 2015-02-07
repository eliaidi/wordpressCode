<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/6
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	//计数器设置
	int count = 0;
	/*counter_name为计数器的名字
	对于不同的页面，使用不同的计数器名字，这样就可以为不同的页面进行计数*/
	String counter_name = request.getParameter("counter_name");
	try {
		//application.getAttribute方法
		count = Integer.parseInt((application.getAttribute(counter_name).toString()));
	} catch (Exception e) {
	}
	out.println("此页面访问了"+count+"次");
	count++;
	//application.setAttribute方法
	application.setAttribute(counter_name,new Integer(count));
	application.setAttribute("username","admin");
	application.setAttribute("password","123456");
%>
<html>
<head>
	<title>application计数</title>
</head>
<body>
</body>
</html>
