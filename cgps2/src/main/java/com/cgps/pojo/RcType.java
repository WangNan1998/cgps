package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 团长类型表
    */
@Data
public class RcType {
    private Integer id;

    private String name;

    private Date createTime;
}