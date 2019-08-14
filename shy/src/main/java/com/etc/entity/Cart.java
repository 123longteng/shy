package com.etc.entity;

import java.io.Serializable;

public class Cart implements Serializable {//序列化
    private Integer uId;

    private Integer fId;

    private Integer cNumber;

    private static final long serialVersionUID = 1L;

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

    public Integer getcNumber() {
        return cNumber;
    }

    public void setcNumber(Integer cNumber) {
        this.cNumber = cNumber;
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
        Cart other = (Cart) that;
        return (this.getuId() == null ? other.getuId() == null : this.getuId().equals(other.getuId()))
            && (this.getfId() == null ? other.getfId() == null : this.getfId().equals(other.getfId()))
            && (this.getcNumber() == null ? other.getcNumber() == null : this.getcNumber().equals(other.getcNumber()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getuId() == null) ? 0 : getuId().hashCode());
        result = prime * result + ((getfId() == null) ? 0 : getfId().hashCode());
        result = prime * result + ((getcNumber() == null) ? 0 : getcNumber().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", uId=").append(uId);
        sb.append(", fId=").append(fId);
        sb.append(", cNumber=").append(cNumber);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}