package com.car.dao.impl;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

//所有的业务逻辑接口实现类的父类
public class SuperDaoImpl {

    protected Statement stmt; //语句对象
    protected PreparedStatement pstmt; //带参数的语句对象。
    protected CallableStatement cstmt; //调用存储过程的语句对象。
    protected ResultSet rs;

    //设计为protected修饰符的目的是为了让子类能继承。

    //释放资源的方法
    protected void destroyResource(){
        try{
            if(stmt!=null){
                stmt.close();
                stmt=null;
            }
            if(pstmt!=null){
                pstmt.close();
                pstmt=null;
            }
            if(cstmt!=null){
                cstmt.close();
                cstmt=null;
            }
            if(rs!=null){
                rs.close();
                rs = null;
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }

    }
}
