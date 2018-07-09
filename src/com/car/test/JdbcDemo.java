package com.car.test;

/*
* Java连接MySQL数据库的小例子
*
* 1.加载驱动，所谓驱动就是一个类。class
*
* 2.获得数据库连接对象
*
* 3.编写SQL语句
*
* 4.创建语句对象
*
* 5.执行语句对象
*
* 6.获得结果集
*
* 7.释放资源
*
*
* */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JdbcDemo {

    public static void main(String[] args) throws Exception {

        String driver = "com.mysql.jdbc.Driver"; //驱动的类名
        String user = "root";
        String password = "root";
        String url = "jdbc:mysql://localhost:3306/cardemo?&useUnicode=true&characterEncoding=utf-8";
        Class.forName(driver); //加载驱动

        Connection conn = DriverManager.getConnection(url,user,password);

        if(conn!=null){
            System.out.println("数据库连接成功！");
        }else{
            System.out.println("数据库连接失败！");
        }

        //编写sql语句
        String sql = "select * from users";

        //
        Statement stmt = conn.createStatement();
        ResultSet rs =  stmt.executeQuery(sql);

        while(rs.next()){
            System.out.println(rs.getInt("uid") + "," + rs.getString("username") + "," + rs.getString("password"));
        }

        rs.close();
        conn.close();

    }
}
