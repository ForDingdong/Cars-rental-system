package com.car.dao;

import com.car.entity.Users;

//封装了用户的所有业务逻辑接口,这里应该实现用户所有的操作，比如：登录，注册，删除，修改...
public interface UsersDao {

    //返回一个用户对象，如果这个用户对象不为空，说明登录成功了。
    public Users login(String username, String password);

    //用户注册
    public boolean reg(Users user);

}
