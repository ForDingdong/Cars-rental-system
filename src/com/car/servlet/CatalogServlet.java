package com.car.servlet;

import com.car.dao.CarsDao;
import com.car.dao.impl.CarsDaoImpl;
import com.car.view.Catalog;
import net.sf.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(value="/CatalogServlet")
public class CatalogServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain;character=utf-8");
        PrintWriter out = resp.getWriter();
        CarsDao cDao = new CarsDaoImpl();
        List<Catalog> list = cDao.queryCarsCatalog();
        //把java集合转换为json集合。//jsonlib/fastjson/gson/jackson
        JSONArray jsonArray = JSONArray.fromObject(list);
        System.out.println(jsonArray);
        //out.write(URLDecoder.decode(jsonArray.toString(),"utf-8"));
        out.write(jsonArray.toString());
        out.flush();
        out.close();
    }
}
