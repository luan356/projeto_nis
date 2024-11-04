<?php
namespace App\Database;

use PDO;
use PDOException;

class Database {
    private $host = 'localhost';
    private $dbname = 'projeto_nis'; 
    private $user = 'postgres'; 
    private $password = '123456';
    private $port = '5432';
    private $pdo;

    public function __construct() {
        $this->connect();
    }

    private function connect() {
        try {
            $this->pdo = new PDO("pgsql:host=$this->host;port=$this->port;dbname=$this->dbname", $this->user, $this->password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            // echo "Conexão com o banco de dados estabelecida com sucesso!";
        } catch (PDOException $e) {
            echo "Falha na conexão: " . $e->getMessage();
        }
    }

    public function salvarCidadao($cidadao) {
        $stmt = $this->pdo->prepare("INSERT INTO cidadao (nome, nis) VALUES (:nome, :nis)");
        $stmt->execute([':nome' => $cidadao->getNome(), ':nis' => $cidadao->getNis()]);
    }

    public function buscarPorNis($nis) {
        $stmt = $this->pdo->prepare("SELECT * FROM cidadao WHERE nis = :nis");
        $stmt->execute([':nis' => $nis]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function atualizarNome($nis, $novoNome) {
        $stmt = $this->pdo->prepare("UPDATE cidadao SET nome = :nome WHERE nis = :nis");
        $stmt->execute([':nome' => $novoNome, ':nis' => $nis]);
    }

    public function deletarCidadao($nis) {
        $stmt = $this->pdo->prepare("DELETE FROM cidadao WHERE nis = :nis");
        $stmt->execute([':nis' => $nis]);
    }
}
?>
