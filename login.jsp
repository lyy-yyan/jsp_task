<%@ page contentType="text/html;charset=GB2312" language="java" %>
<%@ page import="mybean.data.Login"%>
<%@ page import="java.sql.*" %>
<%@ page import="mybean.data.Login"%>
<jsp:useBean id="login" class="mybean.data.Login" scope="session"/>
<html>
	<style>
		body{
			background-image:url('images/bg1.jpg'); 
		}
	</style>
	<body>
		<font size="2">
			<center>
				<br><br>
				<h3><a href="indexf.jsp"><返回主页</a></h3>
				<br><br>
				<table border="2">
					<tr><th>登录</th></tr>
					<form action="helpLogin" method="post">
						<tr><td style="text-align: right;">用户名:<input type="text" name="name"></td></tr>
						<tr><td style="text-align: right;">密码:<input type="password" name="name"></td></tr>
						<tr><td style="text-align: right;">权限密码:<input type="password" name="password"></td></tr>
						</table>
						<br><input type="submit" name="g" value="确认">
					</form>
			</center>
		</font>
	</body>
</html>