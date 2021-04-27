package com.cgps.util;

import lombok.Data;

@Data
public class Paging {
    private Integer pageIndex;  // 当前页
    private Integer pageSize;   // 页面显示大小
    private Integer totalPage;  // 总页数
    private Integer totalQuantity;  // 数据总条数
    /*private Integer currentPage;    // 当前页*/

    public Paging(Integer pageIndex,Integer pageSize){
        this.pageIndex = pageIndex;
        this.pageSize = pageSize;
    }
}
