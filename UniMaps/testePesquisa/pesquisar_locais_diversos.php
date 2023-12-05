<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa Locais</title>
</head>
<body>
    <center>
        <h1>PESQUISA LOCAIS DIVERSOS</h1>

        <form method="GET" action="pesquisar_locais_diversos.php">
            <label for="local">LOCAL:</label>
            <input type="text" name="local">
            <input type="submit" value="Procurar Local">
        </form>

        <?php
        if (isset($_GET['local'])) {
            require("conexao.php");

            $pesquisa_local = $_GET['local'];
            $sql = "SELECT ID, DESCRICAO, REFERENCIA
                    FROM locais_diversos
                    WHERE DESCRICAO = '$pesquisa_local'";
                  

            $conecta = $conn->query($sql);

            if ($conecta->num_rows > 0) {
                echo '<table border="4">';
                echo '<tr>';
                echo '<td>ID</td>';
                echo '<td>DESCRIÇÃO</td>';
                echo '<td>REFERÊCIA</td>';
                echo '</tr>';
                while ($dado = $conecta->fetch_assoc()) {
                    echo '<tr>';
                    echo '<td>' . $dado['ID'] . '</td>';
                    echo '<td>' . $dado['DESCRICAO'] . '</td>';
                    echo '<td>' . $dado['REFERENCIA'] . '</td>';
                    echo '</tr>';
                }
                echo '</table>';
            } else {
                echo '<p>LOCAL NÃO ENCONTRADO</p>';
            }

            $conn->close();
        }
        ?>  

        <a href="index.html"><input type="button" value="Voltar"></a>
    </center>
</body>
</html>
