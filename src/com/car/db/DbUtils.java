package com.car.db;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

//自定义的一个数据库的工具类
public class DbUtils {
    //私有的静态常量，问题是常量必须先初始化，你初始化了没。
    private static final String driver;
    private static final String username;
    private static final String password;
    private static final String url;

    private static Connection conn =null; //连接对象


    static {
        //以下四个是临时的局部变量。
        String t_driver = null;
        String t_username = null;
        String t_password = null;
        String t_url = null;
        try {
            Properties pro = new Properties();
            InputStream in = DbUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
            pro.load(in);

            t_driver = pro.getProperty("driver");
            t_username = pro.getProperty("user");
            t_password = pro.getProperty("password");
            t_url = pro.getProperty("url");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        driver = t_driver;
        username = t_username;
        password = t_password;
        url = t_url;

        try {
            Class.forName(driver); //加载驱动
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    //设计为一个单例模式.
    public static Connection getConnection() throws Exception{
        //说明conn没有初始化过。
        if(conn==null){
            conn = DriverManager.getConnection(url,username,password);
        }
        return conn;
    }
}
