<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/7
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>我的订单</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <!--引入awesome图标库的样式表-->
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css">
</head>
<body>

    <!--包含导航栏,incude动作，include 指令-->
    <%@include file="nav.jsp"%>

<!--以下是垂直导航菜单-->
<div class="layui-col-md3">
    <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px;">
        <li class="layui-nav-item layui-nav-itemed">

            <a href="javascript:;">全部</a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">小轿车</a></dd>
                <dd><a href="javascript:;">SUV</a></dd>
                <dd><a href="javascript:;">MPV</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">待付款</a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">小轿车</a></dd>
                <dd><a href="javascript:;">SUV</a></dd>
                <dd><a href="javascript:;">MPV</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">待取</a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">小轿车</a></dd>
                <dd><a href="javascript:;">SUV</a></dd>
                <dd><a href="javascript:;">MPV</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">待评价</a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">小轿车</a></dd>
                <dd><a href="javascript:;">SUV</a></dd>
                <dd><a href="javascript:;">MPV</a></dd>
            </dl>
        </li>

    </ul>
</div>
</div>

<div class="layui-col-md9">
    <div class="layui-col-md12">
        <div class="layui-card">
            <!--以下是面包屑-->
            <div class="layui-card-header">
                    <span class="layui-breadcrumb">
                    <a href="">全部</a>
                      <a href="">轿车</a>
                      <a><cite>类型</cite></a>
                        <a><cite>价格</cite></a>
                        <a><cite>取车方式</cite></a>

                    </span>
            </div>

            <div class="layui-card-body">
                <!--下面是一辆车的详情的表格-->
                <div>
                    <table class="layui-table" lay-skin="nob">
                        <tr>
                            <td width="30%">
                                <dl>
                                    <dt><img src="images/BaoM.jpg" width="200" height="120"></dt>
                                    <dd><div id="test1"></div></dd>
                                </dl>
                            </td>
                            <td width="50%">
                                宝马5系<br>
                                三厢|2.0自动|乘坐5人<br>
                                方式：自取<br>
                            </td>
                            <td><button class="layui-btn layui-btn-normal">待取</button></td>
                        </tr>
                    </table>
                </div>


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
                           target="_blank">陕ICP备17021699号</a></span> | 联系站长：<a href="mailto:403353606@qq.com"> 管理员 </a>
            </div>
        </div>
    </div>
</div>

</div>

<script src="layui/layui.js"></script>


<!--java script脚本存放位置！
    注意！所有脚本都要放在这里面-->
<script src="layui/layui.js"></script>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;

        //常规用法
        laydate.render({
            elem: '#test1'
        });

        //监听导航点击
        element.on('nav(demo)', function (elem) {
            //console.log(elem)
            var id = elem.attr('id');
            layer.msg(id);
            //layer.msg(elem);
        });
    });

</script>


</body>
</html>


