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
<title>�ϴ��ļ�״̬ </title> 
<body> 
<%! String rootPath;  String fileName,textName; %> 
<%  
//���������ļ�������ֽ�  
int MAX_SIZE = 102400 * 102400;  
// ������·���ı������  
//String rootPath;  
//�����ļ�������  
DataInputStream in = null;  
FileOutputStream fileOut = null;  
//ȡ�ÿͻ��˵������ַ  
String remoteAddr = request.getRemoteAddr();  
//��÷�����������  
String serverName = request.getServerName();  
//ȡ�û���������ľ��Ե�ַ  
String realPath = request.getSession().getServletContext().getRealPath("/");
//�����ļ��ı���Ŀ¼  
rootPath = realPath +"\\images\\";
//rootPath="WebContent"+"\\images\\";
//ȡ�ÿͻ����ϴ�����������  
String contentType = request.getContentType();  
try{  
if(contentType.indexOf("multipart/form-data") >= 0){  
//�����ϴ�������  
in = new DataInputStream(request.getInputStream());  
int formDataLength = request.getContentLength();  
if(formDataLength > MAX_SIZE){  
out.println("<P>�ϴ��ļ�����ܳ���" + MAX_SIZE + "</p>");  
return;  
}  
//�����ϴ��ļ�������  
byte dataBytes[] = new byte[formDataLength];  
int byteRead = 0;  
int totalBytesRead = 0;  
//�ϴ������ݱ�����byte����  
while(totalBytesRead < formDataLength){  
byteRead = in.read(dataBytes,totalBytesRead,formDataLength);  
totalBytesRead += byteRead;  
}  
//����byte���鴴���ַ���  
String file = new String(dataBytes,"gb2312");   
//ȡ���ϴ������ݵ��ļ���  
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
//String saveFile = request.getParameter("num");
saveFile = saveFile.substring(0,saveFile.indexOf("\n"));  
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));  
int lastIndex = contentType.lastIndexOf("=");  
//ȡ�����ݵķָ��ַ���  
String boundary = contentType.substring(lastIndex + 1,contentType.length());  
//��������·�����ļ���  
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
//ȡ���ļ����ݵĿ�ʼ��λ��  
int startPos = ((file.substring(0,pos)).getBytes()).length;  
//out.println(startPos);  
//ȡ���ļ����ݵĽ�����λ��  
int endPos = ((file.substring(0,boundaryLocation)).getBytes()).length;  
//out.println(endPos);  
//��������ļ���Ŀ¼�Ƿ����  
File fileDir = new File(rootPath);  
if(!fileDir.exists()){  
fileDir.mkdirs();  
}  
//�����ļ���д����  
fileOut = new FileOutputStream(fileName);  
//�����ļ�������  
fileOut.write(dataBytes,startPos,(endPos - startPos));  
fileOut.close();  
out.println(saveFile + "�ļ��ɹ��ϴ�.</p>");  
out.println("<p>�ļ���СΪ"+formDataLength/1024 + "KB.</p>"); 
out.println(fileName);
}else{  
String content = request.getContentType();  
out.println("<p>�ϴ����������Ͳ���multipart/form-data</p>");  
}  
}catch(Exception ex){  
throw new ServletException(ex.getMessage());  
}  
%>
<script>
var txtval=ifram1.body.innerText;
div1.innerHTML=txtval;
</script>
<input type="button" value="�����ϴ�" onclick="window.location.href='uploadP.jsp';"/>
</body>  
</html>
