<%--
  Created by IntelliJ IDEA.
  User: wxm-Imperio
  Date: 2015/2/5
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>requestForm</title>
</head>
<body>
	<form name="requsetFrom" action="requestObject.jsp" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
			<td>兴趣：</td>
				<td>
					<input type="checkbox" name="favorite" value="basketball">篮球
					<input type="checkbox" name="favorite" value="music">音乐
					<input type="checkbox" name="favorite" value="football">足球
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
			</tr>
		</table>
	</form>
</body>
</html>
