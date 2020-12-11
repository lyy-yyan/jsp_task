<%@ page contentType="text/html; charset=gb2312" %>  
<%@ page import="java.io.*"%>  
<%@ page import="java.util.*"%>  
<%@ page import="javax.servlet.*"%>  
<%@ page import="javax.servlet.http.*"%>  
<html>
	<style>
		body{
			background-image:url('images/bg1.jpg'); 
		}
	</style>
<title>上传文件状态 </title> 
<body> 
<%! String rootPath;  String fileName,textName; %> 
<%  
//定义上载文件的最大字节  
int MAX_SIZE = 102400 * 102400;  
// 创建根路径的保存变量  
//String rootPath;  
//声明文件读入类  
DataInputStream in = null;  
FileOutputStream fileOut = null;  
//取得客户端的网络地址  
String remoteAddr = request.getRemoteAddr();  
//获得服务器的名字  
String serverName = request.getServerName();  
//取得互联网程序的绝对地址  
String realPath = request.getSession().getServletContext().getRealPath("/");
//创建文件的保存目录  
rootPath = realPath +"\\images\\";
//rootPath="WebContent"+"\\images\\";
//取得客户端上传的数据类型  
String contentType = request.getContentType();  
try{  
if(contentType.indexOf("multipart/form-data") >= 0){  
//读入上传的数据  
in = new DataInputStream(request.getInputStream());  
int formDataLength = request.getContentLength();  
if(formDataLength > MAX_SIZE){  
out.println("<P>上传文件最大不能超过" + MAX_SIZE + "</p>");  
return;  
}  
//保存上传文件的数据  
byte dataBytes[] = new byte[formDataLength];  
int byteRead = 0;  
int totalBytesRead = 0;  
//上传的数据保存在byte数组  
while(totalBytesRead < formDataLength){  
byteRead = in.read(dataBytes,totalBytesRead,formDataLength);  
totalBytesRead += byteRead;  
}  
//根据byte数组创建字符串  
String file = new String(dataBytes,"gb2312");   
//取得上传的数据的文件名  
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
//String saveFile = request.getParameter("num");
saveFile = saveFile.substring(0,saveFile.indexOf("\n"));  
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));  
int lastIndex = contentType.lastIndexOf("=");  
//取得数据的分隔字符串  
String boundary = contentType.substring(lastIndex + 1,contentType.length());  
//创建保存路径的文件名  
fileName = rootPath + saveFile;  
textName = rootPath + "\\result.txt";
out.print(textName);
int pos;  
pos = file.indexOf("filename=\"");  
pos = file.indexOf("\n",pos) + 1;  
pos = file.indexOf("\n",pos) + 1;  
pos = file.indexOf("\n",pos) + 1;  
int boundaryLocation = file.indexOf(boundary,pos) - 4;  
//out.println(boundaryLocation);  
//取得文件数据的开始的位置  
int startPos = ((file.substring(0,pos)).getBytes()).length;  
//out.println(startPos);  
//取得文件数据的结束的位置  
int endPos = ((file.substring(0,boundaryLocation)).getBytes()).length;  
//out.println(endPos);  
//检查上载文件的目录是否存在  
File fileDir = new File(rootPath);  
if(!fileDir.exists()){  
fileDir.mkdirs();  
}  
//创建文件的写出类  
fileOut = new FileOutputStream(fileName);  
//保存文件的数据  
fileOut.write(dataBytes,startPos,(endPos - startPos));  
fileOut.close();  
out.println(saveFile + "文件成功上传.</p>");  
out.println("<p>文件大小为"+formDataLength/1024 + "KB.</p>"); 
out.println(fileName);
}else{  
String content = request.getContentType();  
out.println("<p>上传的数据类型不是multipart/form-data</p>");  
}  
}catch(Exception ex){  
throw new ServletException(ex.getMessage());  
}  
%>
<script>
var txtval=ifram1.body.innerText;
div1.innerHTML=txtval;
</script>
<input type="button" value="继续上传" onclick="window.location.href='uploadP.jsp';"/>
</body>  
</html>
