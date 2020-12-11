<%@ page contentType="text/html;charset=gb2312"%>
<html><head>
<style>
a{text-decoration:none}
a:hover{text-decoration:none}
</style>
</head>
<body>
<div style="float:left;">
<table width=200 height=500 bgcolor=#C6E2FF>
<tr><td bgcolor=#fbeffb height=70><center>管理模式</center></td></tr>
<tr><td>
<ul class="treeview-menu" >
<li  class="active" >
 <a href="4_1.jsp" target="menuFrame">
<i class="fa fa-circle-o"></i><h4><font color=#6A5ACD>实验室管理体制</font></h4></a>
</li>
<li>
 <a href="4_2.jsp" target="menuFrame">
<i class="fa fa-circle-o"></i><h4><font color=#6A5ACD>仪器设备管理</font></h4></a>
</li>
</ul>
</td></tr></table>
</div>
<section class="content">
   <iframe scrolling="yes" frameborder="2"
style="width:850px;height:1000px;overflow:visible;background:#F0F8FF;margin-left:10px;align:top;border-style:dashed;border-color:#FAF0E6;"
name="menuFrame" src="4_1.jsp">
</iframe>
</section>
</body></html>
