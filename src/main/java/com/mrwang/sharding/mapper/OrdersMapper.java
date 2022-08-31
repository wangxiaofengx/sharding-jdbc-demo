package com.mrwang.sharding.mapper;

import com.mrwang.sharding.bean.Orders;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface OrdersMapper {

    @Insert("insert into orders(id,order_type,customer_id,amount) values(#{id},#{orderType},#{customerId},#{amount})")
    void insert(Orders orders);

//    @Select("select * from orders a where a.id = #{id}")
    @Select("select * from orders a left join order_item b on a.id=b.order_id where a.id = #{id}")
    Orders selectOne(Integer id);


    @Select("select * from orders a inner join order_item b on a.id=b.order_id where a.id = #{id} and a.customer_id=#{customerId}")
    Orders selectOneDB(Orders orders);
}