<?php
    session_start();
    include("header.php");
    include("database.php");
    // echo "Playing {$_SESSION['username']}";
?>

<?php
    if(isset($_POST["buy-button"])) {
        $_SESSION["shards_buy"] = $_POST["buy-button"];
        header("Location: confirm_shard.php");
        // echo "<h1 class = 'header_text'>YOU JUST PURCHASED {$_POST["buy-button"]} shards 💎</h1>";

        // $sql = "INSERT INTO currency_purchase
        //         (package_amount, username)
        //         VALUES 
        //         ('{$_POST["buy-button"]}', '{$_SESSION["username"]}')";
        // $result = mysqli_query($conn, $sql);

        // $sql = "UPDATE gamers 
        //         SET wallet_amount = wallet_amount + {$_POST["buy-button"]}
        //         WHERE username = '{$_SESSION["username"]}'";
        // $result = mysqli_query($conn, $sql);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Shards</title>
    <style>
        body {
            background-color: black;
        }
        .header_text {
            background-color: #c30c56;
            color: black;
            height: 50px;
            width: 800px;
            border-top-right-radius: 100px;
        }

        .purchase-container {
            background-color: rgb(32, 27, 27);
            margin: 20px;
            text-align: center;
            height: 200px;
            width: 400px;
            flex-grow: 1;
            padding: 10px;
            border-radius: 10px;
            color: white;
        }

        .purchase-main-container {
            display: flex;
            flex-wrap: wrap;
        }
        
        .buy-button{
            height: 40px;
            width: 160px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            background-color: #c30c56;;
            border: none;
            color: white;
            border: 4px solid rgb(47, 45, 45);
            cursor: pointer;
            border-radius: 20px;
            font-size: 20px;
        }

    </style>
</head>
<body>
    <form class = 'purchase-main-container' action = "buy_shards.php" method = "post">
        <?php
            $sql = "SELECT * FROM currency_package";
            $result = mysqli_query($conn, $sql);
            for ($iterator = 0; $iterator < 5; $iterator++) {
                $row = mysqli_fetch_assoc($result);
                echo "
                    <div class = 'purchase-container'>
                        <h1>{$row['amount']} 💎</h1><br>
                        <p>Costs \${$row['price']}</p><br>
                        <button class = 'buy-button' name = 'buy-button' value = '{$row["amount"]}'>Buy Now</button>
                    </div>
                    ";
            }
        ?>
    </form>
</body>
</html>

