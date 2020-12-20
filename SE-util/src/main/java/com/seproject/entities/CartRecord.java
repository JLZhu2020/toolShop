package com.seproject.entities;

public class CartRecord {
    public String username;
    public String item;
    public int amount;

    @Override
    public String toString() {
        return "CartRecord{" +
                "username='" + username + '\'' +
                ", item='" + item + '\'' +
                ", amount=" + amount +
                '}';
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
