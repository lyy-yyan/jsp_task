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
				<h3><a href="indexf.jsp"><������ҳ</a></h3>
				<br><br>
				<table border="2">
					<tr><th>��¼</th></tr>
					<form action="helpLogin" method="post">
						<tr><td style="text-align: right;">�û���:<input type="text" name="name"></td></tr>
						<tr><td style="text-align: right;">����:<input type="password" name="name"></td></tr>
						<tr><td style="text-align: right;">Ȩ������:<input type="password" name="password"></td></tr>
						</table>
						<br><input type="submit" name="g" value="ȷ��">
					</form>
			</center>
		</font>
	</body>
</html>