package com.etc.vo;


public class OrderVO2 {
    private String oId;
    private String oDate;
    private String idNum;


    public OrderVO2(String oId, String oDate, String idNum) {
        this.oId = oId;
        this.oDate = oDate;
        this.idNum = idNum;
    }

    public OrderVO2() {
    }

    @Override
    public String toString() {
        return "OrderVO2{" +
                "oId='" + oId + '\'' +
                ", oDate='" + oDate + '\'' +
                ", idNum='" + idNum + '\'' +
                '}';
    }

    public String getoId() {
        return oId;
    }

    public void setoId(String oId) {
        this.oId = oId;
    }

    public String getoDate() {
        return oDate;
    }

    public void setoDate(String oDate) {
        this.oDate = oDate;
    }

    public String getIdNum() {
        return idNum;
    }

    public void setIdNum(String idNum) {
        this.idNum = idNum;
    }
}
