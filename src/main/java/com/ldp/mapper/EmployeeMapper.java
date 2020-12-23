package com.ldp.mapper;


import com.ldp.bean.Employee;

import java.util.List;

public interface EmployeeMapper {

    //查看信息的方法
    List<Employee> showEmployeeInfo();

    //删除的方法
    int deleteInfo(Employee employee);

    //添加的方法
    int addInfo(Employee employee);

    //更新的回显信息
    Employee showInfoByEid(Integer eid);

    //更新的方法
    int uodateInfo(Employee employee);
}