package com.seproject.entities;

public class CartItem {
    public String item;
    public String model;
    public double rate;
    public int amount;

    @Override
    public String toString() {
        return "CartItem{" +
                "item='" + item + '\'' +
                ", model='" + model + '\'' +
                ", rate=" + rate +
                ", amount=" + amount +
                '}';
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
