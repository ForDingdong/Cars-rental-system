<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/4
  Time: 14:51
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


</style>
<body>

<!---定义最外面的容器,container-->
<div class="layui-container">

    <!--下面是首页的导航栏-->
    <!--包含导航栏,incude动作，include 指令-->
    <%@include file="nav.jsp"%>


    <!--下面是登录和注册的容器-->
    <div class="layui-col-md12">

        <div class="layui-col-md3">

            <!---实现左侧车型查询的导航栏，注意这个导航树形菜单-->
            <!--包含左侧的导航栏部分-->
            <%@ include file="catalog.jsp"%>

        </div>

        <div class="layui-col-md9">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <!--以下是面包屑-->
                    <div class="layui-card-header">
                        <span class="layui-breadcrumb">
                            <a><cite>全部</cite></a>
                          <a id="currentType" href="#"></a>
                          <a id="currentBrand" href="#"></a>
                        </span>
                    </div>

                    <div class="layui-card-body" id="searchResult">
                        <!--下面是一辆车的详情的表格
                        <div>
                            <table class="layui-table" lay-skin="nob">
                                <tr>
                                    <td width="30%">
                                        <dl>
                                            <dt><img src="images/car02.jpg" width="120" height="120"></dt>
                                            <dd><div id="test1"></div></dd>
                                        </dl>
                                    </td>
                                    <td width="50%">
                                        斯柯达野帝<br>
                                        2017款 TSI280 双离合 前行版<br>
                                        紧凑型SUV<br>4275x1793x1682<br>
                                        座位数[个]5<br>
                                        变速箱类型 双离合 7 <br>
                                    </td>
                                    <td><button class="layui-btn layui-btn-normal">立即下单</button></td>
                                </tr>
                            </table>
                        </div>
                        -->

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
    layui.use(['layer', 'element', 'form', 'laydate'], function () {
        var layer = layui.layer
            , form = layui.form;
        var element = layui.element;
        var laydate = layui.laydate;
        //获得jquery

        var $ = layui.jquery;

        //常规用法
        laydate.render({
            elem: '#test1'
        });

        //监听导航点击
        element.on('nav(demo)', function (elem) {
            //console.log(elem)
            //var id = elem.attr('id');
            //layer.msg(id);
            //layer.msg(elem);
        });

        var action = "";
        if(brand==null||brand==''||brand==undefined){
            action = "byType";
        }else{
            action = "byTypeAndBrand";
        }

        //发送异步请求。
        $.ajax({
            type: 'POST',
            async: true,
            url: 'CarsServlet',
            data: {action:action,type:type,brand:brand},
            success: function(msg){

                $("#searchResult").empty(); //清空子元素;
                //再追加子元素。
                var html = "";
                for(var i=0;i<msg.length;i++){
                    html+="<div>\n" +
                        "                            <table class=\"layui-table\" lay-skin=\"nob\">\n" +
                        "                                <tr>\n" +
                        "                                    <td width=\"30%\">\n" +
                        "                                        <dl>\n" +
                        "                                            <dt><img src=\"images/cars/"+msg[i].pic+"\" width=\"160\" height=\"120\"></dt>\n" +
                        "                                            <dd><div id=\"test1\"></div></dd>\n" +
                        "                                        </dl>\n" +
                        "                                    </td>\n" +
                        "                                    <td width=\"50%\">\n" +
                                                               msg[i].information+
                        "                                    </td>\n" +
                        "                                    <td><input class=\"layui-btn layui-btn-normal\" type=\"button\" value=\"立即下单\" onclick=\"window.location.href='orderliu.jsp'\"></td>\n" +
                        "                                </tr>\n" +
                        "                            </table>\n" +
                        "                        </div>";


                }
                $("#searchResult").append(html);

                $("#currentType").html(type).attr("href","search.jsp?type="+type);
                $("#currentBrand").html(brand).attr("href","search.jsp?type="+type+"&brand="+brand);

            },
            dataType:'json'
        });

    });
</script>
</body>
</html>