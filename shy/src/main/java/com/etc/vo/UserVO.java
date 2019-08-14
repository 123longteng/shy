package com.etc.vo;

import org.hibernate.validator.constraints.Length;

public class UserVO {
    private String name;
    private String pass;
    private String tell;
    private String address;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }


    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTell() {
        return tell;
    }

    public void setTell(String tell) {
        this.tell = tell;
    }

    @Override
    public String toString() {
        return "UserVO{" +
                "name='" + name + '\'' +
                ", pass='" + pass + '\'' +
                ", tell='" + tell + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
