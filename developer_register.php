<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameStation</title>
    <link rel = "stylesheet" href = "styles/index.css">
    <style>
        form {
            margin-bottom: 80px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register Now [Developer Mode]</h2>

        <?php
            include("database.php");
            if(isset($_POST["button"])) {
                if(!empty($_POST["company_name"]) && !empty($_POST["username"]) && !empty($_POST["password"])) {
                    $sql_company_name = "SELECT * FROM company WHERE company_name = '{$_POST["company_name"]}'";
                    $sql_username = "SELECT * FROM company WHERE username = '{$_POST["username"]}'";
                    $res_username = mysqli_query($conn, $sql_username);
                    $res_com_name = mysqli_query($conn, $sql_company_name);

                    if(mysqli_num_rows($res_com_name) || mysqli_num_rows($res_username)) {
                        echo "<h1 style = 'background-color: red'>Select new name and username!</h1>";
                    } else {
                        $sql = "INSERT INTO company
                                (company_name, password, username, revenue_share_percentage)
                                VALUES
                                ('{$_POST["company_name"]}', '{$_POST["password"]}', '{$_POST["username"]}', '15.00')";
                        mysqli_query($conn, $sql);
                        $_SESSION["developer"] = $_POST["username"];
                        header("Location: paid_games_up.php");
                    } 
                } else {
                    echo "<h1 style = 'background-color: red'>Select name and username!</h1>";
                }
            }
        ?>

        <form action = "developer_register.php" method = "post">
        <input type = "text" name = "company_name" placeholder="Company name"><br>
            <input type = "text" name = "username" placeholder="Username"><br>
            <input type = "password" name = "password" placeholder="Password"><br>
            <button name = "button">Register</button>
        </form>
        <a href = "login_developer.php">Already Have Account</a><br><br>

        <a href = "index.php">Gamer Mode</a>
    </div>
</body>
</html>

