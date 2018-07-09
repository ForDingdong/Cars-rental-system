<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/4
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登录/注册</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <!--引入awesome图标库的样式表-->
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css">
</head>

<style>


</style>
<body>

<!---定义最外面的容器,container-->
<div class="layui-container">

    <!--包含导航栏,incude动作，include 指令-->
    <%@include file="nav.jsp"%>

    <!--下面是登录和注册的容器-->
    <div class="layui-col-md4 layui-col-md-offset4">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <ul class="layui-tab-title">
                <li class="layui-this" lay-id="login_tab">用户登录</li>
                <li lay-id="reg_tab">用户注册</li>

            </ul>
            <div class="layui-tab-content" style="height:360px;">
                <div class="layui-tab-item layui-show">
                    <!--
                    <form class="layui-form" action="UsersServlet?action=login" lay-filter="example" method="post">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-block">
                                <input type="text" name="username" lay-verify="title" autocomplete="off"
                                       placeholder="请输入用户名" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <input type="password" name="password" lay-verify="title" autocomplete="off"
                                       placeholder="请输入密码" class="layui-input">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label"></label>
                            <div class="layui-input-block">
                                <img src="images/validatecode.jpg"/>
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">验证码</label>
                            <div class="layui-input-block">
                                <input type="text" name="validatecode" lay-verify="title" autocomplete="off"
                                       placeholder="请输入验证码" class="layui-input">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">请记住我</label>
                            <div class="layui-input-block" style="text-align:left">
                                <input type="checkbox" name="rememberme" lay-skin="switch" lay-text="是|否">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit="" lay-filter="demo1">登录</button>
                            </div>
                        </div>

                    </form>
                    -->
                    <form id="loginForm" class="layui-form" action="#" lay-filter="example">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-block">
                                <input type="text" name="username" lay-verify="title" autocomplete="off"
                                       placeholder="请输入用户名" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <input type="password" name="password" lay-verify="title" autocomplete="off"
                                       placeholder="请输入密码" class="layui-input">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label"></label>
                            <div class="layui-input-block">
                                <img src="images/validatecode.jpg"/>
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">验证码</label>
                            <div class="layui-input-block">
                                <input type="text" name="validatecode" lay-verify="title" autocomplete="off"
                                       placeholder="请输入验证码" class="layui-input">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">请记住我</label>
                            <div class="layui-input-block" style="text-align:left">
                                <input type="checkbox" name="rememberme" lay-skin="switch" lay-text="是|否">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <!--
                                <button class="layui-btn" lay-submit="" lay-filter="demo1">登录</button>
                                -->
                                <button class="layui-btn" id="bt_login" lay-filter="demo1">登录</button>
                            </div>
                        </div>

                    </form>
                </div>


                <div class="layui-tab-item">
                    <form id="regForm" class="layui-form" action="#" lay-filter="example">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-block">
                                <input type="text" name="username" lay-verify="checkusername" autocomplete="off"
                                       placeholder="请输入用户名" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <input type="password" name="password" lay-verify="checkpassword" autocomplete="off"
                                       placeholder="请输入密码" class="layui-input">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">确认密码</label>
                            <div class="layui-input-block">
                                <input type="password" name="confirmpass" lay-verify="checkconfirmpass" autocomplete="off"
                                       placeholder="请输入确认密码" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">电子邮箱</label>
                            <div class="layui-input-block">
                                <input type="email" name="email" lay-verify="email" autocomplete="off"
                                       placeholder="请输入电子邮箱" class="layui-input">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">出生日期</label>
                            <div class="layui-input-block">
                                <input type="text" name="birthday" lay-verify="required" class="layui-input" id="test1" placeholder="yyyy-MM-dd">
                            </div>
                        </div>


                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <!--
                                <button class="layui-btn" id="bt_reg" lay-filter="demo1">注册</button>
                                -->
                                <button class="layui-btn" lay-submit="" lay-filter="reg">注册</button>

                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>


    <div class="copyright">
        <div class="container">
            <hr class="layui-bg-orange">
            <div class="row" style="text-align: center">
                <div class="col-sm-12">
                    <span>Copyright &copy; 2018 <a href="#">租车网演示</a></span>
                    | <span><a href="http://www.miibeian.gov.cn/"
                               target="_blank">陕ICP备17021699号</a></span> | 联系站长：<a href="mailto:403353606@qq.com">
                    管理员 </a>
                </div>
            </div>
        </div>
    </div>

</div>

<script src="layui/layui.js"></script>


<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'element', 'form', 'laydate'], function () {
        var layer = layui.layer
            , form = layui.form;
        var element = layui.element;
        var laydate = layui.laydate;
        //常规用法
        laydate.render({
            elem: '#test1'
        });

        //layui中怎么使用jquery.
        var $ = layui.jquery;

        //jquery怎么获取登录按钮的点击事件呢。
        //执行用户登录的异步请求
        $('#bt_login').click(function(){
            //layer.msg('您点击了登录按钮!');
            //发送异步请求。
            //jquery怎么发送异步请求？jquery ajax

            var username = $("#loginForm :input[name='username']").val();
            var password = $("#loginForm :input[name='password']").val();
            //layer.msg(username+","+password);

            $.ajax({
                type: 'POST',
                async: true,
                url: 'UsersServlet',
                data: {action:'login',username:username,password:password},
                success: function(data){
                    if(data=='success'){
                        //说明登录成功
                        window.location.href='index.jsp';
                    }else{
                        layer.msg('登录失败：请检查用户名或者密码是否正确！');
                    }
                },
                dataType: 'text'
            });

            return false; //layui的坑。
        });


        form.verify({
            checkusername: function(value){
                if(value.length < 6){
                    return '用户名不能少于6位!';
                }
            },
            checkpassword:function(value){
               if(value.length < 6){
                   return '密码不能少于6位!';
               }
            },

            checkconfirmpass:function(value){
                //确认密码必须和输入的密码一样，怎么判断呢。
                var pass =  $("#regForm :input[name='password']").val();
                if(value!=pass){
                    return '确认密码必须和输入密码一致!';
                }
            }


        });

        //执行用户注册的异步请求
        /*
        $('#bt_reg').click(function(){

            var username = $("#regForm :input[name='username']").val();
            var password = $("#regForm :input[name='password']").val();
            var email = $("#regForm :input[name='email']").val();
            var birthday =  $("#regForm :input[name='birthday']").val();

            //layer.msg(username+","+password+","+email+","+birthday);
            $.ajax({
                type: 'POST',
                async: true,
                url: 'UsersServlet',
                data: {action:'reg',username:username,password:password,email:email,birthday:birthday},
                success: function(data){
                    if(data=='success'){
                        //说明注册成功
                        //window.location.href='index.jsp';
                        layer.msg("恭喜您注册成功！")
                        //把表单置空
                        $('#regForm')[0].reset();
                        //自动切换到用户登录的标签
                        element.tabChange('docDemoTabBrief', 'login_tab');

                    }else{
                        layer.msg('注册失败！');
                    }
                },
                dataType: 'text'
            });
            return false; //layui的坑。否则它继续提交表单。
        });
        */

        //监听提交
        form.on('submit(reg)', function(data){

            //把表单的数据转换为json格式的字符串。
            /*
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })*/
            //我们还是要异步提交表单

            $.ajax({
                type: 'POST',
                async: true,
                url: 'UsersServlet',
                data: {action:'reg',data:JSON.stringify(data.field)},
                success: function(msg){
                    if(msg=='success'){
                        layer.alert('恭喜您注册成功!请尝试登录。',{title:'提示信息'});
                        //把表单置空
                        $('#regForm')[0].reset();
                        //自动切换到用户登录的标签
                        element.tabChange('docDemoTabBrief', 'login_tab');
                    }else{
                        layer.msg('注册失败！');
                    }

                },
                dataType: 'text'
            });

            return false;//阻止提交表单.
        });

    });

</script>
</body>
</html>
