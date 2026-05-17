<?php 
include 'conexao.php';

// 1. Lógica para Vender
if (isset($_GET['venda_id'])) {
    $id = $_GET['venda_id'];
    $pdo->prepare("UPDATE produtos SET estoque_kg = estoque_kg - 1 WHERE id = ? AND estoque_kg > 0")->execute([$id]);
    header("Location: index.php"); exit;
}

// 2. Lógica para Cadastrar Novo Produto
if (isset($_POST['cadastrar'])) {
    $nome = $_POST['nome']; $preco = $_POST['preco']; $estoque = $_POST['estoque'];
    $pdo->prepare("INSERT INTO produtos (nome, preco_kg, estoque_kg) VALUES (?, ?, ?)")->execute([$nome, $preco, $estoque]);
    header("Location: index.php"); exit;
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>HortiMobile Pro - Gestão Total</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background: #e9ecef; margin: 0; padding: 20px; display: flex; gap: 20px; }
        .sidebar { width: 300px; background: white; padding: 20px; border-radius: 10px; height: fit-content; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        .main { flex: 1; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        .header { background: #2c3e50; color: white; padding: 15px; border-radius: 8px; margin-bottom: 20px; text-align: center; }
        input, button { width: 100%; padding: 10px; margin: 8px 0; border: 1px solid #ddd; border-radius: 5px; box-sizing: border-box; }
        button { background: #27ae60; color: white; border: none; cursor: pointer; font-weight: bold; }
        button:hover { background: #219150; }
        .table-container { max-height: 600px; overflow-y: auto; }
        table { width: 100%; border-collapse: collapse; }
        th { background: #f8f9fa; position: sticky; top: 0; padding: 12px; border-bottom: 2px solid #27ae60; text-align: left; }
        td { padding: 10px; border-bottom: 1px solid #eee; }
        .vender-btn { background: #e67e22; color: white; padding: 5px 10px; text-decoration: none; border-radius: 4px; font-size: 12px; }
        .badge { padding: 3px 6px; border-radius: 4px; font-size: 11px; font-weight: bold; background: #dff0d8; color: #3c763d; }
        .alert { background: #f2dede; color: #a94442; }
    </style>
</head>
<body>

    <div class="sidebar">
        <h3>➕ Novo Produto</h3>
        <form method="POST">
            <input type="text" name="nome" placeholder="Nome do Produto" required>
            <input type="number" step="0.01" name="preco" placeholder="Preço (R$)" required>
            <input type="number" name="estoque" placeholder="Qtd Inicial" required>
            <button type="submit" name="cadastrar">ADICIONAR AO ESTOQUE</button>
        </form>
    </div>

    <div class="main">
        <div class="header">
            <h1>🍎 HortiMobile - PDV Profissional</h1>
        </div>

        <input type="text" id="busca" placeholder="🔍 Pesquisar em todo o mercado...">

        <div class="table-container">
            <table id="tabela">
                <thead>
                    <tr>
                        <th>Produto</th>
                        <th>Preço</th>
                        <th>Estoque</th>
                        <th>Ação</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $dados = $pdo->query("SELECT * FROM produtos ORDER BY nome ASC");
                    while($p = $dados->fetch(PDO::FETCH_ASSOC)) {
                        $critico = $p['estoque_kg'] < 10;
                        echo "<tr>";
                        echo "<td><strong>{$p['nome']}</strong></td>";
                        echo "<td>R$ ".number_format($p['preco_kg'], 2, ',', '.')."</td>";
                        echo "<td><span class='badge ".($critico ? 'alert' : '')."'>{$p['estoque_kg']}</span></td>";
                        echo "<td><a href='index.php?venda_id={$p['id']}' class='vender-btn'>VENDER</a></td>";
                        echo "</tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>

    <script>
        document.getElementById('busca').addEventListener('keyup', function() {
            let f = this.value.toLowerCase();
            document.querySelectorAll('#tabela tbody tr').forEach(tr => {
                tr.style.display = tr.innerText.toLowerCase().includes(f) ? '' : 'none';
            });
        });
    </script>
</body>
</html>