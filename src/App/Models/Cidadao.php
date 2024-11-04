<?php
namespace App\Models;

class Cidadao {
    private $id;
    private $nome;
    private $nis;

    public function __construct($nome, $nis) {
        $this->nome = $nome;
        $this->nis = $nis;
    }

    public function getId() {
        return $this->id;
    }

    public function getNome() {
        return $this->nome;
    }

    public function getNis() {
        return $this->nis;
    }

    public function setId($id) {
        $this->id = $id;
    }
}
?>
