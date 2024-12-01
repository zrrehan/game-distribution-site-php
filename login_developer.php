<?php
    session_start();
?>

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
        <h2>LOGIN Now [Developer]</h2>

        <?php
            include("database.php");

            if(isset($_POST["username"]) && isset($_POST["password"])) {
                $sql = "SELECT * FROM company WHERE username = '{$_POST["username"]}'";
                $result = mysqli_query($conn, $sql);
                
                // echo $row["username"];

                if(mysqli_num_rows($result) == 1) {
                    $row = mysqli_fetch_assoc($result);
                    if($row["password"] == $_POST["password"]) {
                        $_SESSION["developer"] = $_POST["username"];
                        header("Location: paid_games_up.php");
                        
                    }else {
                        echo "<h1 style = 'background-color: red'>Wrong password or Username</h1>";
                    }
                } else {
                    echo "<h1 style = 'background-color: red'>Wrong password or Username</h1>";
                }
                
            } 
        ?><br>

        <form action = "login_developer.php" method = "post">
            <input type = "text" name = "username" placeholder="Username"><br>
            <input type = "password" name = "password" placeholder="Password"><br>
            <button>LOGIN</button>
        </form>
        <a href = "developer_register.php">Create New Account</a><br><br>
        
        <a href = "developer_forget_pass.php">Forgot Password</a>
    </div>
</body>
</html>