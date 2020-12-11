package myservlet.control;

import mybean.data.* ;
import java.sql.* ;
import java.io.*;
import javax.servlet.* ;
import javax.servlet.http.* ;

public class UpFile extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
      // try{
      //    Class.forName( "com.mysql.jdbc.Driver");
      // }
      // catch(Exception e){}
   }

   public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{ 

      String numStr = request.getParameter("num");
      uploadFileMethod(request, response, numStr);
   }

public void uploadFileMethod(HttpServletRequest request,HttpServletResponse response, String numStr)throws ServletException, IOException{

      String backNews= "";
      int num = Integer.parseInt(numStr);

      try{

         String tempFileName = numStr;
         File f1 = new File(tempFileName);

         FileOutputStream o = new FileOutputStream(f1) ;
         InputStream in = request.getInputStream();

         byte b[] = new byte[10000];
         int n;

         while((n=in.read(b))!=-1)
            o.write(b,0,n);
         o.close( );
         in.close( );

         RandomAccessFile randomRead = new RandomAccessFile(f1,"r");
         String savedFileName = numStr + ".jpg";
         randomRead.seek(0);
         long forthEndPosition= 0;
         int forth= 1;
         while( (n=randomRead.readByte())!=-1&&(forth<= 4)){
            if(n== '\n'){
               forthEndPosition = randomRead.getFilePointer();
               forth ++;
            }
         }

         String parentDir = f1.getAbsolutePath( );
         parentDir =parentDir.substring( 0, parentDir.lastIndexOf("bin")- 1);
         String saveDir = parentDir + "/webapps/lab/images";
         File dir= new File(saveDir);
         dir.mkdir(); 
         File savingFile= new File(dir, savedFileName);
         if(savingFile.exists())
            savingFile.delete();
         RandomAccessFile randomSave = new RandomAccessFile(savingFile,"rw");
         randomRead.seek(randomRead.length());
         long endPosition = randomRead.getFilePointer();
         long mark = endPosition; 
         int j= 1;
         while((mark>=0)&&(j<=6)){
            mark-- ;
            randomRead.seek(mark);
            n = randomRead.readByte();
            if(n== '\n'){
               endPosition = randomRead.getFilePointer();
               j++;
            }
         }
         randomRead.seek(forthEndPosition);
         long startPoint=randomRead.getFilePointer();
         while(startPoint < endPosition-1){
            n= randomRead.readByte();
            randomSave.write(n);
            startPoint = randomRead.getFilePointer();
         }
         randomSave.close( );
         randomRead.close();

         f1.delete();
      }
      catch(Exception exp) {}

      RequestDispatcher dispatcher = request.getRequestDispatcher("uploadP.jsp");
      dispatcher.forward(request, response) ;
   }

   public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
      doPost(request, response);
   }
}


