package com.mrwang.sharding.mapper;

import com.mrwang.sharding.bean.OrderItem;
import com.mrwang.sharding.bean.Orders;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface OrderItemMapper {

    @Select("select * from order_item where order_id = #{id}")
    public OrderItem selectOne(Integer id);
}
