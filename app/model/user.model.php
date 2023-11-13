<?php
require_once 'config.php';

class UserModel {
    private $db;

    function __construct(){
        $this->db = $this->getDB();
    }

    private function getDB() {
        $db = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME .';charset='.DB_Charset,DB_USER,DB_PASS );
        return $db;
    }
    
    public function getUserByEmail($email) {
        $query = $this->db->prepare("SELECT * FROM users WHERE email = ?");
        $query->execute([$email]);
        return $query->fetch(PDO::FETCH_OBJ);
    }

}