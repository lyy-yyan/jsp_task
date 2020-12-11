<%@ page contentType="text/html;charset=GB2312" language="java" %>
<head>
	<link rel="icon" href="images/logo.jpg" type="image/x-icon"/>
    <title>计信院实验教学中心</title>
    <style type="text/css">
        <!--
        * {
            margin: 0; padding:0
        }
        body {
            margin-top: 10px;
            margin-right: 10%;
            margin-bottom: 10px;
            margin-left: 10%;
            text-align: center;
            height: 100%;
            width: 100%;
             background: url("images/bg1.jpg");
            font-size: 12px;
            color: #000000;
            background-size:cover;
        }
        #container {
            text-align: left;
            width: 1120px;
            height: auto;
            padding: 20px;
        }
        #container #firstTitle {
            height: 50px;
			padding-bottom: 20px;
        }
			#container #firstTitle img{
			display: block;
			float: left;
		}
        #container #firstTitle ul {
            color: #000000;
			font-size: 45px;
        }
			#container #login{
			display: block;
			float: right;
			width: 100px;
			height: 30px;
			background: #FFFFFF;
			border-radius: 15px;
		}
			#container #login h2{
			color: white;
			text-align: center;
			padding: 3px;
		}
        #container #title {
            height: 28px;
				font-size: 15px;
        }
        #container #title li {
            float: left;
            list-style-type: none;
            height: 28px;
            line-height: 28px;
            text-align: center;
            margin-right: 1px;
        }
        #container #title ul {
            height: 28px;
        }
        #container #title a {
            text-decoration: none;
            color: #000000;
            display: block;
            width: auto;
        }
        #container #title a span{
            display: block;
            padding: 0 15px 0 15px;
        }
        #container #title #tag1 a:hover {
            text-decoration: none;
            display: block;
            width: auto;
        }
        #container #title #tag1 a:hover span{
            display: block;
            background-color: dodgerblue;
            padding: 0 15px 0 15px;
        }
        #container #title #tag2 a:hover {
            text-decoration: none;
            display: block;
            width: auto;
        }
        #container #title #tag2 a:hover span{
            background-color: dodgerblue;
            display: block;
            padding: 0 15px 0 15px;
        }
        #container #title #tag3 a:hover {
            text-decoration: none;
            display: block;
            width: auto;
        }
        #container #title #tag3 a:hover span{
            background-color: dodgerblue;
            display: block;
            padding: 0 15px 0 15px;
        }
        #container #title #tag4 a:hover {
            text-decoration: none;
            display: block;
            width: auto;
        }
        #container #title #tag4 a:hover span{
            background-color: dodgerblue;
            display: block;
            padding: 0 15px 0 15px;
        }
        #container #title #tag5 a:hover {
            text-decoration: none;
            display: block;
            width: auto;
        }
        #container #title #tag5 a:hover span{
            background-color: dodgerblue;
            display: block;
            padding: 0 15px 0 15px;
        }
			#container #title #tag6 a:hover {
            text-decoration: none;
            display: block;
            width: auto;
        }
        #container #title #tag6 a:hover span{
            background-color: dodgerblue;
            display: block;
            padding: 0 15px 0 15px;
        }
			#container #title #tag7 a:hover {
            text-decoration: none;
            display: block;
            width: auto;
        }
        #container #title #tag7 a:hover span{
            background-color: dodgerblue;
            display: block;
            padding: 0 15px 0 15px;
        }
        #container #title .selectli1 {
            text-decoration: none;
            color: #002AF9;
            display: block;
            width: auto;
        }
        #container #title a .selectspan1 {
            display: block;
            padding: 0 15px 0 15px;
        }
        #container #title .selectli2 {
            text-decoration: none;
            color: #002AF9;
            display: block;
            width: auto;
        }
        #container #title a .selectspan2 {
            display: block;
            padding: 0 15px 0 15px;
        }
        #container #title .selectli3 {
            text-decoration: none;
            color: #002AF9;
            display: block;
            width: auto;
        }
        #container #title a .selectspan3 {
            display: block;
            padding: 0 15px 0 15px;
        }
        #container #title .selectli4 {
            text-decoration: none;
            color: #002AF9;
            display: block;
            width: auto;
        }
        #container #title a .selectspan4 {
            display: block;
            padding: 0 15px 0 15px;
        }
        #container #title .selectli5 {
            text-decoration: none;
            color: #002AF9;
            display: block;
            width: auto;
        }
        #container #title a .selectspan5 {
            display: block;
            padding: 0 15px 0 15px;
        }
			#container #title .selectli6 {
            text-decoration: none;
            color: #002AF9;
            display: block;
            width: auto;
        }
        #container #title a .selectspan6 {
            display: block;
            padding: 0 15px 0 15px;
        }
			#container #title .selectli7 {
            text-decoration: none;
            color: #002AF9;
            display: block;
            width: auto;
        }
        #container #title a .selectspan7 {
            display: block;
            padding: 0 15px 0 15px;
        }
        #container #content ul {margin: 10px;}
        #container #content li {margin: 5px; }
        #container #content li img {margin: 5px;display:block;}
        #container #content {
			width: 1100px;
            height: auto;
            padding: 10px;
        }
        .content1 {
            border-top-width: 3px;
            border-right-width: 1px;
            border-bottom-width: 1px;
            border-left-width: 1px;
            border-top-style: solid;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-top-color:#3A81C8;
            border-right-color: #3A81C8;
            border-bottom-color: #3A81C8;
            border-left-color: ##3A81C8;
            background-color: #F8F8FF;
        }
        .content2 {
            border-top-width: 3px;
            border-right-width: 1px;
            border-bottom-width: 1px;
            border-left-width: 1px;
            border-top-style: solid;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-top-color: #3A81C8;
            border-right-color: #3A81C8;
            border-bottom-color: #3A81C8;
            border-left-color: #3A81C8;
            background-color: #F8F8FF;
        }
        .content3 {
            border-top-width: 3px;
            border-right-width: 1px;
            border-bottom-width: 1px;
            border-left-width: 1px;
            border-top-style: solid;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-top-color: #3A81C8;
            border-right-color: #3A81C8;
            border-bottom-color: #3A81C8;
            border-left-color: #3A81C8;
            background-color:#F8F8FF;
        }
        .content4 {
            border-top-width: 3px;
            border-right-width: 1px;
            border-bottom-width: 1px;
            border-left-width: 1px;
            border-top-style: solid;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-top-color:#3A81C8;
            border-right-color:#3A81C8;
            border-bottom-color:#3A81C8;
            border-left-color: #3A81C8;
            background-color:#F8F8FF;
        }
        .content5 {
            border-top-width: 3px;
            border-right-width: 1px;
            border-bottom-width: 1px;
            border-left-width: 1px;
            border-top-style: solid;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-top-color: #3A81C8;
            border-right-color: #3A81C8;
            border-bottom-color: #3A81C8;
            border-left-color: #3A81C8;
            background-color: #F8F8FF;
        }
			.content6 {
            border-top-width: 3px;
            border-right-width: 1px;
            border-bottom-width: 1px;
            border-left-width: 1px;
            border-top-style: solid;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-top-color: #3A81C8;
            border-right-color: #3A81C8;
            border-bottom-color: #3A81C8;
            border-left-color: #3A81C8;
            background-color: #F8F8FF;
        }
        .content7 {
            border-top-width: 3px;
            border-right-width: 1px;
            border-bottom-width: 1px;
            border-left-width: 1px;
            border-top-style: solid;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-top-color: #3A81C8;
            border-right-color: #3A81C8;
            border-bottom-color: #3A81C8;
            border-left-color: #3A81C8;
            background-color: #F8F8FF;
        }
        .hidecontent {display:none;}
        -->
    </style>
    <script language="javascript">
        function switchTag(tag,content)
        {
//    alert(tag);
//    alert(content);
            for(i=1; i < 8; i++)
            {
                if ("tag"+i==tag)
                {
                    document.getElementById(tag).getElementsByTagName("a")[0].className="selectli"+i;
                    document.getElementById(tag).getElementsByTagName("a")[0].getElementsByTagName("span")
                        [0].className="selectspan"+i;
                }else{
                    document.getElementById("tag"+i).getElementsByTagName("a")[0].className="";
                    document.getElementById("tag"+i).getElementsByTagName("a")[0].getElementsByTagName("span")
                        [0].className="";
                }
                if ("content"+i==content)
                {
                    document.getElementById(content).className="";
                }else{
                    document.getElementById("content"+i).className="hidecontent";
                }
                document.getElementById("content").className=content;
            }
        }
    </script>
</head>
<body>
<center>
<div id="container">
	<div id="firstTitle">
		<img src="images/headloge.png" width="100" height="100">
        <ul>
			计算机科学与技术实验教学中心
        </ul>
		<div id="login">
			<h2><a href="login.jsp">登录</a></h2>
		</div>
		<div id="login">
			<h2><a href="showPower.jsp">管理模式</a></h2>
		</div>
    </div>
    <div id="title">
        <ul>
            <li id="tag1"><a href="#" onclick="switchTag('tag1','content1');this.blur();" class="selectli1"><span
                    class="selectspan1">首页</span></a></li>
            <li id="tag2"><a href="#" onclick="switchTag('tag2','content2');this.blur();" class="selectli2"><span>中心概况</span></a></li>
            <li id="tag3"><a href="#" onclick="switchTag('tag3','content3');this.blur();" class="selectli3"><span>实验教学</span></a></li>
            <li id="tag4"><a href="#" onclick="switchTag('tag4','content4');this.blur();" class="selectli4"><span>实验队伍</span></a></li>
            <li id="tag5"><a href="#" onclick="switchTag('tag5','content5');this.blur();" class="selectli5"><span>管理模式</span></a></li>
            <li id="tag6"><a href="#" onclick="switchTag('tag6','content6');this.blur();" class="selectli6"><span>设备与环境</span></a></li>
            <li id="tag7"><a href="#" onclick="switchTag('tag7','content7');this.blur();" class="selectli7"><span>成果展示</span></a></li>
        </ul>
    </div>
    <div id="content" class="content1">
		
        <div id="content1" >
			<!--首页新闻-->
			<jsp:include page="news.jsp" />
		</div>
		
        <div id="content2" class="hidecontent" align="center">
			<!--中心概况-->
			<jsp:include page="ok2.jsp" />
		</div>
		
        <div id="content3" class="hidecontent">
			<!--实验教学-->
			<jsp:include page="ok1.jsp" />
		</div>
		
        <div id="content4" class="hidecontent">
			<!--实验队伍-->
        	<jsp:include page="ok3.jsp" />
		</div>
		
        <div id="content5" class="hidecontent">
			<!--管理模式-->
			 <jsp:include page="ok4.jsp" />
		</div>
		
		<div id="content6" class="hidecontent">
			<!--设备与环境-->
             <jsp:include page="ok5.jsp" />
		</div>
		
        <div id="content7" class="hidecontent">
			<!--成果展示-->
			 <jsp:include page="ok6.jsp" />
		</div>
		
    </div>
</div>
</center>
</body>
</html>