package com.herokuapp.getadvertisment.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
        name = "BeaconDoc",
        urlPatterns = {"/beacon_documentation/*"}
)
public class AccesBeconDoc extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp){

        try {
            RequestDispatcher view = req.getRequestDispatcher("/BeaconTraker/index.html");
            view.forward(req,resp);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
