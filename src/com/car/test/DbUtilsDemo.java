package com.car.test;

import com.car.db.DbUtils;

import java.sql.Connection;

public class DbUtilsDemo {

    public static void main(String[] args) throws Exception{

        Connection conn1 = DbUtils.getConnection();
        Connection conn2 = DbUtils.getConnection();

        //由于是单例模式，我们可以断定conn1==conn2;
        System.out.println(conn1 == conn2); // true;
    }
}
