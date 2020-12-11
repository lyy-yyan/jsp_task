<%@ page contentType="text/html;charset=GB2312" language="java" %>
<%@ page import="mybean.data.Login"%>
<jsp:useBean id="login" class="mybean.data.Login" scope="session"/>
<html>
	<style type="text/css"> 
		body{
			background-image:url('images/bg1.jpg'); 
		}
		.button-a{
			height: 10px;
			width: 80px;
			padding:5px 5px;
			text-align: center;
			font-size: 15px;
			border-radius: 15px;
		}	
	</style> 
	<body>
		<center>
			<font size="4">
				<br>
				<br>反馈信息：<jsp:getProperty name="login" property="backnews"/>
				<br>用户名：<jsp:getProperty name="login" property="name"/>
				<br>权限状态：<jsp:getProperty name="login" property="power"/>
			</font>
			<font size="6">
				<br><br><br><a href="indexf.jsp"><返回主页</a>
			</font>
			<h2>权限说明</h2>
			<font size="4">
				<table border="2" style="text-align:center;">
					<tr><td>管理权力</td><td>权限状态false</td><td>权限状态true</td><td>现在去操作</td></tr>
					<tr><td>更新图片</td><td>X</td><td>√</td>
						<td>
							<ul class="button-a"><!-- ul为无序列表标签 -->
								<form action="conpages" method="post">
										<input type="hidden" name="num" value=1>
										<input type="hidden" name="myPower" value=<jsp:getProperty name="login" property="power"/>>
										<input type="submit" value="更新图片">
								</form>
							</ul>
						</td>
					</tr>
					<tr><td>管理新闻</td><td>X</td><td>√</td>
						<td>
							<ul class="button-a"><!-- ul为无序列表标签 -->
								<form action="conpages" method="post">
									<input type="hidden" name="num" value=2>
									<input type="hidden" name="myPower" value=<jsp:getProperty name="login" property="power"/>>
									<input type="submit" value="管理新闻">
								</form>
							</ul>
						</td>
					</tr>
					<tr><td>管理用户</td><td>X</td><td>√</td>
						<td>
							<ul class="button-a"><!-- ul为无序列表标签 -->
								<form action="conpages" method="post">
									<input type="hidden" name="num" value=3>
									<input type="hidden" name="myPower" value=<jsp:getProperty name="login" property="power"/>>
									<input type="submit" value="管理用户">
								</form>
							</ul>
						</td>
					</tr>
				</table>
			</font>
		</center>
	</body>
</html>