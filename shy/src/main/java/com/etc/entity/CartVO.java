package com.etc.entity;


import java.io.Serializable;

public class CartVO implements Serializable {//序列化
    private Integer uId;
    private Integer fId;
    private String fImage;
    private String fName;
    private Double fPrice;
    private Integer cNumber;

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

    public String getfImage() {
        return fImage;
    }

    public void setfImage(String fImage) {
        this.fImage = fImage;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public Double getfPrice() {
        return fPrice;
    }

    public void setfPrice(Double fPrice) {
        this.fPrice = fPrice;
    }

    public Integer getcNumber() {
        return cNumber;
    }

    public void setcNumber(Integer cNumber) {
        this.cNumber = cNumber;
    }


    public CartVO() {
    }

    public CartVO(Integer uId, Integer fId, String fImage, String fName, Double fPrice, Integer cNumber) {
        this.uId = uId;
        this.fId = fId;
        this.fImage = fImage;
        this.fName = fName;
        this.fPrice = fPrice;
        this.cNumber = cNumber;
    }

    @Override
    public String toString() {
        return "CartVO{" +
                "uId=" + uId +
                ", fId=" + fId +
                ", fImage='" + fImage + '\'' +
                ", fName='" + fName + '\'' +
                ", fPrice=" + fPrice +
                ", cNumber=" + cNumber +
                '}';
    }
}
