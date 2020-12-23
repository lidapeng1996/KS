package com.ldp.service;

import com.ldp.bean.Dept;
import com.ldp.bean.Employee;
import com.ldp.mapper.DeptMapper;
import com.ldp.mapper.EmployeeMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TestServiceImpl implements TestService {

    @Resource
    private EmployeeMapper employeeMapper;

    @Resource
    private DeptMapper deptMapper;

    //查看信息的方法
    @Override
    public List<Employee> showEmployeeInfo() {
        return employeeMapper.showEmployeeInfo();
    }

    //删除信息
    @Override
    public boolean deleteInfo(Employee employee) {
        return employeeMapper.deleteInfo(employee)>0;
    }

    //查部门名称
    @Override
    public List<Dept> showDname() {
        return deptMapper.showDname();
    }

    //添加的方法
    @Override
    public boolean addInfo(Employee employee) {
        boolean flag =  employeeMapper.addInfo(employee)>0;
        return flag;
    }

    //更新的回显信息
    @Override
    public Employee showInfoByEid(Integer eid) {
        return employeeMapper.showInfoByEid(eid);
    }

    //更新的方法
    @Override
    public boolean uodateInfo(Employee employee) {
        boolean flag = employeeMapper.uodateInfo(employee)>0;
        return flag;
    }

}
