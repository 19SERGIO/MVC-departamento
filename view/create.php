<?php
require '../controller/controller.php';

$controller = new Controller();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $genero = $_POST['genero'];
    $direccion = $_POST['direccion'];
    $departamentoId = $_POST['departamentoId'];
    $puestoId = $_POST['puestoId'];
    $email = $_POST['email'];
    $telefono = $_POST['telefono'];

    $controller->guardar($id,$nombre, $apellido, $genero, $direccion, $departamentoId, $puestoId, $email, $telefono);
    header('Location: view.php');
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Crear Empleado</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="./estilos/view.css">
</head>
<body>
    <div class="container">
        <div class="d-flex justify-content-between">
            <h1 class="font-weight-bold h1">Crear Empleado</h1>
            <a href="./view.php" class="font-weight text-muted h1">X</a>
        </div>
        
        <br>
        <br>
        <form method="POST" action="">
            

            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" class="mi form-control" name="nombre" id="nombre" required>
            </div>

            <div class="form-group">
                <label for="apellido">Apellido:</label>
                <input type="text" class="mi form-control" name="apellido" id="apellido" required>
            </div>

            <div class="form-group">
                <label for="genero">Género:</label>
                <input type="text" class="mi form-control" name="genero" id="genero" required>
            </div>

            <div class="form-group">
                <label for="direccion">Dirección:</label>
                <input type="text" class="mi form-control" name="direccion" id="direccion" required>
            </div>

            <div class="form-group">
                <label for="departamentoId">Departamento ID:</label>
                <input type="number" class="mi form-control" name="departamentoId" id="departamentoId" required>
            </div>

            <div class="form-group">
                <label for="puestoId">Puesto ID:</label>
                <input type="number" class="mi form-control" name="puestoId" id="puestoId" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="mi form-control" name="email" id="email" required>
            </div>

            <div class="form-group">
                <label for="telefono">Teléfono:</label>
                <input type="number" class="mi form-control" name="telefono" id="telefono" required>
            </div>

            <br>
            <button type="submit" class="mi btn btn-primary">Crear</button>
        </form>
        <br>
        
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
