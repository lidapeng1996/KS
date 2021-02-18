<%--
  Created by IntelliJ IDEA.
  User: hspcadmin
  Date: 2021/2/5
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ldp.com</title>
</head>
<body>

    <h1>欢迎来到李大鹏的前端练习</h1>

        请输入&nbsp;&nbsp;第一个数:<input id="num1" type="text"><br>
        请输入&nbsp;&nbsp;&nbsp;运算符&nbsp;&nbsp;:<input id="ys" type="text"><br>
        请输入&nbsp;&nbsp;第二个数:<input id="num2" type="text"><br>
        <input type="button" onclick="YS()" value="运算">

        <div></div>
        请输入&nbsp;&nbsp;电子邮箱:<input id="email" type="text" onblur="JY()">

        <div>
            请输入&nbsp;&nbsp;手机号:<input id="phone" type="text" onblur="JY2()"><span id="errorMessage"><br>
        </div>

        <div>
            请输入&nbsp;&nbsp;用户名:<input id="ename" type="text" onblur="yz()"><span id="message"><br>
        </div>







</body>
    <script type="application/javascript" src="js/jquery.min.js"></script>
    <script>

        /* 四则远算练习  点击事件练习 */
        function YS() {
            var x = $("#num1").val();
            var y = $("#num2").val();
            var ys = $("#ys").val();
            if (ys == "+"){
                alert("两数的和是"+(x + y))
            }
            if (ys == "-"){
                alert("两数的差是"+(x - y))
            }
            if (ys == "*"){
                alert("两数的乘是"+(x * y))
            }
            if (ys == "/"){
                alert("两数的和是"+(x / y))
            }else{
                alert("请输入正确的运算符")
            }
        }

        /* 电子邮箱的校验  失焦事件练习 弹框提示错误信息 */
        function JY() {
            var email = $("#email").val();
            var zz = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
            if (!(zz.test(email))){
                alert("请输入正确的邮箱！")
            }
        }

        /* 手机号的校验  失焦事件 在文本框后面显示错误信息 */
        function JY2() {
            var phone = $("#phone").val();
            var zz = /^1[3456789]\d{9}$/;
            if (!(zz.test(phone))){
                $("#errorMessage").text("请输入正确的手机号").css("color","red");
            }else {
                $("#errorMessage").text("输入正确").css("color","green");
            }
        }

        /* 验证用户名的唯一性失焦事件 一步发送ajax */
        function yz() {
            var ename = $("#ename").val();
            $.ajax({
                type:'post',
                url:'yzUser',
                data:{"ename":ename},
                dataType:'json',
                success:function (rs){
                    var isR = rs.result;
                    if (isR == "success"){
                        $("#message").text("用户名ok").css("color","green");
                    }else{
                        $("#message").text("用户名已存在").css("color","red");
                    }
                }
            })
        }




    </script>

</html>
