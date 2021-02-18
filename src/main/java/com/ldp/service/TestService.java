package com.ldp.service;


import com.ldp.bean.Dept;
import com.ldp.bean.Employee;

import java.util.List;


public interface TestService {


    //展示员工信息
    List<Employee> showEmployeeInfo();

    //删除信息
    boolean deleteInfo(Employee employee);

    //差部门名称
    List<Dept> showDname();

    //添加信息
    boolean addInfo(Employee employee);

    //更新的回显信息
    Employee showInfoByEid(Integer eid);

    //更新的方法
    boolean uodateInfo(Employee employee);
}
