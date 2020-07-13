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
      
        $nomeadd = $_POST['add_usuario'];
        $senhaadd = $_POST['add_senha'];
        $pefiladd = $_POST['add_perfil'];


        $strcon = mysqli_connect("localhost","root","usbw","db_claudio_johnny") or die('Erro ao conectar ao banco de dados');

        $sql = "INSERT INTO tb_usuario (ds_usuario, ds_senha, ds_perfil) VALUES ";
        $sql .= "('$nomeadd', '$senhaadd', '$perfiladd')";

        mysqli_query($strcon,$sql) or die("Erro ao tentar cadastrar registro");

        mysqli_close($strcon);

        echo "Usuario cadastrato com sucesso";
 
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