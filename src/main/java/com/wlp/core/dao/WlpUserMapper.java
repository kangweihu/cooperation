package com.wlp.core.dao;

import com.wlp.api.entity.WlpUser;

public interface WlpUserMapper {
    int deleteByPrimaryKey(String id);

    int insert(WlpUser record);

    int insertSelective(WlpUser record);

    WlpUser selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(WlpUser record);

    int updateByPrimaryKey(WlpUser record);
}