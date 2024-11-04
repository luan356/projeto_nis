<?php

namespace App\Services;

use App\Database\Database;
use App\Models\Cidadao;
use App\Services\NisGenerator;

class CidadaoService {
    private $db;

    public function __construct() {
        $this->db = new Database();
    }

    public function cadastrar($nome) {
        $nisGenerator = new NisGenerator();
        $nis = $nisGenerator->generateNis();

        $cidadao = new Cidadao($nome, $nis);
        $this->db->salvarCidadao($cidadao);

        return [
            'message' => 'cidadao cadastrado com sucesso!',
            'data' => [
                'nome' => $cidadao->getNome(),
                'nis' => $cidadao->getNis()
            ]
        ];
    }

    public function buscarPorNis($nis) {
        $cidadao = $this->db->buscarPorNis($nis);

        if ($cidadao) {
            return [
                'data' => $cidadao
            ];
        } else {
            return [
                'error' => 'cidadao nao encontrado.'
            ];
        }
    }

    public function atualizarNome($nis, $novoNome) {
        if (empty($novoNome) || preg_match('/\d/', $novoNome)) {
            return [
                'error' => 'Nome invalid.'
            ];
        }

        $cidadao = $this->db->buscarPorNis($nis);

        if (!$cidadao) {
            return [
                'error' => 'cidadao nao encontrado.'
            ];
        }

        $this->db->atualizarNome($nis, $novoNome);

        return [
            'message' => 'Nome atualizado com sucesso!',
            'data' => ['nis' => $nis, 'nome' => $novoNome]
        ];
    }

    public function deletar($nis) {
        $cidadao = $this->db->buscarPorNis($nis);

        if (!$cidadao) {
            return [
                'error' => 'cidadao nao encontrado.'
            ];
        }

        $this->db->deletarCidadao($nis);

        return [
            'message' => 'cidadao deletado com sucesso!'
        ];
    }
}
