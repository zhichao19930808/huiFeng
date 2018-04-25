package com.huifeng.pojo;

import java.sql.Date;

public class UserEntity{
    private  int id;
    private String loginName;//登录名
    private String name;//用户名
    private String nickName;//昵称
    private String password;//密码
    private String phone;//电话
    private String IdCard;//身份证
    private Date birthday;//生日
    private int sex;//性别（0 男，1 女）

    public UserEntity() {
    }

    public UserEntity(int id, String loginName, String name, String nickName, String password, String phone, String idCard, Date birthday, int sex) {
        this.id = id;
        this.loginName = loginName;
        this.name = name;
        this.nickName = nickName;
        this.password = password;
        this.phone = phone;
        IdCard = idCard;
        this.birthday = birthday;
        this.sex = sex;
    }

    public UserEntity(String loginName, String name, String nickName, String password, String phone, String idCard, Date birthday, int sex) {
        this.loginName = loginName;
        this.name = name;
        this.nickName = nickName;
        this.password = password;
        this.phone = phone;
        IdCard = idCard;
        this.birthday = birthday;
        this.sex = sex;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdCard() {
        return IdCard;
    }

    public void setIdCard(String idCard) {
        IdCard = idCard;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "UserEntity{" +
                "id=" + id +
                ", loginName='" + loginName + '\'' +
                ", name='" + name + '\'' +
                ", nickName='" + nickName + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", IdCard='" + IdCard + '\'' +
                ", birthday=" + birthday +
                ", sex=" + sex +
                '}';
    }
}
