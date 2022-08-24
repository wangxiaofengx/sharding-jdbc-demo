package com.mrwang.sharding;

import com.mrwang.sharding.bean.Orders;
import com.mrwang.sharding.mapper.OrdersMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Random;

@SpringBootTest
class ShardingsphereDemoApplicationTests {

    @Autowired
    private OrdersMapper ordersMapper;
    @Test
    public void addOrders(){
        for (int i = 1; i <=10 ; i++) {
            Orders orders = new Orders();
            orders.setId(i);
            orders.setCustomerId(i);
            orders.setOrderType(i);
            orders.setAmount(1000.0*i);
            ordersMapper.insert(orders);
        }
    }
    @Test
    public void queryOrders(){
        Orders orders = ordersMapper.selectOne(1);
        System.out.println(orders);
    }

    @Test
    public void addOrdersDB(){
        for (int i = 1; i <=10 ; i++) {
            Orders orders = new Orders();
            orders.setId(i);
            orders.setCustomerId(new Random().nextInt(10));
            orders.setOrderType(i);
            orders.setAmount(1000.0*i);
            ordersMapper.insert(orders);
        }
    }
    @Test
    public void queryOrdersDB(){
        Orders orders = new Orders();
        orders.setCustomerId(7);
        orders.setId(7);
        Orders o = ordersMapper.selectOneDB(orders);
        System.out.println(o);
    }
}