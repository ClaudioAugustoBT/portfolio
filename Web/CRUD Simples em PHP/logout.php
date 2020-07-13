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
          session_start();

          session_destroy();

          echo "<script>window.open('index.html','_self')</script>"
        ?>
  </body>
</html>