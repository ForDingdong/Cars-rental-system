package com.car.dao.impl;

import com.car.dao.CarsDao;
import com.car.db.DbUtils;
import com.car.entity.Cars;
import com.car.view.Catalog;

import java.util.ArrayList;
import java.util.List;

public class CarsDaoImpl extends SuperDaoImpl implements CarsDao {

    @Override
    public List<Cars> queryAllCarsByType(String type) {
        String sql = "select * from cars where type=?";
        List<Cars> list = new ArrayList<Cars>();
        try{
            pstmt = DbUtils.getConnection().prepareStatement(sql);
            //付参数
            pstmt.setString(1,type);
            rs = pstmt.executeQuery();
            //遍历这个结果集
            while(rs.next()){
                Cars c = new Cars();
                c.setId(rs.getInt("id"));
                c.setType(rs.getString("type"));
                c.setBrand(rs.getString("brand"));
                c.setInformation(rs.getString("information"));
                c.setPrice(rs.getInt("price"));
                c.setStatus(rs.getInt("status"));
                c.setYear(rs.getInt("years"));
                c.setPic(rs.getString("pic"));
                list.add(c);
            }
            return list;
        }
        catch(Exception ex){
            ex.printStackTrace();
            return null;
        }
        finally{
            this.destroyResource();
        }
    }

    @Override
    public List<Catalog> queryCarsCatalog() {
        String[] type={"轿车","SUV","MPV"};
        String sql = "";
        List<Catalog> list = new ArrayList<Catalog>();
        try{
            //怎么写呢？
            for(String t:type){

                sql = "select distinct brand from cars where type = '"+t+"'";
                stmt = DbUtils.getConnection().createStatement();
                rs = stmt.executeQuery(sql);
                Catalog c = new Catalog();
                List<String> brands = new ArrayList<String>();
                c.setType(t);
                c.setBrand(brands);
                while(rs.next()){

                    brands.add(rs.getString("brand"));
                }

                list.add(c);
            }

            return list;
        }
        catch(Exception ex){
            ex.printStackTrace();
            return null;
        }
        finally{
            this.destroyResource();
        }
    }


    @Override
    public List<Cars> queryAllCarsByTypeAndBrand(String type, String brand) {
        String sql = "select * from cars where type=? and brand=?";
        List<Cars> list = new ArrayList<Cars>();
        try{
            pstmt = DbUtils.getConnection().prepareStatement(sql);
            //付参数
            pstmt.setString(1,type);
            pstmt.setString(2,brand);

            rs = pstmt.executeQuery();
            //遍历这个结果集
            while(rs.next()){
                Cars c = new Cars();
                c.setId(rs.getInt("id"));
                c.setType(rs.getString("type"));
                c.setBrand(rs.getString("brand"));
                c.setInformation(rs.getString("information"));
                c.setPrice(rs.getInt("price"));
                c.setStatus(rs.getInt("status"));
                c.setYear(rs.getInt("years"));
                c.setPic(rs.getString("pic"));
                list.add(c);
            }
            return list;
        }
        catch(Exception ex){
            ex.printStackTrace();
            return null;
        }
        finally{
            this.destroyResource();
        }
    }
}
