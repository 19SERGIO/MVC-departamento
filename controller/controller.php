<?php
require '../model/model.php';

class Controller {
    private $model;

    public function __construct() {
        $this->model = new Model();
    }

    public function getEmpleados() {
        return $this->model->getEmpleados();
    }

    public function guardar($nombre, $apellido, $genero, $direccion, $departamentoId, $puestoId, $email, $telefono) {
        $this->model->guardarEmpleado($nombre, $apellido, $genero, $direccion, $departamentoId, $puestoId, $email, $telefono);
    }

    public function getEmpleado($id) {
        return $this->model->getEmpleado($id);
    }

    public function actualizar($id, $nombre, $apellido, $genero, $direccion, $departamentoId, $puestoId, $email, $telefono) {
        $this->model->actualizarEmpleado($id, $nombre, $apellido, $genero, $direccion, $departamentoId, $puestoId, $email, $telefono);
    }

    public function eliminar($id) {
        $this->model->eliminarEmpleado($id);
    }
}
