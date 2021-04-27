package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 会员状态表
    */
@Data
public class VipState {
    private Integer id;

    private String name;

    private Date createTime;
}