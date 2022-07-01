<?php
/***
 * Classe Conf permettant d'effectuer et de changer la configuration de la connexion
 * @author Florent Weltmann
 * @date Janvier 2022
 */

    class Conf {
        private static $database = array(
            'hostname' => 'localhost',
            'database' => 'fweltma',
            'login'    => 'fweltma',
            'password' => 'o-GATYy^XnSxa@Zpdo*('
        );

        static public function getLogin() {
            return self::$database['login'];
        }

        static public function getHostname() {
            return self::$database['hostname'];
        }

        static public function getDatabase() {
            return self::$database['database'];
        }

        static public function getPassword() {
            return self::$database['password'];
        }
    }