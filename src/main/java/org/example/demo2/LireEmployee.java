package org.example.demo2;

import DAO.EmployeeDAO;
import bean.Employee;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/lireEmployee")

public class LireEmployee extends HttpServlet {

    private EmployeeDAO employeeDAO ;

    @Override
    public  void init()  {
        employeeDAO = new EmployeeDAO();

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> emp = employeeDAO
        request.setAttribute("employeelist",emp);
        request.getRequestDispatcher("ListEmployee.jsp").forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
