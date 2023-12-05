<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="pesquisar.css">
    <title>Pesquisa Locais</title>
</head>
<body>
    <center>
        <h1>RESULTADOS</h1>
        
        <?php
            require("conexao.php");

            $pesquisa_local = $_POST['LOCAL'];
            $sql = "SELECT NOME, DESCRICAO, REFERENCIA, BLOCO FROM locais WHERE nome LIKE '%$pesquisa_local%' OR tipo LIKE '%$pesquisa_local%'";
            
                  
            $conecta = $conn->query($sql);

            if ($conecta->num_rows > 0) {
                echo '<table border="4">';
                echo '<tr>';
                echo '<td>NOME</td>';
                echo '<td>DESCRIÇÃO</td>';
                echo '<td>REFERÊNCIA</td>';
                echo '<td>BLOCO</td>'; // Adiciona uma coluna para o bloco
                echo '</tr>';
                while ($dado = $conecta->fetch_assoc()) {
                    echo '<tr>';
                    echo '<td>' . $dado['NOME'] . '</td>';
                    echo '<td>' . $dado['DESCRICAO'] . '</td>';
                    echo '<td>' . $dado['REFERENCIA'] . '</td>';
                    // Verifica se há um bloco associado
                    if (!empty($dado['BLOCO'])) {
                        echo '<td>' . $dado['BLOCO'] . '</td>';
                    } else {
                        echo '<td></td>'; // Adiciona uma célula vazia se não houver bloco
                    }
                    echo '</tr>';
                }
                echo '</table>';
            } else {
                echo '<p>LOCAL NÃO ENCONTRADO</p>';
            }

            $conn->close();
        
        ?>  

        <a href="index.php">Voltar</a>
    </center>
</body>
</html>
