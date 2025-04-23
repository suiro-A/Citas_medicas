<?php
require_once '../model/modelspecialty.php';

class SpecialtyController {
    public $model;

    public function __construct() {
        $this->model = new Modelo();
    }

    // Mostrar datos
    public function mostrar() {
        $specialty = new Modelo();
        $dato = $specialty->mostrar("specialty", "1");
        require_once '../view/specialty/mostrar.php';
    }

    // Mostrar formulario para insertar
    public function nuevo() {
        require_once '../view/specialty/nuevo.php';
    }

    // Recibir datos para insertar
    public function recibir() {
        $alm = new Modelo();
        $alm->nombrees = $_POST['txtnomes']; // Asegúrate de validar los datos recibidos

        $this->model->insertar($alm);

        // Redirigir después de insertar
        header("Location: specialty.php");
    }

    // Eliminar un registro
    public function eliminar() {
        $codespe = $_REQUEST['codespe']; // Asegúrate de sanitizar esta entrada
        $condicion = "codespe=$codespe";
        
        $specialty = new Modelo();
        $specialty->eliminar("specialty", $condicion);

        // Redirigir después de eliminar
        header("Location: specialty.php");
    }
}
