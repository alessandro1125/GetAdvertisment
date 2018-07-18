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
            String redirectURL = "BeaconTraker/index.html";
            resp.sendRedirect(redirectURL);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
