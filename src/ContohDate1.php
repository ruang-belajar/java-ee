<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Waktu sekarang:
        <?php
            $sekarang = date();
            echo $sekarang;
        ?>
        <Br>
        Bisa juga di cetak menggunakan <code>&lt;?= ... %&gt;</code>
        <?=$sekarang?>
    </body>
</html>
