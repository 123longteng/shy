package com.etc.vo;

import org.springframework.web.multipart.MultipartFile;

public class FurnitureVO {
    private Integer fId;

    private String fName;

    private Double fPrice;

    private Integer fNumber;

    private String fText;

    private MultipartFile fImage;

    private Integer fLong;

    private Integer fWide;

    private Integer fHigh;

    private String fAmount;

    private Integer tId;

    private Integer oId;

    public Integer getfId() {
        return fId;
    }

    public void setfId(Integer fId) {
        this.fId = fId;
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

    public Integer getfNumber() {
        return fNumber;
    }

    public void setfNumber(Integer fNumber) {
        this.fNumber = fNumber;
    }

    public String getfText() {
        return fText;
    }

    public void setfText(String fText) {
        this.fText = fText;
    }

    public MultipartFile getfImage() {
        return fImage;
    }

    public void setfImage(MultipartFile fImage) {
        this.fImage = fImage;
    }

    public Integer getfLong() {
        return fLong;
    }

    public void setfLong(Integer fLong) {
        this.fLong = fLong;
    }

    public Integer getfWide() {
        return fWide;
    }

    public void setfWide(Integer fWide) {
        this.fWide = fWide;
    }

    public Integer getfHigh() {
        return fHigh;
    }

    public void setfHigh(Integer fHigh) {
        this.fHigh = fHigh;
    }

    public String getfAmount() {
        return fAmount;
    }

    public void setfAmount(String fAmount) {
        this.fAmount = fAmount;
    }

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public Integer getoId() {
        return oId;
    }

    public void setoId(Integer oId) {
        this.oId = oId;
    }

    public FurnitureVO(Integer fId, String fName, Double fPrice, Integer fNumber, String fText, MultipartFile fImage, Integer fLong, Integer fWide, Integer fHigh, String fAmount, Integer tId, Integer oId) {
        this.fId = fId;
        this.fName = fName;
        this.fPrice = fPrice;
        this.fNumber = fNumber;
        this.fText = fText;
        this.fImage = fImage;
        this.fLong = fLong;
        this.fWide = fWide;
        this.fHigh = fHigh;
        this.fAmount = fAmount;
        this.tId = tId;
        this.oId = oId;
    }

    public FurnitureVO() {
    }

    @Override
    public String toString() {
        return "FurnitureVO{" +
                "fId=" + fId +
                ", fName='" + fName + '\'' +
                ", fPrice=" + fPrice +
                ", fNumber=" + fNumber +
                ", fText='" + fText + '\'' +
                ", fImage=" + fImage +
                ", fLong=" + fLong +
                ", fWide=" + fWide +
                ", fHigh=" + fHigh +
                ", fAmount='" + fAmount + '\'' +
                ", tId=" + tId +
                ", oId=" + oId +
                '}';
    }
}
