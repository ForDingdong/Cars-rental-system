<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul class="layui-nav layui-nav-tree layui-bg-cyan layui-inline" lay-filter="demo" id="carCatalog">
    <!--
    <li class="layui-nav-item layui-nav-itemed">
        <a href="javascript:;">轿车</a>
        <dl class="layui-nav-child">
            <dd><a href="javascript:haha();">大众</a></dd>
            <dd><a href="javascript:;">丰田</a></dd>
            <dd><a href="javascript:;">本田</a></dd>
            <dd><a href="javascript:;">马自达</a></dd>
        </dl>
    </li>
    -->

</ul>
<script src="jquery-2.1.4/jquery.js"></script>
<script>

    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(decodeURI(r[2]));
        return null;
    }


    initCatalog();

    //如何获得页面传过来的参数呢？type='轿车'，我是不是要获得这个轿车参数。
    var type = GetQueryString('type');
    var brand = GetQueryString('brand');

    function initCatalog() {

        //alert("哈哈!");
        $.ajax({
            type: 'POST',
            async: true,
            url: 'CatalogServlet',
            success: function (msg) {
                //alert(msg);
                $("#carCatalog").empty();
                var html = "";
                for (var i = 0; i < msg.length; i++) {

                    var subHtml = ""
                    for (var j = 0; j < msg[i].brand.length; j++) {
                        subHtml += "<dd><a href=\"search.jsp?type="+msg[i].type+"&brand="+msg[i].brand[j]+"\">" + msg[i].brand[j] + "</a></dd>";
                    }

                    if(msg[i].type==type) {
                        html += "<li class=\"layui-nav-item layui-nav-itemed\">\n" +
                            "        <a href=\"javascript:;\">" + msg[i].type + "</a>\n" +
                            "        <dl class=\"layui-nav-child\">\n" +
                            subHtml +
                            "        </dl>\n" +
                            "    </li>"
                    }else{
                        html += "<li class=\"layui-nav-item \">\n" +
                            "        <a href=\"javascript:;\">" + msg[i].type + "</a>\n" +
                            "        <dl class=\"layui-nav-child\">\n" +
                            subHtml +
                            "        </dl>\n" +
                            "    </li>"
                    }

                }
                $("#carCatalog").append(html);

            },
            dataType: 'json'
        });
    }


</script>
