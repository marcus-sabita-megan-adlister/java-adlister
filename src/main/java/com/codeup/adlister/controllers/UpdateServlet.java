package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet( name = "controllers.UpdateAdServlet",urlPatterns = "/update")
public class UpdateServlet extends HttpServlet {

    //    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////        int i=1;
//        int Updateid = Integer.parseInt(request.getParameter("button2").toString());
//        DaoFactory.getAdsDao().updateAd(Updateid);
//        request.setAttribute("ads", DaoFactory.getAdsDao().findbyid(Updateid));
//
//        response.sendRedirect("/edit.jsp");
//    }
//
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

//        response.setHeader("Refresh", "0; URL=http://localhost:8080/profile");
//        response.sendRedirect("/update");


        Ad ad = (Ad) request.getSession().getAttribute("ad");
        request.setAttribute("ads",ad);
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request,response);


    }
//}
////            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        //                           this number 1 need to be replaced with user ID
        int adId1 = Integer.parseInt(request.getParameter("button3"));
        Ad ad = new Ad(adId1, title, description, price);

        DaoFactory.getAdsDao().updateAd(ad);
        response.sendRedirect("/update");
//        request.getRequestDispatcher("/update").forward(request,response);

    }
}