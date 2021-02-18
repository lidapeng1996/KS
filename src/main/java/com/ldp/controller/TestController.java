package com.ldp.controller;


import com.ldp.bean.Dept;
import com.ldp.bean.Employee;
import com.ldp.service.TestService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class TestController {

    @Resource
    private TestService testService;


    //展示
    @RequestMapping("showEmployeeInfo")
    public String showEmployeeInfo( ModelMap modelMap){
        List<Employee>  list= testService.showEmployeeInfo();
        modelMap.addAttribute("info",list);
        return "showInfo";
    }

    //删除
    @RequestMapping("deleteInfo")
    public String deleteInfo(Employee employee){
        boolean flag =  testService.deleteInfo(employee);
        return "redirect:/showEmployeeInfo";
    }

    //ajax添加的异步
    @RequestMapping("showDname")
    @ResponseBody
    public List<Dept> showDname(){
        return testService.showDname();
    }


    //添加
    @RequestMapping("/addInfo")
    public String addInfo(Employee employee){
        boolean flag  = testService.addInfo(employee);
        return "redirect:/showEmployeeInfo";
    }

    //更新的回显信息
    @RequestMapping("showInfoByEid")
    @ResponseBody
    public Employee showInfoByEid(Integer eid){
        return testService.showInfoByEid(eid);
    }

    //修改信息的方法
    @RequestMapping("uodateInfo")
    public String uodateInfo(Employee employee){
        boolean flag  = testService.uodateInfo(employee);
        System.out.println(employee.toString());
        return "redirect:/showEmployeeInfo";
    }

}
