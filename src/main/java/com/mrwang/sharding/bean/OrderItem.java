package com.mrwang.sharding.bean;

public class OrderItem {

    private Integer id;
    private Integer orderId;
    private String name;

    public Integer getId() {
        return id;
    }

    public OrderItem setId(Integer id) {
        this.id = id;
        return this;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public OrderItem setOrderId(Integer orderId) {
        this.orderId = orderId;
        return this;
    }

    public String getName() {
        return name;
    }

    public OrderItem setName(String name) {
        this.name = name;
        return this;
    }

    @Override
    public String toString() {
        return "OrderItem{" +
                "id=" + id +
                ", orderId=" + orderId +
                ", name='" + name + '\'' +
                '}';
    }
}
