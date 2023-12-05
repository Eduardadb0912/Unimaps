<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa Salas</title>
</head>
<body>
    <center>
        <h1>PESQUISA SALAS</h1>

        <form method="GET" action="pesquisar_salas.php">
            <label for="sala">SALA:</label>
            <input type="text" name="sala">
            <input type="submit" value="Procurar Sala">
        </form>

        <?php
        if (isset($_GET['sala'])) {
            require("conexao.php");

            $pesquisa_sala = $_GET['sala'];
            $sql = "SELECT ID, NUMERO_SALA, BLOCO, DESCRICAO, REFERENCIA
                    FROM sala
                    WHERE NUMERO_SALA = $pesquisa_sala";
                  

            $conecta = $conn->query($sql);

            if ($conecta->num_rows > 0) {
                echo '<table border="4">';
                echo '<tr>';
                echo '<td>ID</td>';
                echo '<td>NUMERO SALA</td>';
                echo '<td>BLOCO</td>';
                echo '<td>DESCRIÇÃO</td>';
                echo '<td>REFERÊCIA</td>';
                echo '</tr>';
                while ($dado = $conecta->fetch_assoc()) {
                    echo '<tr>';
                    echo '<td>' . $dado['ID'] . '</td>';
                    echo '<td>' . $dado['NUMERO_SALA'] . '</td>';
                    echo '<td>' . $dado['BLOCO'] . '</td>';
                    echo '<td>' . $dado['DESCRICAO'] . '</td>';
                    echo '<td>' . $dado['REFERENCIA'] . '</td>';
                    echo '</tr>';
                }
                echo '</table>';
            } else {
                echo '<p>SALA NÃO ENCONTRADA</p>';
            }

            $conn->close();
        }
        ?>  

        <a href="index.html"><input type="button" value="Voltar"></a>
    </center>
</body>
</html>
