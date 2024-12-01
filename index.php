<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Titan Forge Games</title>
    <link rel = "stylesheet" href = "styles/index.css">
</head>
<body>
    <div class="container">
        <h2>Register Now</h2>

        <?php
            session_start();
            include("database.php");
            if(isset($_POST["button"])) {
                if(!empty($_POST["username"]) && !empty($_POST["password"])) {
                    $sql_username = "SELECT * FROM gamers WHERE username = '{$_POST["username"]}'";
                    $res_username = mysqli_query($conn, $sql_username);
    
                    if(mysqli_num_rows($res_username)) {
                        echo "<h1 style = 'background-color: red'>Select new username!</h1>";
                    } else {
                        $sql = "INSERT INTO gamers
                                (username, total_games, wallet_amount, password)
                                VALUES
                                ('{$_POST["username"]}', 0, 0, {$_POST["password"]})";
                        mysqli_query($conn, $sql);
                        $_SESSION["username"] = $_POST["username"];
                        header("Location: home_gamer.php");
                    } 
                } else {
                    echo "<h1 style = 'background-color: red'>Fillup Everything</h1>";
                }
            }
        ?>

        <form action = "index.php" method = "post">
            <input type = "text" name = "username" placeholder="Username"><br>
            <input type = "password" name = "password" placeholder="Password"><br>
            <button name = "button">Register</button>
        </form>
        <a href = "login.php">Already Have Account</a><br><br>

        <a href = "developer_register.php">Developer Mode</a>
    </div>
</body>
</html>



