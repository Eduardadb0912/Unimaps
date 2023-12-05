<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa Blocos</title>
</head>
<body>
    <center>
        <h1>PESQUISA BLOCOS</h1>

        <form method="GET" action="pesquisar_blocos.php">
            <label for="bloco">BLOCO:</label>
            <input type="text" name="bloco">
            <input type="submit" value="Procurar Bloco">
        </form>

        <?php
        if (isset($_GET['bloco'])) {
            require("conexao.php");

            $pesquisa_bloco = $_GET['bloco'];
            $sql = "SELECT ID, BLOCO, DESCRICAO, REFERENCIA
                    FROM blocos
                    WHERE BLOCO = $pesquisa_bloco";
                  

            $conecta = $conn->query($sql);

            if ($conecta->num_rows > 0) {
                echo '<table border="4">';
                echo '<tr>';
                echo '<td>ID</td>';
                echo '<td>BLOCO</td>';
                echo '<td>DESCRIÇÃO</td>';
                echo '<td>REFERÊCIA</td>';
                echo '</tr>';
                while ($dado = $conecta->fetch_assoc()) {
                    echo '<tr>';
                    echo '<td>' . $dado['ID'] . '</td>';
                    echo '<td>' . $dado['BLOCO'] . '</td>';
                    echo '<td>' . $dado['DESCRICAO'] . '</td>';
                    echo '<td>' . $dado['REFERENCIA'] . '</td>';
                    echo '</tr>';
                }
                echo '</table>';
            } else {
                echo '<p>BLOCO NÃO ENCONTRADO</p>';
            }

            $conn->close();
        }
        ?>  

        <a href="index.html"><input type="button" value="Voltar"></a>
    </center>
</body>
</html>
