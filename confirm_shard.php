<?php
    session_start();
    include("header.php");
    include("database.php");

    if(isset($_POST["yes"])) {
        $sql = "INSERT INTO currency_purchase
                (package_amount, username)
                VALUES 
                ('{$_SESSION["shards_buy"]}', '{$_SESSION["username"]}')";
        $result = mysqli_query($conn, $sql);

        $sql = "UPDATE gamers 
                SET wallet_amount = wallet_amount + {$_SESSION["shards_buy"]}
                WHERE username = '{$_SESSION["username"]}'";
        $result = mysqli_query($conn, $sql);
        header("Location: own_profile.php");
    }

    if(isset($_POST["no"])) {
        header("Location: own_profile.php");
    }
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .confirm-container {
            background-color: rgb(32, 27, 27);
            height: 550px;
            width: 30vw;
            margin-left: 35vw; 
            margin-top: 10px;
            text-align: center;
            color: white;
            border-radius: 10px;
        }

        .button-confirm {
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
        body {
            background-color: black;
        }
    </style>
</head>
<body>
    <hr>
    <form class = 'confirm-container' action = "confirm_shard.php" method = "post">
        <h1>Do you Really wanna buy <?php echo $_SESSION["shards_buy"]?> shards 💎</h1>
        <button class = "button-confirm" name = "yes">YES</button>
        <button class = "button-confirm" name = "no">No</button>
    </form>
</body>
</html>