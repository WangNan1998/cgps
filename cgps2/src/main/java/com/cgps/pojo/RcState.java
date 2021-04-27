package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 团长状态表
    */
@Data
public class RcState {
    private Integer id;

    private String name;

    private Date createTime;
}