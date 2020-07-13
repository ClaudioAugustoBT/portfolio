<!DOCTYPE html>
<html lang="pt-br">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/estilo.css">

    <title>AULA C.R.U.D.</title>

  </head>
  <body>
      <?php
        $nomeusuario = $_POST['pesq_usuario'];
        $nomealter = $_POST['alter_usuario'];
        $senhaalter = $_POST['alter_senha'];
        $perfilalter = $_POST['alter_perfil'];

        if($nomealter == ""){
          $nomealter=$nomeusuario;
        }


        $strcon = mysqli_connect("localhost","root","usbw","db_claudio_johnny") or die('Erro ao conectar ao banco de dados');

        $seleciona_usuario = "select * from tb_usuario where ds_usuario='$nomeusuario'";

        $procura = mysqli_query($strcon,$seleciona_usuario);
        $resultado =  mysqli_fetch_assoc($procura);
        $checa_usuario = mysqli_num_rows($procura);

        

        if($checa_usuario>0)
        {   
          if($senhaalter == ""){
            $senhaalter=$resultado['ds_senha'];
          }
          if($perfilalter == ""){
            $senhaalter=$resultado['ds_perfil'];
          }
            
          $sql = "UPDATE INTO tb_usuario SET ds_senha = '$senhaalter', ds_perfil = '$senhaalter', ds_usuario = '$nomealter' WHERE ds_usuario = '$nomeusuario'";
          //$sql = "UPDATE INTO tb_usuario SET ds_perfil = '$senhaalter' WHERE ds_usuario = '$nomeusuario'";  
          //$sql = "UPDATE INTO tb_usuario SET ds_usuario = '$nomealter' WHERE ds_usuario = '$nomeusuario'";
           
        }
        else
        {
            echo "<script>confirm('Usuario não encontrado, tente novamente!',window.location.href='administrador.php')</script>";
        }



        mysqli_query($strcon,$sql) or die("Erro ao tentar alterar registro");

        mysqli_close($strcon);

        echo "Dados do usuario alterados com sucesso";
 
      ?>

      <button id="voltar" type="submit" value="">Voltar</button>
      <script type="text/javascript">
        $("#voltar").click(function(){
          window.location.href = "administrador.php"
        });
      </script>
        
    <!-- jQuery e outro scripts -->
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.js"></script>
  </body>
</html>