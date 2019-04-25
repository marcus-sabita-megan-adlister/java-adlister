package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet( name = "controllers.UpdateAdServlet",urlPatterns = "/update")
public class UpdateServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Updateid = Integer.parseInt(request.getParameter("button2"));
        DaoFactory.getAdsDao().updateAd(Updateid);
        request.setAttribute("ads", DaoFactory.getAdsDao().findbyid(Updateid));

        response.sendRedirect("/edit.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {

        response.setHeader("Refresh", "0; URL=http://localhost:8080/profile");

    }
}
