package com.moc.action;

import com.moc.service.EditorService;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import java.util.UUID;

/**
 * Created by WangSu on 5/11/2017.
 */
@Controller
@RequestMapping("editor")
public class EditorAction {
    @Resource
    EditorService editorService;
    @RequestMapping(value = "/lehuoji",method = RequestMethod.POST)
    @ResponseBody
    public String publish(@RequestParam("date")Date date,
                          @RequestParam("title") String title,
                          @RequestParam("text") String text,
                          @RequestParam("image") MultipartFile file,
                          HttpServletRequest request){
        if(file!=null&&!file.isEmpty()){
            String fileName = file.getOriginalFilename();
            String extensionName = fileName.substring(fileName.lastIndexOf("."+1));
            UUID uuid = UUID.randomUUID();
            String newFileName =uuid+"."+extensionName;
            saveFile(newFileName,file);
        }

        editorService.insert(1,title,text,date,2);

        return "EditorLHJ";
    }
    private void saveFile(String newFileName,MultipartFile filedata){
        String picDir= " ";
        try{
            Properties properties = PropertiesUtils;
            picDir = properties.getProperty("savePicUrl");
        }catch(IOException e){
            e.printStackTrace();
        }
        String saveFilePath = picDir;

        File fileDir = new File(saveFilePath);
        if(!fileDir.exists()){
            fileDir.mkdirs();
        }

        try{
            FileOutputStream out = new FileOutputStream(saveFilePath+"\\"+newFileName);
            out.write(filedata.getBytes());
            out.flush();
            out.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
