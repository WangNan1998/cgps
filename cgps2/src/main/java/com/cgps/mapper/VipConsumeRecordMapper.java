package com.cgps.mapper;

import com.cgps.pojo.VipConsumeRecord;

public interface VipConsumeRecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(VipConsumeRecord record);

    int insertSelective(VipConsumeRecord record);

    VipConsumeRecord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VipConsumeRecord record);

    int updateByPrimaryKey(VipConsumeRecord record);
}