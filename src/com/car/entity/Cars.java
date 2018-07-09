package com.car.entity;

//汽车的实体类
public class Cars {

    private int id; //汽车的编号
    private String type; //汽车的类型
    private String brand; //汽车的品牌
    private String information; //汽车的描述
    private int price; //租金价格
    private int status; //汽车的状态，1：表示未借出，0：已借出。
    private int year; //车的使用年限
    private String pic; //汽车的图片名字。

    public Cars() {
    }

    public Cars(int id, String type, String brand, String information, int price, int status, int year, String pic) {
        this.id = id;
        this.type = type;
        this.brand = brand;
        this.information = information;
        this.price = price;
        this.status = status;
        this.year = year;
        this.pic = pic;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    @Override
    public String toString() {
        return "Cars{" +
                "id=" + id +
                ", type='" + type + '\'' +
                ", brand='" + brand + '\'' +
                ", information='" + information + '\'' +
                ", price=" + price +
                ", status=" + status +
                ", year=" + year +
                ", pic='" + pic + '\'' +
                '}';
    }
}
