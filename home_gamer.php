<?php
    session_start();
    if(isset($_POST["see_more"])) {
        $_SESSION["search"] =  $_POST["see_more"];
        header("Location: search_game.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Titan Forge Games</title>
    <link rel = "stylesheet" href = "styles/home_gamers.css">
</head>
<body>
    <?php
        include("header.php");
        echo "<h1 class = 'header_text'>Top Games You may Like</h1>";
    ?>
    <div class="container">
    <?php
        include("database.php");
        $sql = "SELECT * 
                FROM company as c
                RIGHT JOIN (
		                SELECT distinct mg.company_id, mg.game_id, g.game_name, g.img_url, g.sold_copies, g.genre
		                FROM made_games as mg
		                LEFT JOIN games as g
		                ON mg.game_id = g.game_id) as d
                ON c.company_id = d.company_id
                ORDER BY sold_copies DESC";

        $result = mysqli_query($conn, $sql);

        for($idx = 0; $idx < mysqli_num_rows($result); $idx++) {
            $row = mysqli_fetch_assoc($result);
            $img = $row["img_url"];
            $name = $row["game_name"];
            echo "<form action = 'home_gamer.php' method = 'post' class = 'game_box'>
                    <img src = '{$img}' class = 'game_image'>
                    <div class = 'description'>
                        <h1>{$name}</h1>
                        <br>
                        <hr>
                        <br>
                        <p>Genre: {$row["genre"]}</p>
                        <p>{$row["sold_copies"]} People played it</p>
                        <p>Company: {$row["company_name"]}</p><br>
                        <button class = 'see-more' name = 'see_more' value = \"{$name}\" >See More</button>
                    </div> 
                </form>";
        }
    ?>
    </div>
    
</body>
</html>



