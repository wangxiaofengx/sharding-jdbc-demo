package com.mrwang.sharding.bean;

public class Account {

    private int id;

    private int userId;

    private Integer money;

    public int getId() {
        return id;
    }

    public Account setId(int id) {
        this.id = id;
        return this;
    }

    public int getUserId() {
        return userId;
    }

    public Account setUserId(int userId) {
        this.userId = userId;
        return this;
    }

    public Integer getMoney() {
        return money;
    }

    public Account setMoney(Integer money) {
        this.money = money;
        return this;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", userId=" + userId +
                ", money=" + money +
                '}';
    }
}
