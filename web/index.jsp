<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/4
  Time: 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>租车网首页</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <!--引入awesome图标库的样式表-->
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css">
</head>

<style>
    dl {
        float: left;
        padding: 8px;
    }

    dl dd {
        text-align: center;
    }

    dl img {
        border: rgba(78, 84, 101, 0.41) 1px solid;
        width: 200px;
        height: 200px;
    }

    button {
        width: 200px;
        /*height: 120px;*/
    }

</style>
<body>

<!---定义最外面的容器,container-->
<div class="layui-container">

    <!--以下包含导航栏页面-->
    <%@include file="nav.jsp"%>

    <!--以下是一个轮播组件，用来投放广告-->
    <div class="layui-carousel" id="test10">
        <div carousel-item="">
            <div><img src="images/carousel1.jpg"></div>
            <div><img src="images/carousel2.jpg"></div>
            <div><img src="images/carousel3.jpg"></div>
        </div>
    </div>

    <!--以下热门车型和特价车型推荐内容-->
    <div style="padding: 20px; background-color: #F2F2F2;">
        <div class="layui-row layui-col-space15">


            <div class="layui-col-md8">
                <div class="layui-card">
                    <div class="layui-card-header" style="padding: 10px; background-color: #6C6C6E;"><h1
                            style="color:#FFF;"><i class="fa fa-smile-o" aria-hidden="true"></i>热门车型</h1></div>
                    <div class="layui-card-body">
                        <!--这里放热门车型的图片-->
                        <div class="layui-row">
                            <!--dl:display list,这个dl也是块级元素，独占一行--->
                            <dl>
                                <!--dt: display title,用图片来充当显示的标题-->
                                <dt><img src="images/car01.jpg"></dt>
                                <!--dd:display description,肯定用文字来描述-->
                                <dd>东风标致307
                                    <div id="test1"></div>
                                </dd>
                            </dl>

                            <dl>
                                <!--dt: display title,用图片来充当显示的标题-->
                                <dt><img src="images/car01.jpg"></dt>
                                <!--dd:display description,肯定用文字来描述-->
                                <dd>东风标致307
                                    <div id="test2"></div>
                                </dd>
                            </dl>

                            <dl>
                                <!--dt: display title,用图片来充当显示的标题-->
                                <dt><img src="images/car01.jpg"></dt>
                                <!--dd:display description,肯定用文字来描述-->
                                <dd>东风标致307
                                    <div id="test3"></div>
                                </dd>
                            </dl>

                            <dl>
                                <!--dt: display title,用图片来充当显示的标题-->
                                <dt><img src="images/car01.jpg"></dt>
                                <!--dd:display description,肯定用文字来描述-->
                                <dd>东风标致307
                                    <div id="test4"></div>
                                </dd>
                            </dl>

                            <dl>
                                <!--dt: display title,用图片来充当显示的标题-->
                                <dt><img src="images/car01.jpg"></dt>
                                <!--dd:display description,肯定用文字来描述-->
                                <dd>东风标致307
                                    <div id="test5"></div>
                                </dd>
                            </dl>

                            <dl>
                                <!--dt: display title,用图片来充当显示的标题-->
                                <dt><img src="images/car01.jpg"></dt>
                                <!--dd:display description,肯定用文字来描述-->
                                <dd>东风标致307
                                    <div id="test6"></div>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>

            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header" style="padding: 10px; background-color: #FF5C01;"><h1
                            style="color:#FFF;"><i class="fa fa-heart-o" aria-hidden="true"></i>特价车型</h1></div>
                    <div class="layui-card-body">
                        <!--这里放特价车型的图片-->
                        <div class="layui-row" style="text-align: center">
                            <dl style="float: none">
                                <dt><img src="images/car03.jpg" width="240" height="240"></dt>
                                <dd>上海大众朗逸</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>


            <!--以下是接送服务内容-->
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header" style="padding: 10px; background-color: #1a94ff;"><h1
                            style="color:#FFF;"><i class="fa fa-fax" aria-hidden="true"></i>接送服务</h1></div>
                    <div class="layui-card-body">
                        <button class="layui-btn layui-btn-normal layui-btn-lg"
                                style="height: 120px;margin-left: 50px;font-size: xx-large"><i class="fa fa-sun-o"
                                                                                               aria-hidden="true"></i>日租
                        </button>
                        <button class="layui-btn layui-btn-normal layui-btn-lg"
                                style="height: 120px;margin-left: 50px;font-size: xx-large"><i class="fa fa-calendar"
                                                                                               aria-hidden="true"></i>月租
                        </button>
                        <button class="layui-btn layui-btn-normal layui-btn-lg"
                                style="height: 120px;margin-left: 50px;font-size: xx-large"><i class="fa fa-bus"
                                                                                               aria-hidden="true"></i>租接机
                        </button>
                        <button class="layui-btn layui-btn-normal layui-btn-lg"
                                style="height: 120px;margin-left: 50px;font-size: xx-large"><i class="fa fa-plane"
                                                                                               aria-hidden="true"></i>送机
                        </button>
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


<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'element', 'carousel', 'form', 'rate'], function () {
        var layer = layui.layer
            , form = layui.form;
        var element = layui.element;
        var carousel = layui.carousel;
        var rate = layui.rate;

        //layer.msg('Hello World');

        //监听导航点击
        element.on('nav(demo)', function (elem) {
            //console.log(elem)
            layer.msg(elem.text());
        });

        //常规轮播
        carousel.render({
            elem: '#test10'
            , arrow: 'always'
            , interval: 3000
            , anim: 'fade'
            , width: '100%'
            , height: '562px'
            , top: '-200px'
        });


        //半星效果
        rate.render({
            elem: '#test1'
            , value: 2.5 //初始值
            , half: true //开启半星
            , readonly: true
        });

        rate.render({
            elem: '#test2'
            , value: 3.5 //初始值
            , half: true //开启半星
            , readonly: true
        });

        rate.render({
            elem: '#test3'
            , value: 4.5 //初始值
            , half: true //开启半星
            , readonly: true
        });

        rate.render({
            elem: '#test4'
            , value: 5 //初始值
            , half: true //开启半星
            , readonly: true
        });

        rate.render({
            elem: '#test5'
            , value: 5 //初始值
            , half: true //开启半星
            , readonly: true
        });

        rate.render({
            elem: '#test6'
            , value: 5 //初始值
            , half: true //开启半星
            , readonly: true
        });
    });
</script>
</body>
</html>
