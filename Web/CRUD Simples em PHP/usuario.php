<!DOCTYPE html>
<html lang="pt-br">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/estilo.css">

    <title>Exercicio - PHP</title>

  </head>
  <body>
        <?php
           session_start();
           if($_SESSION["logado"] != TRUE)
           {
               header("Location: intex.html");
           }
           else
           {
               echo "<h1>Seja bem-vindo, ".$_SESSION['usu']."</h1>";
           }
        ?>

        <h1>ADICIONA USUARIO</h1>
        <form method="post" action="validainsert.php">
          Login: <input type="text" name="add_login" required="required"><br><br>
          Senha: <input type="password" name="add_senha" required="required"><br><br>
          <input type="submit" value="SALVAR">
        </form>
        <br>
        <br>   
        <a href="logout.php">SAIR DO SISTEMA</a>           
  </body>
</html>