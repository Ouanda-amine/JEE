<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee Form</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
    />
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Employee Form</h1>
    <div class="text-center mb-3">
        <a href="addEmployee.jsp" class="btn btn-secondary">Add Employee</a>
        <a href="showEmployee.jsp" class="btn btn-secondary">Show Employee</a>
    </div>
    <form action="createmployee" method="post">
        <div class="form-group mb-3">
            <label for="nom" class="form-label">Nom</label>
            <input
                    type="text"
                    class="form-control"
                    id="nom"
                    placeholder="Enter the name"
                    name="nom"
            />
        </div>
        <div class="form-group mb-3">
            <label for="prenom" class="form-label">Prénom</label>
            <input
                    type="text"
                    class="form-control"
                    id="prenom"
                    placeholder="Enter the first name"
                    name="prenom"
            />
        </div>
        <div class="form-group mb-3">
            <label for="email" class="form-label">Email</label>
            <input
                    type="email"
                    class="form-control"
                    id="email"
                    placeholder="Enter the email"
                    name="email"
            />
        </div>
        <div class="form-group mb-3">
            <label for="post" class="form-label">Post</label>
            <input
                    type="text"
                    class="form-control"
                    id="post"
                    placeholder="Enter the post"
                    name="post"
            />
        </div>
        <div class="form-group mb-3">
            <label for="salaire" class="form-label">Salaire</label>
            <input
                    type="number"
                    class="form-control"
                    id="salaire"
                    placeholder="Enter the salary"
                    name="salaire"
            />
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-..."
        crossorigin="anonymous"
></script>
</body>
</html>