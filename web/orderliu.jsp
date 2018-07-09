<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/7
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>车辆下单</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <!--引入awesome图标库的样式表-->
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css">
</head>
<style>
  #box1{
      background-color: paleturquoise;
      height: 20px;
  }
#box2{
    height: 15px;
}


</style>
<body>


<!---定义最外面的容器,container-->
<div class="layui-container">

    <!--包含导航栏,incude动作，include 指令-->
    <%@include file="nav.jsp"%>
<div id="box2">

</div>
<div id="box1">

    下单成功后，提醒信息会发送至手机 187***1234

</div>
    <p>
        &nbsp
    </p>
    <h2>租车人信息</h2>
    &nbsp
    <h4>请认真填写一下信息，取车时需要现场核对！</h4>
    <hr>
&nbsp
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">姓 &nbsp&nbsp 名</label>
                <div class="layui-input-inline">
                    <input type="text" name="username" lay-verify="requirede"  placeholder="请输入您的姓名" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">邮 &nbsp&nbsp 箱</label>
                    <div class="layui-input-inline">
                        <input type="text" name="emai" lay-verify="email"  placeholder="请输入邮箱" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">证件类型</label>
                <div class="layui-input-inline">
                    <select name="quiz">
                        <option value="">请选择</option>

                            <option value="身份证">身份证</option>
                            <option value="驾驶证">驾驶证</option>

                    </select>
                </div>
            </div>
        </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">证件号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="identity" lay-verify="identity"  placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>

        <div>
        <button class="layui-btn layui-btn-normal">提交订单</button>
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

</div>>
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












    });
</script>

</body>
</html>
