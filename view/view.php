<?php
require '../controller/controller.php';

$controller = new Controller();
$empleados = $controller->getEmpleados();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Listado de Empleados</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
</head>
<body>
    <div class="container">
        <h1 class="font-weight-bold text-center ">Listado de Empleados</h1>
        <br>
        <br>
        <div class="mi table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Género</th>
                        <th>Dirección</th>
                        <th>Departamento ID</th>
                        <th>Puesto ID</th>
                        <th>Email</th>
                        <th>Teléfono</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($empleados as $empleado): ?>
                        <tr>
                            <td><?php echo $empleado['emp_id']; ?></td>
                            <td><?php echo $empleado['emp_nom']; ?></td>
                            <td><?php echo $empleado['emp_ape']; ?></td>
                            <td><?php echo $empleado['emp_gen']; ?></td>
                            <td><?php echo $empleado['emp_dir']; ?></td>
                            <td><?php echo $empleado['dep_id']; ?></td>
                            <td><?php echo $empleado['pue_id']; ?></td>
                            <td><?php echo $empleado['emp_email']; ?></td>
                            <td><?php echo $empleado['emp_tel']; ?></td>
                            <td>
                                <a href="edit.php?id=<?php echo $empleado['emp_id']; ?>" class="mi btn btn-primary">Editar</a>
                                <br>
                                <br>
                                <a href="delete.php?id=<?php echo $empleado['emp_id']; ?>" class="mi btn btn-danger">Eliminar</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <br>
        <br>
        <a href="create.php" class="mi btn btn-primary">Crear Empleado</a>
    </div>

</body>
</html>
