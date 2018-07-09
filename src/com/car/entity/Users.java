package com.car.entity;

import java.util.Date;

public class Users {

    private int uid; //用户编号
    private String username; //用户名
    private String password; //密码
    private String email; //电子邮箱
    private Date birthday; //生日
    private Date regdate; //注册时间

    public Users() {
    }

    public Users(int uid, String username, String password, String email, Date birthday, Date regdate) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.email = email;
        this.birthday = birthday;
        this.regdate = regdate;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    @Override
    public String toString() {
        return "Users{" +
                "uid=" + uid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", birthday=" + birthday +
                ", regdate=" + regdate +
                '}';
    }
}
