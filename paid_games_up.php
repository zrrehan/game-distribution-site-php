<?php
    session_start();
    include("developer_header.php");
    include("database.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Free games Upload</title>
    <style>
        body {
            background-color: black;
        }
    </style>
</head>
<body>
    <form action = "paid_games_up.php" method = "post" class = 'upload-form'>
        <input type = "text" name = "game_name" placeholder="Name of The game"/>
        <input type = "text" name = "img_url" placeholder = "Game Cover Image URL"/>
        <input type = "text" name = "genre" placeholder="Genre"/>
        <input type = "number" step = "any" name = "price" placeholder="Price"/><br>
        <button class = "upload-button">UPLOAD</button>
    </form>
</body>
</html>



<?php
    if(!empty($_POST["game_name"]) && !empty($_POST["img_url"]) && !empty($_POST["genre"]) && !empty($_POST["price"])) {
        $sql = "SELECT * FROM company WHERE username = '{$_SESSION["developer"]}'";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        $company_id = $row["company_id"];

        $sql = "INSERT INTO games
                (game_name, img_url, sold_copies, genre)
                VALUES
                (\"{$_POST["game_name"]}\", '{$_POST["img_url"]}', '0', '{$_POST["genre"]}')";
        $result = mysqli_query($conn, $sql);

        $sql = "SELECT * FROM games WHERE game_name = \"{$_POST["game_name"]}\"";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        $game_id = $row["game_id"];

        $sql = "INSERT INTO made_games
                (company_id, game_id)
                VALUES
                ('{$company_id}', '{$game_id}')";
        $result = mysqli_query($conn, $sql);

        $sql = "INSERT INTO paid_games
                (game_id, price)
                VALUES
                ('{$game_id}', '{$_POST["price"]}')";
        $result = mysqli_query($conn, $sql);
        echo "<h1 class = 'comment' >Your game has been uploaded successfully</h1>";
        // echo "<h1 class = 'comment' >Hello world </h1>";

    } else {
        echo "<h1 class = 'comment' >Fill-up Each Details Please </h1>";
    }
?>