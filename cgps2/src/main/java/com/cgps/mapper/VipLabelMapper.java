package com.cgps.mapper;

import com.cgps.pojo.VipLabel;

public interface VipLabelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(VipLabel record);

    int insertSelective(VipLabel record);

    VipLabel selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VipLabel record);

    int updateByPrimaryKey(VipLabel record);
}