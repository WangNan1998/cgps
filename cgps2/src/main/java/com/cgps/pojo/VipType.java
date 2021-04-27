package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 会员类型表
    */
@Data
public class VipType {
    private Integer id;

    private String name;

    private Date createTime;
}