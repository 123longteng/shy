package com.etc.entity;

import java.io.Serializable;

public class User implements Serializable {
    private Integer uId;

    private String uName;

    private String uPass;

    private String uTell;

    private String uAddress;

    private static final long serialVersionUID = 1L;

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName == null ? null : uName.trim();
    }

    public String getuPass() {
        return uPass;
    }

    public void setuPass(String uPass) {
        this.uPass = uPass == null ? null : uPass.trim();
    }

    public String getuTell() {
        return uTell;
    }

    public void setuTell(String uTell) {
        this.uTell = uTell == null ? null : uTell.trim();
    }

    public String getuAddress() {
        return uAddress;
    }

    public void setuAddress(String uAddress) {
        this.uAddress = uAddress == null ? null : uAddress.trim();
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
        User other = (User) that;
        return (this.getuId() == null ? other.getuId() == null : this.getuId().equals(other.getuId()))
            && (this.getuName() == null ? other.getuName() == null : this.getuName().equals(other.getuName()))
            && (this.getuPass() == null ? other.getuPass() == null : this.getuPass().equals(other.getuPass()))
            && (this.getuTell() == null ? other.getuTell() == null : this.getuTell().equals(other.getuTell()))
            && (this.getuAddress() == null ? other.getuAddress() == null : this.getuAddress().equals(other.getuAddress()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getuId() == null) ? 0 : getuId().hashCode());
        result = prime * result + ((getuName() == null) ? 0 : getuName().hashCode());
        result = prime * result + ((getuPass() == null) ? 0 : getuPass().hashCode());
        result = prime * result + ((getuTell() == null) ? 0 : getuTell().hashCode());
        result = prime * result + ((getuAddress() == null) ? 0 : getuAddress().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", uId=").append(uId);
        sb.append(", uName=").append(uName);
        sb.append(", uPass=").append(uPass);
        sb.append(", uTell=").append(uTell);
        sb.append(", uAddress=").append(uAddress);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}