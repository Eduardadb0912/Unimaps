<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Login.css">
</head>

<body>
    <?php
    require 'conexao.php';
    if (isset($_POST['email']) && isset($_POST['senha'])) {
        $email = $_POST['email'];
        $senha = $_POST['senha'];

        $query = "SELECT * FROM cadastro WHERE email = '$email' AND senha = '$senha'";
        $result = $conn->query($query);

        if ($result->num_rows > 0) {
            header('Location: index.php');
            exit;

        } else {
            
            echo "Usuário ou senha inválidos. Tente novamente.";
        }
    } else {
        
        echo "Por favor, preencha tanto o nome de usuário quanto a senha.";
    }
    ?>

</body>

</html>