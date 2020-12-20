package com.seproject.entities;

public class Tool {
    public String item;
    public String model;
    public double rate;
    public int salevolume;

    @Override
    public String toString() {
        return "Tool{" +
                "item='" + item + '\'' +
                ", model='" + model + '\'' +
                ", rate=" + rate +
                ", salevolume=" + salevolume +
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

    public int getSalevolume() {
        return salevolume;
    }

    public void setSalevolume(int salevolume) {
        this.salevolume = salevolume;
    }
}
