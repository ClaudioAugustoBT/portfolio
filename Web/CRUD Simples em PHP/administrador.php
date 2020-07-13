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
           if($_SESSION["logado"] != TRUE && $_SESSION['perfil_usuario'] != 'a' )
           {
               header("Location: index.html");
           }
           else
           {
               echo "<h1>Seja bem-vindo Administrador, ".$_SESSION['usu']."</h1>";
           }
        ?>
        <br>   
        <h1>ADICIONAR UM USUARIO</h1>
        <br>   
        <form method="post" action="validainsertADM.php">
          Login: <input type="text" name="add_usuario" required="required"><br><br>
          Senha: <input type="password" name="add_senha" required="required"><br><br>
          Add Perfil: <input type="text" name="add_perfil" required="required"><br><br>
          <input type="submit" value="SALVAR">
        </form>
        <br>
        <h1>ALTERAR DADOS DO USUARIO</h1>
        <br>   
        <form method="post" action="validaupdateADM.php">
            Login: <input type="text" name="pesq_usuario" required="required"><br><br> 
            Alterar Login: <input type="text" name="alter_usuario" required="required"><br><br>
            Alterar Senha: <input type="password" name="alter_senha" required="required"><br><br>
            Alterar Perfil: <input type="text" name="alter_perfil" required="required"><br><br>
          <input type="submit" value="ALTERAR">
        </form>
        <br>
        <br>   
        <a href="logout.php">SAIR DO SISTEMA</a>         
  </body>
</html>