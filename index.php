<?php
include('lib/functions.php');
header('content-type: application/json');

// Obtener la URI solicitada
$requestUri = $_SERVER['REQUEST_URI'];

// Remover los parámetros de consulta si existen
$requestUri = strtok($requestUri, '?');

// Verificar el método de solicitud y la URI
if ($_SERVER['REQUEST_METHOD'] == "GET") {
    switch ($requestUri) {
        case '/api/productos':
            $json = get_productos();
            if (empty($json)) {
                header("HTTP/1.1 404 Not Found");
            }
            echo json_encode($json);
            break;
        
        case '/api/clientes':
            $json = get_clientes();
            if (empty($json)) {
                header("HTTP/1.1 404 Not Found");
            }
            echo json_encode($json);
            break;
        
        case '/api/orden':
            $json = get_orden();
            if (empty($json)) {
                header("HTTP/1.1 404 Not Found");
            }
            echo json_encode($json);
            break;

        default:
            header("HTTP/1.1 400 Bad Request");
            echo json_encode(['error' => 'Invalid endpoint']);
            break;
    }
} else {
    header("HTTP/1.1 405 Method Not Allowed");
    echo json_encode(['error' => 'Invalid HTTP method']);
}

?>