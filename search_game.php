<?php
    session_start();
    include("header.php");
    include("database.php");
    if(isset($_POST["search_game_button"])) {
        $_POST["search_game_button"] = explode("|", $_POST["search_game_button"]);
        if($_POST["search_game_button"][1] === "Play Now") {
            $_SESSION['play-now'] = $_POST["search_game_button"][0];
            header("Location: play.php");
        } else {
            // $_SESSION["Test"] = $_POST["search_game_button"][1];
            $_SESSION['buy-now'] = $_POST["search_game_button"][0];
            header("Location: buy.php");
        }

        // echo gettype($_POST["search_game_button"]);
    }

    if(isset($_POST["comment_post"])) {
        if(!empty($_POST["comment"])) {
            $sql = "SELECT * 
                    FROM company as c
                    RIGHT JOIN (
                            SELECT distinct mg.company_id, mg.game_id, g.game_name, g.img_url, g.sold_copies, g.genre
                            FROM made_games as mg
                            LEFT JOIN games as g
                            ON mg.game_id = g.game_id) as d
                    ON c.company_id = d.company_id
                    WHERE game_name = \"{$_SESSION["search"]}\"";
            $result = mysqli_query($conn, $sql);
            $result = mysqli_fetch_assoc($result);


            $sql = "SELECT * FROM games WHERE game_name = \"{$result["game_name"]}\"";
            $result = mysqli_query($conn, $sql);
            $game_id = mysqli_fetch_assoc($result)["game_id"];

            $sql = "INSERT INTO review
                    (username, game_id, comment)
                    VALUES 
                    ('{$_SESSION["username"]}', '{$game_id}', \"{$_POST["comment"]}\")";
            $result = mysqli_query($conn, $sql);
            

            header("Location: " . $_SERVER['PHP_SELF']);
            exit();
        }
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $_SESSION["search"]?></title>
    <style>
        body {
            background-color: black;
        }
        .search_game_container {
            background-color: rgb(32, 27, 27);
            height: 550px;
            width: 30vw;
            margin-left: 35vw; 
            margin-top: 10px;
            text-align: center;
            color: white;
            border-radius: 10px;
        }

        .search_game_img {
            height: 300px;
            width: 200px;
            border-radius: 10px;
            margin: 10px 0px;
        }

        .search-game-button, .comment-post {
            height: 60px;
            width: 200px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            background-color: #c30c56;
            border: none;
            color: white;
            border: 6px solid rgb(47, 45, 45);
            cursor: pointer;
            border-radius: 25px;
            font-size: 30px;
        }

        .comment-input {
            height: 100px;
            border-radius: 10px;
        }

        .comment-post {
            height: 100px;
            width: 300px;
            margin: 0px;
            border: 6px solid rgb(47, 45, 45);
            border-radius: 20px;
            margin-left: 10px;
            font-size: 40px;
        }

        .comment-container {
            text-align: center;
        }

        .comment-input-container {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 20px;
        }

        .comment {
            background-color: #424242;
            min-height: 100px;
            max-width: 80vw;
            margin-left: 10vw;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 20px;
            border-radius: 20px;
            margin-bottom: 20px;
            color: white;
            padding: 10px;
            border-right: 3px solid #c30c56;
            border-bottom: 6px solid #c30c56;
            font-size: 20px;
        }

        h2 {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <hr>
    <form class = 'search_game_container'action = "search_game.php" method = "post">
        <?php
            $check = 1;
            $sql_outer = "select * from games 
                        WHERE game_name = \"{$_SESSION["search"]}\"";
            $result_outer = mysqli_query($conn, $sql_outer);
            if(mysqli_num_rows($result_outer) > 0) {
                $sql = "SELECT * 
                FROM company as c
                RIGHT JOIN (
		                SELECT distinct mg.company_id, mg.game_id, g.game_name, g.img_url, g.sold_copies, g.genre
		                FROM made_games as mg
		                LEFT JOIN games as g
		                ON mg.game_id = g.game_id) as d
                ON c.company_id = d.company_id
                WHERE game_name = \"{$_SESSION["search"]}\"";
                $result = mysqli_query($conn, $sql);

                $sql = "select * 
                        FROM games 
                        INNER JOIN (SELECT * 
                                    FROM buy
                                    WHERE gamer_username = '{$_SESSION["username"]}') as buy
                        WHERE games.game_id = buy.game_id  and game_name = \"{$_SESSION["search"]}\"";
                $result1 = mysqli_query($conn, $sql);
                $result = mysqli_fetch_assoc($result);
                if(mysqli_num_rows($result1) > 0) {
                    $button_show = "Play Now";
                } else {
                    $button_show = "Buy Now";
                }

                $string_passed = $result["game_name"]."|".$button_show;

                echo "
                    <img class = 'search_game_img' src = '{$result["img_url"]}'/>
                    <br>
                    <hr>
                    <br>
                    <h1>{$result["game_name"]}</h1>
                    <p>Created by {$result["company_name"]}</p>
                    <p>Genre {$result["genre"]}</p>
                    <button class = 'search-game-button' name = 'search_game_button' value = \"{$string_passed}\">{$button_show}</button>
                ";
                $check = 0;
            } else {
                echo "<h1>Couldn't find your game";
            }
        ?>
    </form>

    <!-- new feature -->
    <form class = 'comment-container'action = "search_game.php" method = "post">
        <!-- <div class="comment-input-container">
            <input class = 'comment-input' name = "comment" type = "text" placeholder="Comment..."></input>
            <button class = "comment-post" name = "comment_post">POST</button>
        </div> -->
        
        <?php
        if($check == 0) {
            echo '<div class="comment-input-container">
            <input class = "comment-input" name = "comment" type = "text" placeholder="Comment..."></input>
            <button class = "comment-post" name = "comment_post">POST</button>
        </div>';
            $sql = "SELECT * FROM games WHERE game_name = \"{$result["game_name"]}\"";
            $result = mysqli_query($conn, $sql);
            $game_id = mysqli_fetch_assoc($result)["game_id"];

            $sql = "SELECT * FROM review WHERE game_id = '{$game_id}' ORDER BY review_id DESC";
            $result = mysqli_query($conn, $sql);

            for($iterator = 0; $iterator < mysqli_num_rows($result); $iterator++) {
                $row = mysqli_fetch_assoc($result);
                echo "
                    <div class = 'comment'>
                        <h2><u>{$row["username"]}:</u></h2> {$row["comment"]}
                    </div>
                ";
            }
        }
        ?>
    </form>
</body>
</html>

