<?php
    session_start();
    include("database.php");
    include("header.php");
    if(isset($_POST["yes"])){
        $sql = "select * from buy where game_id = {$_POST["yes"]}";
        $result = mysqli_query($conn, $sql);
        $copy = mysqli_num_rows($result) + 1;
        
        $sql = "select * from paid_games where game_id = {$_POST["yes"]}"; //
        $result = mysqli_query($conn, $sql);
        $game_row = mysqli_fetch_assoc($result);
        if(mysqli_num_rows($result)>0){
            $game_price = $game_row["price"];
        } else {
            $game_price = 0.00;

            // Creating Counter for advertisement 
            // $counter_sql = 
        }
        


        $sql = "select * from gamers where username = '{$_SESSION["username"]}'";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        if($row["wallet_amount"] < $game_price) {
            echo "<h1 class = 'buy-head'>You dont have sufficient Shards to buy the game!</h1>";
        } else {
            $sql = "UPDATE gamers SET wallet_amount = wallet_amount - '{$game_price}' WHERE username = '{$_SESSION["username"]}'";
            $result = mysqli_query($conn, $sql);
            $sql = "UPDATE gamers SET total_games = total_games + 1  WHERE username = '{$_SESSION["username"]}'";
            $result = mysqli_query($conn, $sql);
            $sql = "UPDATE games SET sold_copies = sold_copies + 1  where game_id = {$_POST["yes"]}";
            $result = mysqli_query($conn, $sql);
            $sql = "INSERT INTO buy 
                    (gamer_username, game_id, copy_no)
                    VALUES 
                    ('{$_SESSION["username"]}', '{$_POST["yes"]}', '{$copy}')";
            $result = mysqli_query($conn, $sql);
            header("Location: Search_game.php");

        }

    }

    if(isset($_POST["no"])) {
        header("Location: Search_game.php");
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy <?php echo $_SESSION['buy-now'] ?></title>
    <style> 
        body {
            background-color: black;
        }
        .buy-head {
            background-color: #c30c56;
            color: black;
            height: 50px;
            width: 800px;
            border-top-right-radius: 100px;
        }
        .buy-img {
            height: 300px;
            width: 200px;
            border-radius: 10px;
            margin: 10px 0px;
        }

        .buy_games_container {
            background-color: rgb(32, 27, 27);
            height: 80vh;
            width: 30vw;
            margin-left: 35vw; 
            margin-top: 10px;
            text-align: center;
            color: white;
            border-radius: 10px;
            padding: 0px 20px;
        }

        .buy-game-button {
            height: 40px;
            width: 200px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            background-color: #c30c56;
            border: none;
            color: white;
            border: 6px solid rgb(47, 45, 45);
            cursor: pointer;
            border-radius: 20px;
        }
    </style>
</head>
<body>
    <hr>
    <form class = "buy_games_container" action = "buy.php" method = "post">
        <?php
            $sql = "
                SELECT pg.game_id, price, game_name, img_url, genre, price 
                FROM paid_games as pg
                INNER JOIN games as g
                WHERE pg.game_id = g.game_id and g.game_name = \"{$_SESSION['buy-now']}\"
            ";

            $result = mysqli_query($conn, $sql);
            $row = mysqli_fetch_assoc($result);
        
            if($row) {
                echo "
                <img class = 'buy-img'src = '{$row["img_url"]}'/>
                <br><hr><br>
                <h1>{$row["game_name"]}</h1>
                <p>Genre: {$row["genre"]}</p>
                <b>Price: {$row["price"]} Shards 💎</b>
                <br><hr><br>
                <h2>Are You Really Wanna Buy {$row["game_name"]}?</h2>
                <button class = 'buy-game-button' name = 'yes' value = {$row["game_id"]}>YES, Pay {$row["price"]} shards 💎</button>
                <button class = 'buy-game-button' name = 'no' >NO!</button>
            ";
            } else {
                /////////// free games
                    $sql = "
                    SELECT fg.game_id, game_name, img_url, genre
                    FROM free_games as fg
                    INNER JOIN games as g
                    WHERE fg.game_id = g.game_id and g.game_name = \"{$_SESSION['buy-now']}\"
                ";

                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);
                echo "
                <img class = 'buy-img'src = '{$row["img_url"]}'/>
                <br><hr><br>
                <h1>{$row["game_name"]}</h1>
                <p>Genre: {$row["genre"]}</p>
                <b>Price: 0 Shards 💎</b>
                <br><hr><br>
                <h2>Are You Really Wanna Get Free {$row["game_name"]}?</h2>
                <button class = 'buy-game-button' name = 'yes' value = {$row["game_id"]}>YES</button>
                <button class = 'buy-game-button' name = 'no' >NO!</button>
            ";
            }
        ?>
    </form>
    
</body>
</html>

