package cn.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.entity.ResourceEntity;
  
@Controller  
public class DBOperation {  
  
    private final static Logger log = Logger.getLogger(DBOperation.class);  
  
    @RequestMapping("/hello")  
    public String start(ModelMap model){  
        log.info("request for dbOperation");  
        /*for(ResourceEntity re : resDAOList){  
            System.out.println(re.hashCode());  
            System.out.println(re.getClazz()+":"+re.getName());
        } */ 
        model.addAttribute("code",new ResourceEntity("1203","ligang!"));
        return "springTest";  
    }  
    /** 
     * @param args 
     */  
    public static void main(String[] args) {  
        DBOperation d = new DBOperation();  
        d.start(new ModelMap());  
    }  
}
