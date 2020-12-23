package com.ldp.mapper;


import com.ldp.bean.Dept;

import java.util.List;

public interface DeptMapper {

    //查看部门信息
    Dept showDeptInfo();

    //查看部门名称
    List<Dept> showDname();


}