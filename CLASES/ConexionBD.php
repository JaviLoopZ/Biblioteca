<?php

    class ConexionBD
    {
        public $conexion;
        public function __construct()
        {
            $this->conexion = mysqli_connect("localhost", "root", "*mm060221", "biblioteca");
            mysqli_select_db($this->conexion,"biblioteca");
        }

    }
?>