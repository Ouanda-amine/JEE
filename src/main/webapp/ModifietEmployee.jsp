
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <form action="updatePerson" method="post">
        <input type="hidden" name="id" value="${person.id}" />

        <div class="form-group">

            <input type="text" class="form-control" name="name" value="${person.name}" required />
        </div>

        <div class="form-group">

            <input type="number" class="form-control" name="age" value="${person.age}" required />
        </div>

        <div class="form-group">

            <input type="text" class="form-control" name="address" value="${person.address}" required />
        </div>

        <div class="form-group">

            <input type="text" class="form-control" name="tel" value="${person.tel}" required />
        </div>

        <button type="submit" class="btn btn-primary btn-block">Update</button>
    </form>

    <br>
    <a href="personList" class="btn btn-secondary">Back to Person List</a>
</div>

</body>
</html>
