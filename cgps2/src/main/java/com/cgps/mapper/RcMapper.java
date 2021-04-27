package com.cgps.mapper;

import com.cgps.pojo.Rc;

public interface RcMapper {
    int deleteByPrimaryKey(Integer rcId);

    int insert(Rc record);

    int insertSelective(Rc record);

    Rc selectByPrimaryKey(Integer rcId);

    int updateByPrimaryKeySelective(Rc record);

    int updateByPrimaryKey(Rc record);

    /**
     * 查询指定天数内的团长新增数量
     * */
    int getRcQuantity(Integer day);
}