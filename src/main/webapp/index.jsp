<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Cookies</title>
</head>
<body>
<div class="container mt-5">
    <h1>Tarea 3</h1>
    <p style="color: ${cookie.color.getValue() == null ? "black" : cookie.color.getValue()}">Selecciona un color y ve
        como cambia este texto</p>

    <form action="/webapp-cookie-t4/cambiar-color" method="get">
        <label for="color">Selecciona un color</label>
        <select name="color" id="color" class="form-control">
            <option value="black">Negro</option>
            <option value="blue">Azul</option>
            <option value="red">Rojo</option>
            <option value="green">Verde</option>
            <option value="aqua">Aqua</option>
            <option value="blueViolet">Violeta</option>
            <option value="grey">Gris</option>
            <option value="cyan">Cyan</option>
            <option value="teal">Teal</option>
        </select>
        <div class="mt-3">
            <input type="submit" value="Cambiar color" class="btn btn-primary">
        </div>
    </form>
</div>
</body>
</html>