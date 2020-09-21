package com.buyace.core.servlets;

import com.buyace.core.beans.Deals;
import org.hibernate.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updatedeals")
public class UpdateDeals extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int dealId = Integer.parseInt(request.getParameter("id"));
        Deals deals = com.buyace.core.dao.DealsDao.getDeals(dealId);
        request.setAttribute("deals", deals);
        request.getRequestDispatcher("/form/deal.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int dealId = Integer.parseInt(request.getParameter("id"));
        String lable = request.getParameter("lable");
        String category = request.getParameter("category");
        String image = request.getParameter("image");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String buttonText = request.getParameter("buttonText");
        String buttonUrl = request.getParameter("buttonUrl");
        String textColour = request.getParameter("textColour");

        Deals deals = new Deals(image, category, lable, title, description, buttonText, buttonUrl, textColour);

        deals.setItemId(dealId);
        Session session = com.buyace.core.hibernate.util.HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(deals);
        session.getTransaction().commit();
        session.close();
        response.sendRedirect("/admin/offeranddeal.jsp");
    }
}
