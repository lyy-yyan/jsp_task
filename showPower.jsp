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
				<br>������Ϣ��<jsp:getProperty name="login" property="backnews"/>
				<br>�û�����<jsp:getProperty name="login" property="name"/>
				<br>Ȩ��״̬��<jsp:getProperty name="login" property="power"/>
			</font>
			<font size="6">
				<br><br><br><a href="indexf.jsp"><������ҳ</a>
			</font>
			<h2>Ȩ��˵��</h2>
			<font size="4">
				<table border="2" style="text-align:center;">
					<tr><td>����Ȩ��</td><td>Ȩ��״̬false</td><td>Ȩ��״̬true</td><td>����ȥ����</td></tr>
					<tr><td>����ͼƬ</td><td>X</td><td>��</td>
						<td>
							<ul class="button-a"><!-- ulΪ�����б��ǩ -->
								<form action="conpages" method="post">
										<input type="hidden" name="num" value=1>
										<input type="hidden" name="myPower" value=<jsp:getProperty name="login" property="power"/>>
										<input type="submit" value="����ͼƬ">
								</form>
							</ul>
						</td>
					</tr>
					<tr><td>��������</td><td>X</td><td>��</td>
						<td>
							<ul class="button-a"><!-- ulΪ�����б��ǩ -->
								<form action="conpages" method="post">
									<input type="hidden" name="num" value=2>
									<input type="hidden" name="myPower" value=<jsp:getProperty name="login" property="power"/>>
									<input type="submit" value="��������">
								</form>
							</ul>
						</td>
					</tr>
					<tr><td>�����û�</td><td>X</td><td>��</td>
						<td>
							<ul class="button-a"><!-- ulΪ�����б��ǩ -->
								<form action="conpages" method="post">
									<input type="hidden" name="num" value=3>
									<input type="hidden" name="myPower" value=<jsp:getProperty name="login" property="power"/>>
									<input type="submit" value="�����û�">
								</form>
							</ul>
						</td>
					</tr>
				</table>
			</font>
		</center>
	</body>
</html>