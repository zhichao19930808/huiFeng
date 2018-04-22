<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/4/22
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/jquery.validate.js"></script>
    <link rel="stylesheet" type="text/css" href="css/css.css"/>
    <title>注册</title>
    <script>
        var result;
        $(function () {
            result=$('#register').validate(
                {
                    rules: {//根据name的属性值，指定验证规则
                        loginName: {
                            required: true,//非空验证
                            maxlength: 12,
                            minlength: 6
                        },
                        password: {
                            required: true,
                            maxlength: 12,
                            minlength: 6
                        },
                        rePassword: {
                            equalTo: "#pwd"//通过id查询密码的值，进行密码确认
                        }
                    },
                    messages: {//返回的提示信息
                        loginName: {
                            required: '登陆账号必须填写',
                            maxlength: '登陆账号长度不能大于12位',
                            minlength: '登陆账号长度不能小于6位'
                        },
                        password: {
                            required: '登陆密码必须填写',
                            maxlength: '登陆密码长度不能大于12位',
                            minlength: '登陆密码长度不能小于6位'
                        },
                        rePassword: {
                            equalTo: "两次输入的密码不一致"
                        }
                    },
                    errorPlacement: function (error, element) {//提示信息存放的位置
                        //error ---提示信息
                        //element --被校验的标签
                        error.appendTo(element.parent());//显示在被验证input的后边
                    }
                }
            )
        })
    </script>
</head>

<body>
<form action="#" id="register">
    <table>
        <tr>
            <td>
                <input type="text" name="loginName" placeholder="登陆账号">
            </td>
        </tr>
        <tr>
            <td>
                <input type="password" name="password" id="pwd" placeholder="密码">
            </td>
        </tr>
        <tr>
            <td>
                <input type="password" name="rePassword" placeholder="确认密码">
            </td>
        </tr>
    </table>
    <input type="submit" value="注册">
</form>
<div id="aaa" style="height: 50px;width: 50px">aaaaaa</div>
</body>
</html>
