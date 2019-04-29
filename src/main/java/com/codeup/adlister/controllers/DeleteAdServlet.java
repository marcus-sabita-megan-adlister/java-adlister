//package com.codeup.adlister.controllers;
//
//import com.codeup.adlister.dao.DaoFactory;
//import com.codeup.adlister.models.Ad;
//import com.codeup.adlister.models.User;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//@WebServlet( name = "controllers.DeleteAdServlet",urlPatterns = "/delete")
//public class DeleteAdServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int deleteid = Integer.parseInt(request.getParameter("button1"));
//        DaoFactory.getAdsDao().deleteAd(deleteid);
//        request.setAttribute("ads", DaoFactory.getAdsDao().findbyid(deleteid));
//
//        response.sendRedirect("/profile");
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
//
//        response.setHeader("Refresh", "0; URL=http://localhost:8080/profile");
//
//    }
//
//
//}
