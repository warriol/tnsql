<?php
    use MongoDB\Client;
    class Conexion {
        public static function conectar() {
            $servidor   = "localhost";
            $usuario    = "root";
            $password   = "password";
            $bd         = "prueba";
            $puerto     = "27017";

            try {
                $cliente = new Client("mongodb://$usuario:$password@$servidor:$puerto/$bd");
            } catch (Exception $e) {
                die('Error al realizar la conexión a MongoDB: '.$e->getMessage());
            }

            echo "Conectado a MongoDB satisfactoriamente2";
            return $cliente->selectDB($bd);
        }
    }

    $conexion = Conexion::conectar();
