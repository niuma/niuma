package com.moc.action;

import com.moc.service.EditorService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.RequestContext;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.moc.util.ImageUploadUtil;
import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTMLDocument;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.rmi.ServerException;
import java.util.*;

/**
 * Created by WangSu on 5/11/2017.
 */
@Controller
@RequestMapping("editor")
public class EditorAction extends HttpServlet{
    public EditorAction(){
        super();
    }

    @Resource
    EditorService editorService;

//    public void doPost(HttpServletRequest request, HttpServletResponse response)
//        throws ServerException,IOException{
//        request.setCharacterEncoding("utf-8");
//        RequestContext requestContext = new ServletRequestContext(request);
//        response.setContentType("text/html;charset=UTF-8");
//        if(FileUpload.isMultipartContent(requestContext)){
//            DiskFileItemFactory factory = new DiskFileItemFactory();
//            factory.setRepository(new File(request.getSession().getServletContext().getRealPath("/")+"lhj"));
//            ServletFileUpload upload = new ServletFileUpload(factory);
//            upload.setSizeMax(100000);
//            List items = new ArrayList();
//            try{
//                items = upload.parseRequest(request);
//            }catch (FileUploadException ex){
//                ex.printStackTrace();
//            }
//
//            Iterator it = items.iterator();
//            String a[]=new String[10];
//            int i=0;
//            while(it.hasNext()){
//                FileItem fileItem = (FileItem) it.next();
//                if(fileItem.isFormField()){
//                    String val=new String(fileItem.getString().getBytes("iso8859-1"),"gbk");
//                    a[i]=val;
//                    i++;
//                }
//                else if(fileItem.getName()!=null&& fileItem.getSize()!=0){
//                    String fileName=System.currentTimeMillis()+fileItem.getName();
//                    File fullFile = new File(fileName);
//                    File newFile = new File(request.getSession().getServletContext().getRealPath("/")+"lhj/"+fullFile.getName());
//                    try{
//                        fileItem.write(newFile);
//                    }catch (Exception e){
//                        e.printStackTrace();
//                    }
//
//                }
//
//
//            }
//        }
//    }
    @RequestMapping(value = "/lehuoji",method = RequestMethod.POST)
    public String publish(@RequestParam("date")Date date,
                          @RequestParam("title") String title,
                          @RequestParam("text") String text,
                          @RequestParam("image") MultipartFile file,
                          HttpServletRequest request){
        if (file != null && !file.isEmpty()) {
            if(ImageUploadUtil.allowUpload(file.getContentType())) {
                String realPath = request.getSession().getServletContext().getRealPath("/picture/lhj");
                String proPath = "picture/lhj";
                String newFileName = ImageUploadUtil.rename(file.getOriginalFilename());
                File targetFile = new File(realPath, newFileName);
                String path = proPath + "/" + newFileName;
                if (!targetFile.exists()) {
                    targetFile.mkdirs();
                }
                try {
                    file.transferTo(targetFile);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                editorService.insert(1, title, text, date, path, 2);
            }
        }
        return "EditorLHJ";
    }

//    private void saveFile(String newFileName,MultipartFile filedata){
//        String picDir= " ";
//        try{
//            Properties properties = PropertiesUtils;
//            picDir = properties.getProperty("savePicUrl");
//        }catch(IOException e){
//            e.printStackTrace();
//        }
//        String saveFilePath = picDir;
//
//        File fileDir = new File(saveFilePath);
//        if(!fileDir.exists()){
//            fileDir.mkdirs();
//        }
//
//        try{
//            FileOutputStream out = new FileOutputStream(saveFilePath+"\\"+newFileName);
//            out.write(filedata.getBytes());
//            out.flush();
//            out.close();
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//    }
}
