<?php
    session_start();
    include("database.php");
    include("header.php");
    // echo "Playing {$_SESSION['play-now']}";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Playing: <?php echo $_SESSION['play-now']?></title>
    <style>
        body {
            background-color: black;
        }
        .container {
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
        .ad-img {
            height: 300px;
            width: 200px;
            border-radius: 10px;
            margin: 10px 0px;
        }
        .no-ad-h1 {
            height: 100%;
            width: 100%;
            display: grid;
            justify-content: center;
            align-items: center;
        }
    </style>
</head>
<body>
    <hr>
    <form class = "container" action = "play.php" action = "method">
        <?php
            $sql = "SELECT * FROM games WHERE game_name = \"{$_SESSION["play-now"]}\"";
            $result = mysqli_query($conn, $sql);
            $game_row = mysqli_fetch_assoc($result);

            $sql = "select * 
                    FROM free_games as fg 
                    INNER JOIN games as g
                    WHERE g.game_id = fg.game_id and game_name = \"{$_SESSION["play-now"]}\"";
            $result = mysqli_query($conn, $sql);

            if(mysqli_num_rows($result) > 0) {
                $sql = "SELECT a.ad_img_url, b.game_name, a.company_name
                        FROM (
                            SELECT ad.ad_img_url, company.company_id, company.company_name FROM ad
                            INNER JOIN company 
                            WHERE ad.company_id = company.company_id
                        ) as a
                        INNER JOIN (
                            SELECT a.company_name, games.game_name 
                            FROM (
                                SELECT mg.game_id, c.company_id, c.company_name FROM made_games as mg 
                                INNER JOIN company as c
                                WHERE mg.company_id = c.company_id
                            ) as a 
                            INNER JOIN games 
                            WHERE games.game_id = a.game_id
                        ) as b 
                        WHERE a.company_name = b.company_name and b.game_name = \"{$_SESSION["play-now"]}\"";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);
                if(mysqli_num_rows($result) > 0) {
                    $ad_img = $row["ad_img_url"];
                    echo "
                        <h1>Thanks For Playing <br><i>'{$_SESSION["play-now"]}'</i><br> I hope you are enjoying it!<h1/><h1/><h1>⭐</h1>
                        <hr><h2>Coming Soon!!! By '<i>{$row["company_name"]}</i>'</h2>
                        <img class = 'ad-img' src = '{$ad_img} '>
                ";
                } else {
                    echo "<h1 class = 'no-ad-h1'>Thanks For Playing {$_SESSION["play-now"]}! I hope you are enjoying it!<br>⭐<h1/>";
                }
                // $ad_img = $row["ad_img_url"];
                // echo "
                //     <h1>Thanks For Playing <br><i>'{$_SESSION["play-now"]}'</i><br> I hope you are enjoying it!<h1/><h1/><h1>⭐</h1>
                //     <hr><h2>Coming Soon!!! By '<i>{$row["company_name"]}</i>'</h2>
                //     <img class = 'ad-img' src = '{$ad_img} '>
                // ";
            } else {
                echo "<h1 class = 'no-ad-h1'>Thanks For Playing {$_SESSION["play-now"]}! I hope you are enjoying it!<br>⭐<h1/>";
                
            }
        ?>
    </form>
</body>
</html>