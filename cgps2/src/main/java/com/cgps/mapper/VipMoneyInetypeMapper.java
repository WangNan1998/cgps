package com.cgps.mapper;

import com.cgps.pojo.VipMoneyInetype;

public interface VipMoneyInetypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(VipMoneyInetype record);

    int insertSelective(VipMoneyInetype record);

    VipMoneyInetype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VipMoneyInetype record);

    int updateByPrimaryKey(VipMoneyInetype record);
}