<?php
ini_set('display_errors', 1);

require_once "conexao.php";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $primeiroNome = $_POST['firstname'];
    $cpf = $_POST['cpf'];
    $email = $_POST['email'];
    $celular = $_POST['celular'];
    $password = $_POST['password'];
    $confirmPassword = $_POST['confirmPassword'];
    
    if (empty($primeiroNome) || empty($cpf) || empty($email) || empty($celular) || empty($password) || empty($confirmPassword)) {
        die("Erro: Todos os campos devem ser preenchidos.");
    }

    if ($password !== $confirmPassword) {
        die("Erro: As senhas estão diferentes.");
    }

    $sql = "INSERT INTO cadastro (nome, cpf, email, celular, senha) VALUES (?, ?, ?, ?, ?)";
    
    $stmt = mysqli_prepare($conn, $sql);

    if ($stmt) {
        mysqli_stmt_bind_param($stmt, 'sssss', $primeiroNome, $cpf, $email, $celular, $password);

        try {
            mysqli_stmt_execute($stmt);
            header('Location: login.html');
            exit();
        } catch (mysqli_sql_exception $e) {
            // Verifica se a exceção é devido a uma entrada duplicada
            if ($e->getCode() == 1062) {
                die("Erro: Já existe um registro com o CPF '$cpf'.");
            } else {
                die("Erro ao executar a consulta: " . $e->getMessage());
            }
        }

        mysqli_stmt_close($stmt);
    } else {
        die("Erro na preparação da consulta: " . mysqli_error($conn));
    }
}
?>
