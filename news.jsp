<%@ page contentType="text/html;charset=GB2312" language="java" %>
<%@ page import="mybean.data.Login"%>
<%@ page import="java.sql.*" %>
<%@ page import="mybean.data.Login"%>
<jsp:useBean id="login" class="mybean.data.Login" scope="session"/>
<html>
	<head>
		<style type="text/css">
	/* ��ȫ����ǩ������г�ʼ������ */	
			*::selection
			{/*�����ȫ�����κα�ǩ���ʱ�������б�����ɫ����ΪĬ�ϵı�ǩ�����е����ж�ε������ʱ����ֱ���ɫ*/
				background: none;
			}
			body,ul,li
			{
				margin: 0px;
				padding: 0px;/*�����ڱ߾�Ϊ0*/
				list-style: none;/*���ñ�ǩ�����е�����Ĭ������Ϊ��*/
			}/*��ҳ���ǩ�����б�ǩ�����е�����߾඼����Ϊ0��Ĭ���������������߾��.margin:�߾�*/
	/*ȫ����ǩ�����ʼ�����*/


	/*�Ժ��ӵ���ʽ�������ò���*/		
			#box
			{
				width: 1000px;
				height: 652px;
				position:relative;/*�Ե�ǰ��div��ǩ���������Զ�λ����*/ 
				margin: 10px auto;/*����box��ǩ������ϱ߾�Ϊ100���أ�����Ϊ�Զ����в���*/
				overflow:hidden;/*overflow��ָ����ǩ�����е����ݳ����߿�ķ�Χ֮ʱ�ͻ�Գ����������ֵ����ݽ������ز���*/
			}
	/*���ӵ���ʽ�������*/	
			#box img{
				width: 960px;
				height: 590px;
			}

	/*��ͼƬ���ڵ������б�li��ǩ���������ʽ���ò���*/	
		.img-li
		{/*�������б��ǩ��������ʽ�������ò���*/
			width: 100%;/*�������б��ǩ���е����ݵĿ�߶�����Ϊ100%����box���еĳ������໥�Ǻϵ�*/
			height: 100%;	
			position:absolute;/*�������ǩ�����е�Ԫ�ؽ��о��Զ�λʹ�����е�ͼƬ�����ӵ���һ���̶���λ����ȥ��*/
		/*�����е�ͼƬ������Ϊ͸����*/	
			opacity: 0;/*opacity ��������Ԫ�صĲ�͸������,����Ϊ0-1֮��,��ʱli��ǩ�����е�ͼƬ��Ϊ͸���Ĳ��������ʾ*/
			transition:2s;/*��������ÿһ��ͼƬ�໥֮��Ľ���ʱ����л�����ǰÿ����ҳ��֮���ʱ����л�����Ϊ3��*/ */
		}
	/*��ͼƬ���ڵ������б�li��ǩ�����е���ʽ�������*/	



	/*��img-li��ǩ����ĵ�һ���ӽڵ���ǩ����ʼ������ʽ����*/
		.img-li:FIRST-CHILD 
		{/*�������б���еĵ�һ���ӽڵ�����е�ͼƬ����������Ϊ��͸����*/
			opacity:1;
		}
	/*��img-li��ǩ����ĵ�һ���ӽڵ���ǩ���������ʽ����*/	



	/*��ͼƬ���е������л�ͼƬ�İ�ť��ʼ��ʽ����*/
		.img-button
		{/*��button�൱�е���ʽ��ʽ���ݽ������ò���*/
			width: 30px;
			height: 30px;
			background: rgba(0,0,0,0.7);/*����button��ʽ�൱�еı�����ɫ*/
			color: #fff;
			position: absolute;/*����button��ʽ���͵��е�λ��Ϊ���Զ�λ����*/
			top:320px;/*���õ�ǰ�İ�ť�����Ӷ���������Ϊ135*/
			text-align: center;/*����button��ʽ�൱�е������λ��Ϊ���м�*/
			line-height: 30px;/*�����иߣ������뵱ǰ��ʽ�򶥲�������*/
			cursor: pointer;/*cursor(���)*,��������ƶ�����������button��ʽ�ı�ǩ������֮�󽫻��Ϊ���εĹ��*/
		}
	/*��ͼƬ���е������л�ͼƬ�İ�ť������ʽ����*/


	/*��ͼƬ�ұߵİ�ť������ʽ������*/
		#next
		{
			right: 0px;/*����next��ǩ������뵱ǰ���ӵ��ұ߾���Ϊ0����*/
		}
	/*��ͼƬ�ұߵİ�ť�����ʽ������*/



	/*������ƶ���img-button��ʱ��ʼ����������ʽ����*/
		.img-button:HOVER 
		{/*��img-button��ʽ���е�������ʽ�������ò�������������ƶ���������button��ʽ��ı�ǩ����ʱ���ᴥ������ʽ*/
			background:	#9ACD32;/*������ƶ���������button��ʽ�ı�ǩ����ʱ���䱳����ɫ���ᷢ���仯*/
		}
	/*������ƶ���img-button��ʱ��������ʽ���ý���*/


	/*���������ͼƬ��ť�¼�ʱ�����е���ʽ����*/
		.img-button:ACTIVE 
		{/*����img-button��ʽ�����еĻ�仯�������������¼�����ʱ�����ᴥ����ǰ��active��¼�������б�����ɫ�ı仯*/
			background:#40E0D0;
		}
	/*-----------------��ǰ��ʽ�������--------------------*/	

	/*��СԲ�㰴ť�����е�ul��ǩ���������ʽ������*/
	.button-ul
			{/*����ul�����б��ǩ����ĸ߶ȺͿ��,�Լ�ul��ǩ�����еı�����ɫ*/
				height: 22px;
				width: 100px;
				/*ul��ǩ�����н��д�����ݵ�������ȻΪһ�������β���border����ֵ���Խ�֮�޸�Ϊһ��Բ�Ǿ���*/
				/*background: #000;*/
				background-color: rgba(0,0,0,0.8);/*��ul��ǩ����ı�����ɫ�������ò�����ǰ��������Ϊrgb����Ӧ����ɫ�������һ��0.5�����������õ�ǰ��ɫ��͸����*/
				padding:5px 25px;/*��ul��ǩ��������ڱ߾�����ò���������������Ϊ5px������Ϊ25px*/
				border-radius: 15px;/*����Բ�ǵİ뾶*/
				position: absolute;/*��ul��ǩ��������Ϊ���Զ�λ�ķ�ʽ��Ϊ����ul��ǩ�����ƶ������ӵ�������ʾ��ͼƬ��ָ����λ�õ���ȥ*/
				top: 605px;/*����ul��ǩ���������div��ǩ����Ķ����ľ���Ϊ240����*/
				left: 420px;/*����ں�����ߵľ���Ϊ220����*/
			}
	/*------------------��ǰ��ʽ�������------------------------------*/


	/*�԰�ť�����б�����е�li�ӱ�ǩ�����е���ʽ�������ò���*/
	.button-ul li
			{/*Ϊli��ǩ������г���ͱ߽���ɫ�������ã�ע���ʱ���ĸ�li��ǩ��������ֱ�����Խ������еģ�Ҫ��ʹ�õ�ǰ���ĸ���ǩ�������Ϊˮƽ״̬�������в�����Ҫ��֮����Ϊfloat�����͵�*/
				width: 10px;
				height: 10px;
				/*ע��ʱ��li��ǩ���н���������ӵ�����Ϊһ��10*10������������*/
				border: 2px solid #fff;
				float: left;
				color: #fff;/*����ul��ǩ�����е�������ɫΪ��ɫ*/
				list-style-type: none;/*����ȥ��li��ǩ������Сʵ��Բ����ʽ*/
				margin-right: 5px;/*����li��ǩ�����ҷ�����߾�Ϊ3����*/
				border-radius: 5px;/*���б߿�뾶�����ò���������ǰli��ǩ�����н��������������������������Ϊһ���뾶Ϊ5��Բ������,����li��ǩ�����������������ı߿�����ΪԲ������*/  
				cursor: pointer;/*cursor(���)*,��������ƶ�����������button��ʽ�ı�ǩ������֮�󽫻��Ϊ���εĹ��*/
			}
	/*---------------------��ǰ��ʽ�������-------------------------------*/		


	/*��Բ�㰴ť�������������ʽ���ã���������ƶ���Բ�㰴ť��ʱ����������ʽ�¼�*/
	.button-li:HOVER 
		{/*��img-button��ʽ���е�������ʽ�������ò�������������ƶ���������button��ʽ��ı�ǩ����ʱ���ᴥ������ʽ*/
			background:	#fff;/*������ƶ���������button��ʽ�ı�ǩ����ʱ���䱳����ɫ���ᷢ���仯*/
		}
	.button-a{
		height: 22px;
		width: 80px;
		padding:5px 5px;
		position: absolute;
		text-align: center;
		font-size: 15px;
		top: 605px;
		left: 880px;
		border-radius: 15px;
	}	
	#news{
		width: 1000px;
		margin: 5px 50px 0px 50px;
	}
	#news p{
		width: 1000px;
		font-size: 15px;
		margin: 5px 0px;
	}
	#edit{
		text-align: right;
	}
	/*---------------------��ǰ��ʽ�������--------------------------------*/	
	

		</style>
	</head>
	<body>
		<!--����һ��div��ǩ��ʹ��ID���Ա�ǩ�����Ψһ��ʾ����-->
		<div id="box">
			<ul>
			<%
				Connection con;
			   Statement sql;
				ResultSet rs;
				try{
					Class.forName("com.mysql.jdbc.Driver");
			   }
			   catch(Exception e){}
			   try{
					//String uri = "jdbc:mysql://127.0.0.1/lab";
					String uri="jdbc:mysql://localhost:3306/lab?useUnicode=true&characterEncoding=gb2312&serverTimezone=GMT%2B8&useSSL=false";
					String user = "root";
					String password = "12345678";
					con = DriverManager.getConnection(uri,user,password);
					sql = con.createStatement();
					rs = sql.executeQuery("SELECT * FROM picnews");
					while(rs.next()){
			   			out.print("<li class=\"img-li\"><img src=\""+rs.getString(2)+"\"></li>");
					}
			   }
			   catch(SQLException e){
					out.print("���������ˣ�");
					out.print(e);
			   }
			%>
			</ul>
	<!--�ڵ�ǰdiv����Ƕ������div����ΪͼƬ�л��İ�ť-->		
			<div id="previous" class="img-button"><</div>
			<div id="next" class="img-button">></div>
	<!--div����ģ�͵��н���������ť��ǩ������ͼƬ���л�����-->	

	<!-- �����ֲ�ͼ��ť����ʼ -->
			<ul class="button-ul"><!-- ulΪ�����б��ǩ -->
				<li class="button-li" id="one"></li>
				<li class="button-li" id="two"></li>
				<li class="button-li" id="three"></li>
				<li class="button-li" id="four"></li>
			</ul>
			<ul class="button-a"><!-- ulΪ�����б��ǩ -->
				<form action="conpages" method="post">
					<input type="hidden" name="num" value=1>
					<input type="hidden" name="myPower" value=<jsp:getProperty name="login" property="power"/>>
					<input type="submit" value="����ͼƬ">
				</form>
			</ul>
	<!-- �����ֲ�ͼ��ť������� -->		
	</div>
	<div id="news">
		<h1>ʵ����Ҫ��</h1>
		<div id="edit">
			<form action="conpages" method="post">
				<input type="hidden" name="num" value=2>
				<input type="hidden" name="myPower" value=<jsp:getProperty name="login" property="power"/>>
				<input type="submit" value="�༭">
			</form>
		</div>
		<%
		   try{
		   		String uri="jdbc:mysql://localhost:3306/lab?useUnicode=true&characterEncoding=gb2312&serverTimezone=GMT%2B8&useSSL=false";
		   		String user = "root";
		   		String password = "12345678";
		   		con = DriverManager.getConnection(uri,user,password);
		   		sql = con.createStatement();
		   		rs = sql.executeQuery("SELECT * FROM textnews");
		   		rs.last();
		   		out.print("<p>----------------------------------------------------------------------------------------------------------------------------------------------------------</p>");
		  		 out.print("<font size=3>");
				do{
					out.print("<a href=\""+rs.getString(4)+"\" style=display:block;text-align:left>");
		  			 out.print(rs.getString(2));
		   			out.print("</a>");
		   			out.print("<span style=display:block;text-align:right>");
		  			 out.print(rs.getString(3));
		   			out.print("</span>");
		  			 out.print("<p>----------------------------------------------------------------------------------------------------------------------------------------------------------</p>");
				}while(rs.previous());
		   	out.print("</font>");
		   		con.close();
		   }
		   catch(SQLException e){
		   		out.print("���������ˣ�");
		   		out.print(e);
		   }
		%>
	</div>
<!--
		while(rs.previous()){
					out.print("<br><a href="" style="display:block;text-align:left">"+rs.getString(1)+"</a>");
		   			out.print("<br><a href="" style="display:block;text-align:right">"+rs.getString(2)+"</a>");
				}
-->
	<script type="text/javascript">
		var imgli=document.getElementsByClassName("img-li");/*��ͼƬ���ڵ�li�����б��ǩ������л�ȡ����*/
		/*��ͼƬ���н���ͼƬ�л���������ť������л�ȡ����*/
		var next=document.getElementById("next");
		var previous=document.getElementById("previous");
		var img_index=0;/*����һ����������,���ڼ�¼��ǰ����ʾ��ͼƬ��������*/
		/*�����¾�����ָ������������ڷֱ��¼��ǰ����ʾ��ͼƬ�������һ����Ҫ������ʾ��ͼƬ����*/
		var oldLi=imgli[0];/*ҳ��һ��ʼ����ʾ��ͼƬΪ����ֵΪ0��ͼƬ*/
		var newLi;/*����һ���µı�ǩ�����б�*/
		var img_timer;/*���ڶ�ͼƬ�����Զ�����ʱ�ļ�ʱ������Ψһ��ʾ*/
		var box= document.getElementById("box");/*��ȡ�������Ӷ���*/


	/*��ͼƬ�·����ĸ�СԲ�㰴ť������л�ȡ����*/	
		var one=document.getElementById("one");
		var two=document.getElementById("two");
		var three=document.getElementById("three");
		var four=document.getElementById("four");
		/*next.onclick��ָ�����next��ǩ�����е�Ԫ��ʱ���ᴥ�����¼�����*/
		next.onclick=function nextClick()
		{
			img_index++;
			if(img_index==imgli.length)
				img_index=0;
			oldLi.style.opacity=0;
			newLi=imgli[img_index];
			newLi.style.opacity=1;
			oldLi=newLi;
		}
		previous.onclick=function previousClick()
		{
			img_index--;
			if(img_index<0)
				img_index=imgli.length-1;
			oldLi.style.opacity=0;
			newLi=imgli[img_index];
			newLi.style.opacity=1;
			oldLi=newLi;
		}

	/*����һ�����ź�����ʵ�ֶ�imgli��ǩ�����е�ͼƬ���Զ����Ų���*/	
		function play() 
		{/* setInterval() �����ظ�����һ��������ִ��һ������Σ���ÿ�ε���֮����й̶���ʱ���ӳ١��÷����᷵��һ
	��Ψһ��ʾ��ǰ��ʱ��������IDֵ*/
			timer= window.setInterval(
				function ()
				{
					next.onclick()
				}
				,5000)
		}
		play();

		/*����ֹͣͼƬ���Զ����Ų���*/	
		function stop() {
			clearInterval(timer);/*���ݼ�ʱ����IDֵ�����ָ���ļ�ʱ������ʹ�õ�ǰ��ͼƬֹͣ�Զ����Ų���*/
		}
		box.onmouseover= stop;/*������ƶ������ӵ��Ϸ���ʱ�򽫻�����¼��Ĵ���Ȼ�����stop������ִ���Զ����ŵ�
	ֹͣ����*/
		box.onmouseout = play;/*������Ƴ����Ӷ����ʱ�򽫻����µĵ���play�������ٴν���ͼƬ���ֲ�����*/

		/*���������һ��СԲ��������ڱ�ǩʱ�����ᴥ���÷�����Ȼ��ı���ӵ��ж�ӦͼƬ��͸����*/
		one.onclick=function oneClick()
		{
			oldLi.style.opacity=0;
			newLi=imgli[0];
			newLi.style.opacity=1;
			oldLi=newLi;
		}
		one.onmouseover=one.onclick;
		/*����ڶ���СԲ��ʱ�����ķ���*/
		two.onclick=function twoClick()
		{
			oldLi.style.opacity=0;
			newLi=imgli[1];
			newLi.style.opacity=1;
			oldLi=newLi;
		}
		two.onmouseover=two.onclick;

		/*���������СԲ�㴥������������ͼƬ����ʾ*/
		three.onclick=function threeClick()
		{
			oldLi.style.opacity=0;
			newLi=imgli[2];
			newLi.style.opacity=1;
			oldLi=newLi;
		}
		three.onmouseover=three.onclick;

		/*������ĸ�СԲ�������ж�Ӧ�¼��Ĵ�������*/
		four.onclick=function fourClick()
		{
			oldLi.style.opacity=0;
			newLi=imgli[3];
			newLi.style.opacity=1;
			oldLi=newLi;
		}
		four.onmouseover=four.onclick;
	/*-------------------------------����ѭ���ķ�ʽ������ͼƬ���л�����-----------------------------------------*/	
		/*next.onclick��ָ�����next��ǩ�����е�Ԫ��ʱ���ᴥ�����¼�����*/
	/* 	next.onclick=function nextClick()
		{
			img_index++;
			if(img_index==imgli.length)
				img_index=0;
			 for(var i=0;i<imgli.length;i++)
			{//�������б�����е�ȫ�����ݵ�͸��������0������͸����
				imgli[i].style.opacity=0;	
			}	
		/*����ǰҪ������ʾ����������Ϊ��͸����*/	
	/* 		imgli[img_index].style.opacity=1; 
		}  */
	/* 	previous.onclick=function previousClick()
		{	
	/* ��forѭ�����н�li�б�����е�ȫ����li�����͸��������Ϊ0��Ȼ��ѡ��ǰ��Ҫѡ�е�li���󣬽���͸��������Ϊ1�����ַ�ʽ��������վ����ӦЧ�������ԶԵ�ǰ����ν�
	 *���Ż���������������li�б����ÿ�ε����ť�¼���ʹ�þɵ�li��ť����͸���ȱ�Ϊ0���µİ�ť��͸���ȱ�Ϊ1�������Ͳ��ö�li�б�����е�ÿһ��li��͸���ȶ�����Ϊ
	 *0�������˶�li�б����ı����ĸ��������������ӦЧ��*/
	/* 		img_index--;
			if(img_index<0)
				img_index=imgli.length-1;
			for(var i=0;i<imgli.length;i++)
			{
				imgli[i].style.opacity=0;	
			}
			imgli[img_index].style.opacity=1;	
		}  */
	/*----------------------------����ѭ���ķ�ʽ����ͼƬ�����л��Ĳ�������----------------------------------*/	


	</script>
	</body>
</html>