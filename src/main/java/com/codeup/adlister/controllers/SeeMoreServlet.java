package com.codeup.adlister.controllers;


import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.SeeMoreServlet", urlPatterns = "/seemore")
public class SeeMoreServlet extends HttpServlet{

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().seeMore(1));
        request.getRequestDispatcher("/WEB-INF/ads/seeMore.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    int adId = Integer.parseInt(request.getParameter("button"));

    request.setAttribute("ads", DaoFactory.getAdsDao().seeMore(adId));
    request.getRequestDispatcher("/WEB-INF/ads/seeMore.jsp").forward(request, response);

    }
}