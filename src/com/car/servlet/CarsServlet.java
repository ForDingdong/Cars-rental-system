package com.car.servlet;

import com.car.dao.CarsDao;
import com.car.dao.impl.CarsDaoImpl;
import com.car.entity.Cars;
import com.car.view.Catalog;
import net.sf.json.JSONArray;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.List;

@WebServlet (value={"/CarsServlet"})
public class CarsServlet extends HttpServlet {

    private String action; //查询的动作的名字
    private CarsDao cDao = new CarsDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);
        if(req.getParameter("action")!=null){
            this.action = req.getParameter("action");
        }

        switch(this.action){
            case "byType":
                queryAllCarsByType(req,resp);
                break;
            case "byTypeAndBrand":
                queryAllCarsByTypeAndBrand(req,resp);
                break;


        }
    }

    private void queryAllCarsByType(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {

        resp.setContentType("text/plain;character=utf-8");
        PrintWriter out = resp.getWriter();

        String type = req.getParameter("type");
        List<Cars> carList = cDao.queryAllCarsByType(type);
        //把java集合转换为json集合。//jsonlib/fastjson/gson/jackson
        JSONArray jsonArray = JSONArray.fromObject(carList);
        System.out.println(jsonArray);
        //out.write(URLDecoder.decode(jsonArray.toString(),"utf-8"));
        out.write(jsonArray.toString());
        out.flush();
        out.close();
    }


    private void queryAllCarsByTypeAndBrand(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        resp.setContentType("text/plain;character=utf-8");
        PrintWriter out = resp.getWriter();

        String type = req.getParameter("type");
        String brand = req.getParameter("brand");
        List<Cars> carList = cDao.queryAllCarsByTypeAndBrand(type,brand);
        //把java集合转换为json集合。//jsonlib/fastjson/gson/jackson
        JSONArray jsonArray = JSONArray.fromObject(carList);
        System.out.println(jsonArray);
        //out.write(URLDecoder.decode(jsonArray.toString(),"utf-8"));
        out.write(jsonArray.toString());
        out.flush();
        out.close();
    }
}
