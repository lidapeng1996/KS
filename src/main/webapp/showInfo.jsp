<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/29 0029
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table border="1">
    <tr>
        <th>员工编号</th>
        <th>员工姓名</th>
        <th>部门名称</th>
        <th>部门位置</th>
        <th>入职日期</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${info}" var="ead">
        <tr align="center">
            <td>${ead.eid}</td>
            <td>${ead.ename}</td>
            <td>${ead.dept.dname}</td>
            <td>${ead.dept.local}</td>
            <td>${ead.hiredate}</td>
            <td><a href="deleteInfo?eid=${ead.eid}">删除</a></td>
            <td><a href="updateInfo.jsp?eid=${ead.eid}">修改</a></td>
        </tr>
    </c:forEach>
    <tr>
        <a href="add.jsp">添加</a>
    </tr>
</table>

</body>
</html>
