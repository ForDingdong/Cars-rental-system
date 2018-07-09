<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/6
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--下面是首页的导航栏-->
<ul class="layui-nav" lay-filter="demo">
    <!--
    <li class="layui-nav-item"><img src="images/logo.png"></li>
    -->
    <img src="images/logo.png">
    <span class="layui-nav-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
    <li class="layui-nav-item"><a href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i>首页</a></li>
    <li class="layui-nav-item"><a href="company.jsp"><i class="fa fa-info-circle" aria-hidden="true"></i>公司简介</a></li>
    <li class="layui-nav-item">
        <a href="javascript:;"><i class="fa fa-car" aria-hidden="true"></i>车型查询</a>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
            <dd><a href="search.jsp?type=轿车">轿车</a></dd>
            <dd><a href="search.jsp?type=SUV">SUV</a></dd>
            <dd><a href="search.jsp?type=MPV">MPV</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item"><a href="xieyi.jsp"><i class="fa fa-question" aria-hidden="true"></i>租车事项</a></li>

    <c:choose>
        <c:when test="${sessionScope.loginUser==null}">
            <li class="layui-nav-item"><a href="login.jsp"><i class="fa fa-user-o" aria-hidden="true"></i>登录</a>
            </li>
        </c:when>
        <c:otherwise>
            <li class="layui-nav-item" lay-unselect="">
                <a href="javascript:;"><img src="avatars/avatar5.png" class="layui-nav-img">${sessionScope.loginUser.username}</a>
                <dl class="layui-nav-child">
                    <dd><a href="myorder.jsp">我的订单</a></dd>
                    <dd><a href="UsersServlet?action=logout">注销</a></dd>
                </dl>
            </li>
        </c:otherwise>
    </c:choose>
</ul>