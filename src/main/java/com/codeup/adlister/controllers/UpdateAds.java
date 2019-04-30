package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.UpdateAdsServlet", urlPatterns = "/updateAds")
public class UpdateAds extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ad ad= (Ad) request.getSession().getAttribute("ads");
        request.setAttribute("ads", ad);
        request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Ad ad= (Ad) req.getSession().getAttribute("ads");

        Ad updatedAd= new Ad(
                ad.getId(),
//                ad.getUserId(),
                req.getParameter("title"),
                req.getParameter("description"),
                req.getParameter("image"),
                req.getParameter("price")
        );
        DaoFactory.getAdsDao().updateAd(updatedAd);
//        user.setUsername(updatedAd.getUsername());
        resp.sendRedirect("profile");
    }

}