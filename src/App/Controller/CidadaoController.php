<?php

namespace App\Controller;

use App\Services\CidadaoService;

class CidadaoController {
    private $cidadaoService;

    public function __construct() {
        $this->cidadaoService = new CidadaoService();
    }

    public function cadastrar($nome) {
        $response = $this->cidadaoService->cadastrar($nome);
        
        if (isset($response['error'])) {
            http_response_code(400); 
        } else {
            http_response_code(201);
        }

        echo json_encode($response);
    }

    public function visualizar($nis) {
        $response = $this->cidadaoService->buscarPorNis($nis);

        if (isset($response['error'])) {
            http_response_code(404); 
        } else {
            http_response_code(200); 
        }

        echo json_encode($response);
    }

    public function atualizarNome($nis, $novoNome) {
        $response = $this->cidadaoService->atualizarNome($nis, $novoNome);

        if (isset($response['error'])) {
            http_response_code(400); 
        } else {
            http_response_code(200); 
        }

        echo json_encode($response);
    }

    public function deletar($nis) {
        $response = $this->cidadaoService->deletar($nis);

        if (isset($response['error'])) {
            http_response_code(404); 
        } else {
            http_response_code(200); 
        }

        echo json_encode($response);
    }
}
