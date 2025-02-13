package DAO;


import bean.Employee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {
    private Connection con;

    public EmployeeDAO() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Employees ","root","");
            System.out.println("Connected to database");

        } catch (Exception e) {
           e.printStackTrace();
        }
    }

    public void CreateEmployee(Employee emp) {
        String sql="INSERT INTO employes(nom,prenom,email,post,salaire) VALUES(?,?,?,?,?)";
        try (PreparedStatement prestat = con.prepareStatement(sql)){
            prestat.setString(1,emp.getName());
            prestat.setString(2,emp.getPrenom());
            prestat.setString(3,emp.getEmail());
            prestat.setString(4, emp.getPoste());
            prestat.setString(5, emp.getSalaire());
            prestat.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public List<Employee> getallEmployees() {
       List<Employee> employeeslist = new ArrayList<>();
       String sql="SELECT * FROM employes";
       try(Statement stmt = con.createStatement(); ResultSet res = stmt.executeQuery(sql)) {
           while (res.next()) {
               Employee employee = new Employee();
               employee.setId(res.getInt("id"));
               employee.setName(res.getString("nom"));
               employee.setPrenom(res.getString("prenom"));
               employee.setEmail(res.getString("email"));
               employee.setPoste(res.getString("post"));
               employee.setSalaire(res.getString("salaire"));
               employeeslist.add(employee);
           }

       }catch (Exception e) {
           e.printStackTrace();
       }
       return employeeslist;

    }
    public Employee getEmployeeById(int id) {
        Employee employee = null;
        String sql="SELECT * FROM employes WHERE id=?";
        try(PreparedStatement prest = con.prepareStatement(sql)) {
            prest.setInt(1, id);
            try (ResultSet res = prest.executeQuery(sql);){
                if (res.next()) {
                    employee = new Employee();
                    employee.setId(res.getInt("id"));
                    employee.setName(res.getString("nom"));
                    employee.setPrenom(res.getString("prenom"));
                    employee.setEmail(res.getString("email"));
                    employee.setPoste(res.getString("post"));
                    employee.setSalaire(res.getString("salaire"));
                }

            }

        }catch (Exception e) {
            e.printStackTrace();
        }
        return employee;
    }



}
