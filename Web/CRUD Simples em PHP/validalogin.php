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
            $_SESSION['logado']=false;
            $conexao = mysqli_connect("localhost","root","usbw","db_claudio_johnny");

            if(mysqli_connect_errno())
            {
                    echo "A conexão MySQLi apresentou erro: ".mysqli_connect_error();
            }

            if(isset($_POST['login']))
            {
                $login_usuario = mysqli_real_escape_string($conexao,$_POST['login']);
                $senha_usuario = mysqli_real_escape_string($conexao,$_POST['senha']);
                
                $seleciona_usuario = "select * from tb_usuario where ds_usuario='$login_usuario' AND ds_senha='$senha_usuario'";

                $procura = mysqli_query($conexao,$seleciona_usuario);
                $checa_usuario = mysqli_num_rows($procura);
                $resultado =  mysqli_fetch_assoc($procura);

                if($checa_usuario>0)
                {

                    $_SESSION['logado']=true;
                    $_SESSION['usuario']=$login_usuario;
                    $_SESSION['perfil_usuario'] = $resultado['ds_perfil'];

                    if($_SESSION['perfil_usuario'] == 'u'){
                        header("Location:usuario.php");
                    } else if($_SESSION['perfil_usuario'] == 'a'){
                        header("Location:administrador.php");
                    }
                    
                }
                else
                {
                    echo "<script>confirm('Login ou Senha com erro, tente novamente!',window.location.href='index.html')</script>";
                }
            }
        ?>
  </body>
</html>