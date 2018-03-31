package com.herokuapp.getadvertisment.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
        name = "LoginServlet",
        urlPatterns = {"/login/*"}
)
public class Login extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp){

        String[] path = req.getPathInfo().split("/");
        if (path[0].equals("signIn")) {
            try {
                RequestDispatcher view = req.getRequestDispatcher("sign_in.jsp");
                view.forward(req, resp);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else {
            try {
                RequestDispatcher view = req.getRequestDispatcher("login.jsp");
                view.forward(req, resp);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp){
        doGet(req,resp);
    }
}
