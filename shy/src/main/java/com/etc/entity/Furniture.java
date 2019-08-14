package com.etc.entity;

import java.io.Serializable;

public class Furniture implements Serializable {
    private Integer fId;

    private String fName;

    private Double fPrice;

    private Integer fNumber;

    private String fText;

    private String fImage;

    private Integer fLong;

    private Integer fWide;

    private Integer fHigh;

    private String fAmount;

    private Integer tId;

    private Integer oId;

    private static final long serialVersionUID = 1L;

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
        this.fName = fName == null ? null : fName.trim();
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
        this.fText = fText == null ? null : fText.trim();
    }

    public String getfImage() {
        return fImage;
    }

    public void setfImage(String fImage) {
        this.fImage = fImage == null ? null : fImage.trim();
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
        this.fAmount = fAmount == null ? null : fAmount.trim();
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

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Furniture other = (Furniture) that;
        return (this.getfId() == null ? other.getfId() == null : this.getfId().equals(other.getfId()))
            && (this.getfName() == null ? other.getfName() == null : this.getfName().equals(other.getfName()))
            && (this.getfPrice() == null ? other.getfPrice() == null : this.getfPrice().equals(other.getfPrice()))
            && (this.getfNumber() == null ? other.getfNumber() == null : this.getfNumber().equals(other.getfNumber()))
            && (this.getfText() == null ? other.getfText() == null : this.getfText().equals(other.getfText()))
            && (this.getfImage() == null ? other.getfImage() == null : this.getfImage().equals(other.getfImage()))
            && (this.getfLong() == null ? other.getfLong() == null : this.getfLong().equals(other.getfLong()))
            && (this.getfWide() == null ? other.getfWide() == null : this.getfWide().equals(other.getfWide()))
            && (this.getfHigh() == null ? other.getfHigh() == null : this.getfHigh().equals(other.getfHigh()))
            && (this.getfAmount() == null ? other.getfAmount() == null : this.getfAmount().equals(other.getfAmount()))
            && (this.gettId() == null ? other.gettId() == null : this.gettId().equals(other.gettId()))
            && (this.getoId() == null ? other.getoId() == null : this.getoId().equals(other.getoId()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getfId() == null) ? 0 : getfId().hashCode());
        result = prime * result + ((getfName() == null) ? 0 : getfName().hashCode());
        result = prime * result + ((getfPrice() == null) ? 0 : getfPrice().hashCode());
        result = prime * result + ((getfNumber() == null) ? 0 : getfNumber().hashCode());
        result = prime * result + ((getfText() == null) ? 0 : getfText().hashCode());
        result = prime * result + ((getfImage() == null) ? 0 : getfImage().hashCode());
        result = prime * result + ((getfLong() == null) ? 0 : getfLong().hashCode());
        result = prime * result + ((getfWide() == null) ? 0 : getfWide().hashCode());
        result = prime * result + ((getfHigh() == null) ? 0 : getfHigh().hashCode());
        result = prime * result + ((getfAmount() == null) ? 0 : getfAmount().hashCode());
        result = prime * result + ((gettId() == null) ? 0 : gettId().hashCode());
        result = prime * result + ((getoId() == null) ? 0 : getoId().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", fId=").append(fId);
        sb.append(", fName=").append(fName);
        sb.append(", fPrice=").append(fPrice);
        sb.append(", fNumber=").append(fNumber);
        sb.append(", fText=").append(fText);
        sb.append(", fImage=").append(fImage);
        sb.append(", fLong=").append(fLong);
        sb.append(", fWide=").append(fWide);
        sb.append(", fHigh=").append(fHigh);
        sb.append(", fAmount=").append(fAmount);
        sb.append(", tId=").append(tId);
        sb.append(", oId=").append(oId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}