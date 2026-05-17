<?php
$host = 'localhost';
$user = 'root';
$pass = 'root'; 
$db   = 'hortimobile';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Conectado com sucesso ao banco do Hortifruti!";
} catch (PDOException $e) {
    echo "Erro na conexão: " . $e->getMessage();
}
?>