package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name = "controllers.UpdateServlet", urlPatterns = "/update")
public class UpdateServlet  extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
//                String password = BCrypt.hashpw(req.getParameter("password"), BCrypt.gensalt());

        User updatedUser = new User(
                user.getId(),
                req.getParameter("username"),
                req.getParameter("email"),
                req.getParameter("password")

        );
        DaoFactory.getUsersDao().updateProfile(updatedUser);
        user.setUsername(updatedUser.getUsername());
        resp.sendRedirect("/updatedProfile");
    }
}