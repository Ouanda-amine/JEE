package org.example.demo2.servlets;

import org.example.demo2.DAO.EmployeeDAO;
import org.example.demo2.bean.Employee;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/createmployee")

public class CreatEmloyee extends HttpServlet {

    private EmployeeDAO employeeDAO;

    @Override
    public void init() {
        employeeDAO = new EmployeeDAO();
    }

    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String poste = request.getParameter("poste");
        String salaire = request.getParameter("salaire");

        Employee employee = new Employee(name,prenom,email,poste,salaire);
        employeeDAO.CreateEmployee(employee);
        response.sendRedirect("lireEmployee");





    }

}


