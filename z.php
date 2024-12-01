<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method = "post" action = "z.php">
        <input name = "comment" />
        <button name = "comment-post">SEND</button>
    </form>
</body>
</html>

<?php
    if(isset($_POST["comment-post"])) {
        if(!empty($_POST["comment"])) {
            echo $_POST["comment"];
        }
    }
?>