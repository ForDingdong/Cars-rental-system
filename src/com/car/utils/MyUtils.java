package com.car.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MyUtils {

    //把java.util.Date转换为java.sql.Date
    public static java.sql.Date utilDateToSqlDate(Date date){
        return new java.sql.Date(date.getTime());
    }

    //把字符串转换为Date
    public static Date stringToDate(String date){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date d = sdf.parse(date);
            return d;
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }
}
