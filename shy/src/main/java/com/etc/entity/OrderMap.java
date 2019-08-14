package com.etc.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderMap {
    private String oId;
    private Integer fId;
    private Integer oNumber;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date oDate;
    private Integer oStatus;
    private String fImage;
    private String fName;
    private String fPrice;
}
