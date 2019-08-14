package com.etc.entity;

import java.io.Serializable;

public class Type implements Serializable {
    private Integer tId;

    private String tName;

    private static final long serialVersionUID = 1L;

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName == null ? null : tName.trim();
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
        Type other = (Type) that;
        return (this.gettId() == null ? other.gettId() == null : this.gettId().equals(other.gettId()))
            && (this.gettName() == null ? other.gettName() == null : this.gettName().equals(other.gettName()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((gettId() == null) ? 0 : gettId().hashCode());
        result = prime * result + ((gettName() == null) ? 0 : gettName().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", tId=").append(tId);
        sb.append(", tName=").append(tName);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}