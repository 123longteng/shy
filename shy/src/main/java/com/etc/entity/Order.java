package com.etc.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;


public class Order implements Serializable {
    private String oId;
    private Integer uId;
    private Integer fId;
    private Integer oNumber;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date oDate;
    private Integer oStatus;

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

    public Date getoDate() {
        return oDate;
    }

    public void setoDate(Date oDate) {
        this.oDate = oDate;
    }

    public Integer getoStatus() {
        return oStatus;
    }

    public void setoStatus(Integer oStatus) {
        this.oStatus = oStatus;
    }

    public Order(String oId, Integer uId, Integer fId, Integer oNumber, Date oDate, Integer oStatus) {
        this.oId = oId;
        this.uId = uId;
        this.fId = fId;
        this.oNumber = oNumber;
        this.oDate = oDate;
        this.oStatus = oStatus;
    }

    public Order() {
    }

    @Override
    public String toString() {
        return "Order{" +
                "oId='" + oId + '\'' +
                ", uId=" + uId +
                ", fId=" + fId +
                ", oNumber=" + oNumber +
                ", oDate=" + oDate +
                ", oStatus=" + oStatus +
                '}';
    }
}