package com.car.dao;

import com.car.entity.Cars;
import com.car.view.Catalog;

import java.util.List;

//汽车的业务逻辑接口
public interface CarsDao {

    //安照类型查找所有的汽车。
    public List<Cars> queryAllCarsByType(String type); //参数type就是汽车的类型
    //按照类型和品牌查找所有的汽车
    public List<Cars> queryAllCarsByTypeAndBrand(String type, String brand); //参数type就是汽车的类型


    //获得汽车目录的集合
    public List<Catalog> queryCarsCatalog();
}
