package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.UpdateAdsServlet", urlPatterns = "/updateAds")
public class UpdateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ad ad = (Ad) request.getSession().getAttribute("ads");
        request.setAttribute("ads", ad);
        request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Ad ad = (Ad) req.getSession().getAttribute("ads");
        int updateid = Integer.parseInt(req.getParameter("button2"));

        Ad updatedAd = new Ad(
                updateid,
                req.getParameter("title"),
                req.getParameter("description"),
                req.getParameter("price")

        );
        DaoFactory.getAdsDao().updateAd(updatedAd);
        req.setAttribute("ads", DaoFactory.getAdsDao().findbyid(updateid));

//        ad.setUsername(updatedAd.getUsername());
        resp.sendRedirect("profile");
    }
}