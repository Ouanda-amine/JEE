<%@ page import="bean.Employee" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employees  List</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Employees List</h2>

    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>NOM</th>
            <th>PRENOM</th>
            <th>EMAIL</th>
            <th>POSTE</th>
            <th>SALAIRE</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Employee> employeelist = (List<Employee>) request.getAttribute("employeelist");

            for (Employee employee : employeelist) {
        %>
        <tr>
            <td><%= employee.getId() %></td>
            <td><%= employee.getName() %></td>
            <td><%= employee.getPrenom()%></td>
            <td><%= employee.getEmail() %></td>
            <td><%= employee.getPoste() %></td>
            <td><%= employee.getSalaire() %></td>
            <td>
                <a href="modifierEmployee?id=<%= employee.getId() %>" class="btn btn-warning btn-sm">Edit</a>
                <form action="deleteEmployee" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="<%= employee.getId() %>" />
                    <input type="submit" value="Delete" class="btn btn-danger btn-sm" />
                </form>
            </td>
        </tr>
        <%

            }
        %>
        </tbody>
    </table>

    <a href="createmployee" class="btn btn-success">Add new Employee</a>
</div>


</body>
</html>
