<?php
require '../controller/controller.php';

$controller = new Controller();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $genero = $_POST['genero'];
    $direccion = $_POST['direccion'];
    $departamentoId = $_POST['departamentoId'];
    $puestoId = $_POST['puestoId'];
    $email = $_POST['email'];
    $telefono = $_POST['telefono'];

    $controller->actualizar($id, $nombre, $apellido, $genero, $direccion, $departamentoId, $puestoId, $email, $telefono);
    header('Location: view.php');
    exit;
}


if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $empleado = $controller->getEmpleado($id);

    if (!$empleado) {
        die('Empleado no encontrado');
    }
} else {
    die('ID de empleado no especificado');
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Editar Empleado</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="./estilos/view.css">
</head>
<body>
    <div class="container">
        <div class="d-flex justify-content-between">
            <h1 class="font-weight-bold h1">Editar Empleado</h1>
            <a href="./view.php" class="font-weight text-muted h1">X</a>
        </div>
        
        <br>
        <br>
        <form method="POST" action="">
            <input type="hidden"  name="id" value="<?php echo $empleado['emp_id']; ?>">

            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" class="mi form-control" name="nombre" id="nombre" value="<?php echo $empleado['emp_nom']; ?>" required>
            </div>

            <div class="form-group">
                <label for="apellido">Apellido:</label>
                <input type="text" class="mi form-control" name="apellido" id="apellido" value="<?php echo $empleado['emp_ape']; ?>" required>
            </div>

            <div class="form-group">
                <label for="genero">Género:</label>
                <input type="text" class="mi form-control" name="genero" id="genero" value="<?php echo $empleado['emp_gen']; ?>" required>
            </div>

            <div class="form-group">
                <label for="direccion">Dirección:</label>
                <input type="text" class="mi form-control" name="direccion" id="direccion" value="<?php echo $empleado['emp_dir']; ?>" required>
            </div>

            <div class="form-group">
                <label for="departamentoId">Departamento ID:</label>
                <input type="number" class="mi form-control" name="departamentoId" id="departamentoId" value="<?php echo $empleado['dep_id']; ?>" required>
            </div>

            <div class="form-group">
                <label for="puestoId">Puesto ID:</label>
                <input type="number" class="mi form-control" name="puestoId" id="puestoId" value="<?php echo $empleado['pue_id']; ?>" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="mi form-control" name="email" id="email" value="<?php echo $empleado['emp_email']; ?>" required>
            </div>

            <div class="form-group">
                <label for="telefono">Teléfono:</label>
                <input type="number" class="mi form-control" name="telefono" id="telefono" value="<?php echo $empleado['emp_tel']; ?>" required>
            </div>

            <br>
            <button type="submit" class="mi btn btn-primary">Actualizar</button>
        </form>
        <br>
        
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
