package com.car.dao.impl;

import com.car.dao.UsersDao;
import com.car.db.DbUtils;
import com.car.entity.Users;
import com.car.utils.MyUtils;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

//用户接口的实现类
public class UsersDaoImpl extends SuperDaoImpl implements UsersDao {

    @Override
    public Users login(String username, String password) {
        //在这里去真正实现用户登录功能.
        String sql = "select * from users where username=? and password=?";

        Users loginUser = null;
        try {
            pstmt = DbUtils.getConnection().prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                loginUser = new Users();
                loginUser.setUid(rs.getInt("uid"));
                loginUser.setUsername(rs.getString("username"));
                loginUser.setPassword(rs.getString("password"));
                loginUser.setBirthday(rs.getDate("birthday"));
                loginUser.setEmail(rs.getString("email"));
                loginUser.setRegdate(rs.getDate("regdate"));
            }
            return loginUser;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
        finally{
            this.destroyResource();
        }

    }

    @Override
    public boolean reg(Users user) {
        String sql = "insert into users (username,password,email,birthday,regdate) values (?,?,?,?,?)";

        try {
            pstmt = DbUtils.getConnection().prepareStatement(sql);
            //给参数赋值
            pstmt.setString(1,user.getUsername());
            pstmt.setString(2,user.getPassword());
            pstmt.setString(3,user.getEmail());
            pstmt.setDate(4, MyUtils.utilDateToSqlDate(user.getBirthday()));
            pstmt.setDate(5,MyUtils.utilDateToSqlDate(user.getRegdate()));
            //执行更新语句
            int result = pstmt.executeUpdate();
            if(result>0){
                return true;
            }else{
                return false;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        } finally {
            this.destroyResource(); //释放资源
        }
    }
}
