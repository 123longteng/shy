package com.etc.vo;


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;


public class OrderVO {
    private String oId;
    private Integer uId;
    private Integer fId;
    private Integer oNumber;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date oDate;

    public Date getoDate() {
        return oDate;
    }

    public void setoDate(Date oDate) {
        this.oDate = oDate;
    }

    public String getoId() {
        return oId;
    }

    public void setoId(String oId) {
        this.oId = oId;
    }


    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Integer getfId() {
        return fId;
    }

    public void setfId(Integer fId) {
        this.fId = fId;
    }

    public Integer getoNumber() {
        return oNumber;
    }

    public void setoNumber(Integer oNumber) {
        this.oNumber = oNumber;
    }
}
