package com.car.servlet;

import com.car.dao.UsersDao;
import com.car.dao.impl.UsersDaoImpl;
import com.car.entity.Users;
import com.car.utils.MyUtils;
import net.sf.json.JSONObject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;


@WebServlet (value = {"/UsersServlet"})
//封装了所有用户相关的servlet
//登录,注册,添加,删除,修改

public class UsersServlet extends HttpServlet {

    private String action; //表示要执行的动作的名字
    private UsersDao uDao = new UsersDaoImpl();

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //说明用户传递了action参数
        if(req.getParameter("action")!=null){
           this.action = req.getParameter("action");
        }

        switch(this.action){
            case "login":
                //执行的是用户登录:
                login(req,resp);
                break;
            case "logout":
                logout(req,resp);
                break;
            case "reg":
                reg(req,resp);
                break;
        }
    }

    //执行用户登录
    /*
    private void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        Users loginUser =  uDao.login(username,password);
        if(loginUser!=null){
            //说明登录成功了,怎么办？
            //跳转到index.jsp
            //把这个登录成功的用户保存到回话(session)
            req.getSession().setAttribute("loginUser",loginUser);

            resp.sendRedirect(req.getContextPath()+"/index.jsp");
        }else{
            //说明登录失败，原地不动。
            resp.sendRedirect(req.getContextPath()+"/login.jsp");
            //return;
        }
    }*/

    private void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        resp.setContentType("text/plain;charset=utf-8");
        PrintWriter out =resp.getWriter();

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        Users loginUser =  uDao.login(username,password);
        if(loginUser!=null){
            //说明登录成功了,怎么办？
            //跳转到index.jsp
            //把这个登录成功的用户保存到回话(session)
            req.getSession().setAttribute("loginUser",loginUser);

            //resp.sendRedirect(req.getContextPath()+"/index.jsp");
            out.print("success");
            out.flush();
            out.close();
        }else{
            //说明登录失败，原地不动。
            //resp.sendRedirect(req.getContextPath()+"/login.jsp");
            //return;

            out.print("failure");
            out.flush();
            out.close();
        }
    }

    //执行用户注销
    private void logout(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        //1.把sesson中保存的用户对象删除了。
        if(req.getSession().getAttribute("loginUser")!=null) {
            req.getSession().removeAttribute("loginUser");
        }
        //2.页面跳转到登录页面
        resp.sendRedirect(req.getContextPath()+"/login.jsp");
    }

    //执行用户注册
    /*
    private void reg(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        resp.setContentType("text/plain;charset=utf-8");
        PrintWriter out =resp.getWriter();


        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String s_birthday = req.getParameter("birthday");
        //String s_regdate = req.getParameter("regdate");

        Date birthday = MyUtils.stringToDate(s_birthday);
        //Date regdate = MyUtils.stringToDate(s_regdate);

        Users user = new Users();
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setBirthday(birthday);
        user.setRegdate(new Date());

        if(uDao.reg(user)){
            //说明注册成功
            out.write("success");
            out.flush();
            out.close();
        }else{
            out.write("failure");
            out.flush();
            out.close();
        }

    }*/

    private void reg(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        resp.setContentType("text/plain;charset=utf-8");
        PrintWriter out =resp.getWriter();

        String data = req.getParameter("data"); //获得json格式的数据。
        System.out.println(data);
        //如何把json对象转换为java对象。
        JSONObject jsonObject=JSONObject.fromObject(data);
        Users user=(Users)JSONObject.toBean(jsonObject, Users.class);
        user.setRegdate(new Date());
        if(uDao.reg(user)){
            //说明注册成功
            out.write("success");
            out.flush();
            out.close();
        }else{
            out.write("failure");
            out.flush();
            out.close();
        }

    }

}
