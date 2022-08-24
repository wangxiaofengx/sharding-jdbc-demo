package com.mrwang.sharding.mapper;

import com.mrwang.sharding.bean.DictOrderType;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface DictOrderTypeMapper {

    @Insert("insert into dict_order_type(order_type) values(#{orderType})")
    public void insertDictOrderType(DictOrderType dictOrderType);

    @Delete("delete from dict_order_type where order_type = #{id}")
    public void DeleteDictOrderType(String id);
}
