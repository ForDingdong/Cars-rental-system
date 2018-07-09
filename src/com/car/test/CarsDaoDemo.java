package com.car.test;

import com.car.dao.CarsDao;
import com.car.dao.impl.CarsDaoImpl;
import com.car.entity.Cars;
import com.car.view.Catalog;

import java.util.List;

public class CarsDaoDemo {

    public static void main(String[] args) {

        CarsDao cDao = new CarsDaoImpl();
        List<Catalog> list = cDao.queryCarsCatalog();
        for(Catalog c:list){
            System.out.println(c);
        }
    }
}
