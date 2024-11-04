<?php

require_once __DIR__ . '/../../../vendor/autoload.php';

$controller = new \App\Controller\CidadaoController();

$data = json_decode(file_get_contents("php://input"), true);
$action = $data['action'] ?? null;

switch ($_SERVER['REQUEST_METHOD']) {
    case 'POST':
        switch ($action) {
            case 'cadastrar':
                $nome = $data['nome'] ?? null;
                echo $controller->cadastrar($nome);
                break;

            case 'atualizarNome':
                $nis = $data['nis'] ?? null;
                $novoNome = $data['novoNome'] ?? null;
                echo $controller->atualizarNome($nis, $novoNome);
                break;

            default:
                echo json_encode(['error' => 'acao POST não reconhecida']);
                http_response_code(400);
        }
        break;

    case 'DELETE':
        switch ($action) {
            case 'deletar':
                $nis = $data['nis'] ?? null;
                echo $controller->deletar($nis);
                break;

            default:
                echo json_encode(['error' => 'acao DELETE não reconhecida']);
                http_response_code(400);
        }
        break;

        case 'GET':
            switch ($action) {
                case 'visualizar':
                    $nis = $data['nis'] ?? null; 
                    echo $controller->visualizar($nis);
                    break;
    
                default:
                    echo json_encode(['error' => 'acao GET não reconhecida']);
                    http_response_code(400);
            }
            break;

    default:
        echo json_encode(['error' => 'Método HTTP não suportado']);
        http_response_code(405);
}
