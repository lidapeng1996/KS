package com.ldp.bean;

import org.springframework.format.annotation.DateTimeFormat;
import java.util.Date;

public class Employee {

    private Integer eid;

    private String ename;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hiredate;

    private Integer deptno;

    private String address;

    private Dept dept;

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public Date getHiredate() {
        return hiredate;
    }

    public void setHiredate(Date hiredate) {
        this.hiredate = hiredate;
    }

    public Integer getDeptno() {
        return deptno;
    }

    public void setDeptno(Integer deptno) {
        this.deptno = deptno;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    public Employee() {
    }

    public Employee(Integer eid, String ename, Date hiredate, Integer deptno, String address, Dept dept) {
        this.eid = eid;
        this.ename = ename;
        this.hiredate = hiredate;
        this.deptno = deptno;
        this.address = address;
        this.dept = dept;
    }
}