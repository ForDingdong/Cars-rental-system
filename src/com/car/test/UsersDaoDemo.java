package com.car.test;

import com.car.dao.UsersDao;
import com.car.dao.impl.UsersDaoImpl;
import com.car.entity.Users;

public class UsersDaoDemo {

    public static void main(String[] args) {

        String username = "admin";
        String password = "5555";
        UsersDao uDao = new UsersDaoImpl();
        Users loginUser = uDao.login(username,password);
        if(loginUser!=null){
            System.out.println("登录成功");
        }else{
            System.out.println("登录失败");
        }
    }
}
