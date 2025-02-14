package org.example.demo2.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo2.DAO.EmployeeDAO;

import java.io.IOException;

@WebServlet("/deleteEmployee")

public class DeleteEmployee extends HttpServlet {

    private EmployeeDAO employeeDAO;

    public  void  init() {
        employeeDAO = new EmployeeDAO();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        employeeDAO.deleteEmployee(id);

        response.sendRedirect("lireEmployee");


    }

}
