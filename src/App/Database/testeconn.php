<?php
$host = 'localhost'; 
$port = '5432';
$dbname = 'projeto_nis';
$user = 'postgres'; 
$password = '123456'; 

$conn = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if ($conn) {
    echo "conexao com o banco de dados foi bem sucedida";
    pg_close($conn); 
} else {
    echo "err na conecao com o banco de dado";
}
?>
