package com.car.view;

import java.util.List;

public class Catalog {

    private String type; //车的类型
    private List<String> brand; //这个类型下品牌的集合

    public Catalog() {
    }

    public Catalog(String type, List<String> brand) {
        this.type = type;
        this.brand = brand;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public List<String> getBrand() {
        return brand;
    }

    public void setBrand(List<String> brand) {
        this.brand = brand;
    }

    @Override
    public String toString() {
        return "Catalog{" +
                "type='" + type + '\'' +
                ", brand=" + brand +
                '}';
    }
}
