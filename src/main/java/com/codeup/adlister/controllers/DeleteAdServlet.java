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
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setAttribute("ads", DaoFactory.getAdsDao().deleteAd(1));
//        request.getRequestDispatcher("/profile.jsp")
//                .forward(request, response);
//    }
//
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
//        int deleteid = Integer.parseInt(request.getParameter("button1"));
//        request.setAttribute("ads", DaoFactory.getAdsDao().findById().deleteAd(deleteid));
//    request.getRequestDispatcher("/profile.jsp").forward(request, response);
//
//
//
//    }
//
//
//}
