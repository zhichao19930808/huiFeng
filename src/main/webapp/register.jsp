<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/4/22
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/jquery.validate.js"></script>
    <link rel="stylesheet" type="text/css" href="css/css.css"/>
    <title>注册</title>
    <script>
        var result;
        $(function () {

            jQuery.validator.addMethod("isPhone", function(value, element) {
                var length = value.length;
                var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
                return this.optional(element) || (length == 11 && mobile.test(value));
            }, "请填写正确的手机号码");//可以自定义默认提示信息

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
                        },
                        name: {
                            required: true,
                            maxlength: 4,
                            minlength: 2
                        },
                        nickName: {
                            required: true,
                            maxlength: 10,
                            minlength: 1
                        },
                        phone: {
                            required: true,
                            isPhone: true
                        },
                        IdCard: {
                            required: true,
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
                        },
                        name:{
                            required: '姓名必须填写',
                            maxlength: '姓名长度不能大于4位',
                            minlength: '姓名长度不能小于2位'
                        },
                        nickName:{
                            required: '昵称必须填写',
                            maxlength: '昵称长度不能大于10位',
                            minlength: '昵称长度不能小于1位'
                        },
                        phone: {
                            required: '手机号码必须填写',
                            isPhone:'请输入正确的电话号码'
                        },
                        IdCard: {
                            required: '身份证号码必须填写',
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
<form action="<%=basePath%>user/register" id="register">
    <table>
        <tr>
            <td>
                <input type="text" name="user.loginName" placeholder="登陆账号">
            </td>
        </tr>
        <tr>
            <td>
                <input type="password" name="user.password" id="pwd" placeholder="密码">
            </td>
        </tr>
        <tr>
            <td>
                <input type="password" name="rePassword" placeholder="确认密码">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" name="user.name" placeholder="请输入您的姓名">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" name="user.nickName" placeholder="请输入您的昵称">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" name="user.phone" placeholder="请输入您的电话号码">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" name="user.IdCard" placeholder="请输入您的身份证号码">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" name="user.birthday" placeholder="出生日期">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" name="user.sex" placeholder="性别">
            </td>
        </tr>
    </table>
    <input type="submit" value="注册">
</form>
<div id="aaa" style="height: 50px;width: 50px">aaaaaa</div>
</body>
</html>
