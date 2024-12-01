<?php
    session_start();
    include("header.php");
    include("database.php");
    if(isset($_POST["buy-shards"])) {
        header("Location: buy_shards.php");
    }

    if(isset($_POST["play-now"])) {
        $_SESSION["play-now"] = $_POST["play-now"];
        header("Location: play.php");
    }    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $_SESSION["username"]." Profile" ?></title>
    <link rel = "stylesheet" href = "styles/own_profile.css">
</head>
<body>
    <h1 class = "header_text">Your Profile</h1>
    <form class="own_container" action = "own_profile.php" method = "post">
        <?php
            $sql = "SELECT * from gamers WHERE username = '{$_SESSION["username"]}'";
            $result = mysqli_query($conn, $sql);
            $user = mysqli_fetch_assoc($result);
            
            echo "
                <h2>{$user["username"]}</h2>
                <p>Total Games Played: {$user["total_games"]}</p>
                <p>💎 {$user["wallet_amount"]} Shards </p>
                <button class = 'buy-shards' name = 'buy-shards'\" >Buy Shards</button>
            ";
        ?>
    </form>
    <br><h1 class = "header_text">Your Games</h1>
    <div class="game_showcase">
        <?php
            $sql = "SELECT * FROM 
                    (SELECT * FROM buy WHERE gamer_username = '{$_SESSION["username"]}') as a
                    INNER JOIN games 
                    WHERE a.game_id = games.game_id";
            $result = mysqli_query($conn, $sql);

            if(mysqli_num_rows($result) > 0) {
                for($iterator = 0; $iterator < mysqli_num_rows($result); $iterator++) {
                    $games = mysqli_fetch_assoc($result);
                    echo "
                        <form class = 'game-container' action = 'own_profile.php' method = 'post'>
                            <img class = 'own-game-img'src = '{$games["img_url"]}'/>
                            <div class = 'description'>
                                <h1>{$games["game_name"]}</h1>
                                <button class = 'play-now' name = 'play-now' value = \"{$games["game_name"]}\" >Play Now</button>
                            </div>
                        </form>
                    ";
                }
            }
        ?>
    </div>
</body>
</html>


