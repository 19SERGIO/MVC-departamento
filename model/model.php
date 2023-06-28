<?php
class Model {
    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;dbname=gestion_empleados', 'root', '');
    }

    public function getEmpleados() {
        $query = $this->db->query('SELECT * FROM empleado');
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function guardarEmpleado($nombre, $apellido, $genero, $direccion, $departamentoId, $puestoId, $email, $telefono) {
        $query = $this->db->prepare('INSERT INTO empleado (emp_nom, emp_ape, emp_gen, emp_dir, dep_id, pue_id, emp_email, emp_tel) VALUES (?, ?, ?, ?, ?, ?, ?, ?)');
        $query->execute([$nombre, $apellido, $genero, $direccion, $departamentoId, $puestoId, $email, $telefono]);
    }

    public function getEmpleado($id) {
        $query = $this->db->prepare('SELECT * FROM empleado WHERE emp_id = ?');
        $query->execute([$id]);
        return $query->fetch(PDO::FETCH_ASSOC);
    }

    public function actualizarEmpleado($id, $nombre, $apellido, $genero, $direccion, $departamentoId, $puestoId, $email, $telefono) {
        $query = $this->db->prepare('UPDATE empleado SET emp_nom = ?, emp_ape = ?, emp_gen = ?, emp_dir = ?, dep_id = ?, pue_id = ?, emp_email = ?, emp_tel = ? WHERE emp_id = ?');
        $query->execute([$nombre, $apellido, $genero, $direccion, $departamentoId, $puestoId, $email, $telefono, $id]);
    }

    public function eliminarEmpleado($id) {
        $query = $this->db->prepare('DELETE FROM empleado WHERE emp_id = ?');
        $query->execute([$id]);
    }
}
