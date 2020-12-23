<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/29 0029
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form  action="uodateInfo" method="post">
        <input type="hidden" name="eid" id="eid">
        员工姓名:<input type="text" name="ename" id="ename">
        部门名称:<select name="deptno"  id="pt"></select>
        入职时间:<input type="date" name="hiredate" id="hiredate">
    <input type="submit" value="提交">
    </form>


    <script type="application/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                type:'get',
                url:'showInfoByEid',
                data:{"eid":${param.eid}},
                dataType:'json',
                success:function (rs) {
                    $("#ename").val(rs.ename);
                    $("#hiredate").val(rs.hiredate);
                    $("#eid").val(${param.eid});
                }
            })
        })


        $(document).ready(function () {
            $.ajax({
                type:'get',
                url:'showDname',
                dataType:'json',
                success:function (rs1) {
                    $(rs1).each(function(index,item){
                        var opt="<option value='"+item.deptno+"' selected>"+item.dname+"</option>";
                        $("#pt").append(opt);
                    });
                }
            })
        })


    </script>
</body>
</html>
