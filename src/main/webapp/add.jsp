<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/29 0029
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form  action="addInfo" method="post">
        员工姓名:<input type="text" name="ename">
        部门名称:<select name="deptno"  id="pt"></select>
        入职时间:<input type="date" name="hiredate">
        <input type="submit" value="提交">
    </form>

    <script type="application/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript">
        /*当文档载入后,执行此处的代码*/
        $(document).ready(function () {
            $.ajax({
                type:'get',
                url:'showDname',
                dataType:'json',
                success:function (rs) {
                    $(rs).each(function(index,item){
                        var opt="<option value='"+item.deptno+"' selected>"+item.dname+"</option>";
                        $("#pt").append(opt);
                    });
                }
            })
        })




    </script>
</body>
</html>
