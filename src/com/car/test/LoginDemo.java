package com.car.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

/*
* 1.xml 配置文档
* 2.properties  属性文档
* 3.ini  配置文档
* ....
*
*
*
* */


public class LoginDemo {

    public static final String driver = "com.mysql.jdbc.Driver";
    public static final String username = "root";
    public static final String password = "root";
    public static final String url = "jdbc:mysql://localhost:3306/cardemo?&useUnicode=true&characterEncoding=utf-8";
    private static Connection conn = null;
    //加载驱动
    static{

        try{
            Class.forName(driver);
            conn = DriverManager.getConnection(url,username,password);
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }

    public static boolean login(String username,String password){
        String sql = "select * from users where username=? and password = ?";
        PreparedStatement pstmt=null;
        ResultSet rs = null;
        try{
            pstmt = conn.prepareCall(sql);
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            rs = pstmt.executeQuery();
            if(rs.next()){
                return true;
            }else{
                return false;
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
            return false;
        }
        finally{
            try{
                if(rs!=null){
                    rs.close();
                    rs = null;
                }
                if(pstmt!=null){
                    pstmt.close();
                    pstmt = null;
                }
                if(conn!=null){
                    conn.close();
                    conn = null;
                }
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {

        String username; //用户名
        String password; //密码

        Scanner sc = new Scanner(System.in);

        System.out.println("请输入用户名：");
        username = sc.next();
        System.out.println("请输入密码：");
        password = sc.next();
        if(login(username,password)){
            System.out.println("登录成功！");
        }else{
            System.out.println("登录失败，请检查用户名或者密码是否正确！");
        }

    }
}
