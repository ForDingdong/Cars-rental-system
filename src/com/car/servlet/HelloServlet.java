package com.car.servlet;

//alt+enter 自动会导入类

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//ctrl+p 查看方法的参数

@WebServlet(value={"/HelloServlet"})
public class HelloServlet extends HttpServlet {

    //alt+insert 快速重写父类的方法

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);
        //System.out.println("你好，HelloServlet!");
        //给浏览器输出信息怎么办呢？
        //1.设置输出contentType.
        resp.setContentType("text/html;charset=utf-8");
        //2.再获得输出流
        PrintWriter out = resp.getWriter();
        out.println("<h1>Hello,Servlet!</h1>");
        out.println("<hr>");
        out.flush(); //清空缓冲器
        out.close();

    }
}
