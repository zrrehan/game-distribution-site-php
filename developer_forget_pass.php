<!-- developer_forget_pass.php -->

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
        <h2>RESET PASSWORD</h2>

        <?php
            session_start();
            include("database.php");
            if(!empty($_POST["username"]) && !empty($_POST["password"])) {
                $sql = "UPDATE company 
                                SET password = '{$_POST["password"]}'
                                WHERE username = '{$_POST["username"]}'";
                $result = mysqli_query($conn, $sql);
                $_SESSION["username"] = $_POST["username"];
                header("Location: paid_games_up.php");
            } else {
                echo "<h1 style = 'background-color: red'>FIllup Username and Password</h1>";
            }
        ?>

        <form action = "developer_forget_pass.php" method = "post">
            <input type = "text" name = "username" placeholder="Username"><br>
            <input type = "password" name = "password" placeholder="New Password"><br>
            <button>Change Password and LogIn</button>
        </form>
    </div>
</body>
</html>



