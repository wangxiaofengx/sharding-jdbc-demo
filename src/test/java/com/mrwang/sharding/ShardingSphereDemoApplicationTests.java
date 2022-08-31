package com.mrwang.sharding;

import com.mrwang.sharding.bean.*;
import com.mrwang.sharding.mapper.*;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Random;

@SpringBootTest
class ShardingSphereDemoApplicationTests {

    @Autowired
    private OrdersMapper ordersMapper;

    @Autowired
    private DictOrderTypeMapper dictOrderTypeMapper;

    @Autowired
    private OrderItemMapper orderItemMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private AccountMapper accountMapper;

    @Test
    public void addOrders() {
        for (int i = 1; i <= 10; i++) {
            Orders orders = new Orders();
            orders.setId(i);
            orders.setCustomerId(i);
            orders.setOrderType(i);
            orders.setAmount(1000.0 * i);
            ordersMapper.insert(orders);
        }
    }

    @Test
    public void queryOrders() {
        Orders orders = ordersMapper.selectOne(1);
        System.out.println(orders);
    }

    @Test
    public void queryOrderItem() {
        OrderItem orders = orderItemMapper.selectOne(1);
        System.out.println(orders);
    }

    @Test
    public void addOrdersDB() {
        for (int i = 1; i <= 10; i++) {
            Orders orders = new Orders();
            orders.setId(i);
            orders.setCustomerId(new Random().nextInt(10));
            orders.setOrderType(i);
            orders.setAmount(1000.0 * i);
            ordersMapper.insert(orders);
        }
    }

    @Test
    public void queryOrdersDB() {
        Orders orders = new Orders();
        orders.setCustomerId(5);
        orders.setId(6);
        Orders o = ordersMapper.selectOneDB(orders);
        System.out.println(o);
    }

    @Test
    public void insertDictOrderType() {
        for (int i = 1; i <= 10; i++) {
            DictOrderType dictOrderType = new DictOrderType();
            dictOrderType.setOrderType("" + i);
            dictOrderTypeMapper.insertDictOrderType(dictOrderType);
        }
    }

    @Test
    public void deleteDictOrderType() {
        dictOrderTypeMapper.DeleteDictOrderType("1");
    }

    @Test
    public void insertUser() {
        for (int i = 1; i <= 10; i++) {
            User user = new User();
            user.setId(i);
            user.setName("name" + i);
            userMapper.insert(user);
        }
    }

    @Test
    public void insertAccount() {
        for (int i = 1; i <= 10; i++) {
            Account account = new Account();
            account.setId(i);
            account.setUserId(i);
            account.setMoney(i * 100);
            accountMapper.insert(account);
        }
    }

    @Test
    public void selectAccount() {
        Account account = accountMapper.findByUserId(1);
        System.out.println(account);
    }
}