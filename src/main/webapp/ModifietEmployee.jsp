

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.demo2.bean.Employee" %>
<%@ page import="java.util.List" %>



<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mise a jour Formulaire</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Update Employee</h2>

    <%
      Employee employee = (Employee) request.getAttribute("employee");
    %>

    <form action="modifieremployee" method="post">
        <input type="hidden" name="id" value="<%= employee.getId() %>"/>

        <div class="form-group">

            <input type="text" class="form-control" name="name" value="<%=employee.getName() %>" required />
        </div>

        <div class="form-group">

            <input type="text" class="form-control" name="prenom" value="<%=employee.getPrenom() %>" required />
        </div>

        <div class="form-group">

            <input type="text" class="form-control" name="email" value="<%=employee.getEmail() %>" required />
        </div>

        <div class="form-group">

            <input type="text" class="form-control" name="post" value="<%=employee.getPoste() %>" required />
        </div>

        <div class="form-group">

            <input type="text" class="form-control" name="salaire" value="<%=employee.getSalaire() %>" required />
        </div>

        <button type="submit" class="btn btn-primary btn-block">Update</button>
    </form>

    <br>
    <a href="lireEmployee" class="btn btn-secondary"> <- list </a>
</div>

</body>
</html>
