package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 团长区域表
    */
@Data
public class RcArea {
    private Integer id;

    private String name;

    private Date createTime;
}