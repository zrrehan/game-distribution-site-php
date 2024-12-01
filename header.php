<head>
<link rel = "stylesheet" href = "styles/header.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
<form action = "header.php" class = "header" method = "post">
    <a class = "logo" href = "home_gamer.php"><img src = "styles/logo.png"></a>
    <div class = "search-container">
        <input type = "text" name = "search" placeholder = "Search..."/>
        <button class = "search-button"><i class="fa-solid fa-magnifying-glass"></i></button>
    </div>
    
    <a href = "own_profile.php"><img src = "styles/own_img.webp"></a>
</form>
</body>

<?php
    if(isset($_POST["search"])) {
        session_start();
        if($_POST["search"] == "") {
            header("Location: home_gamer.php");
        } else {
            $_SESSION["search"] = $_POST["search"];
            header("Location: search_game.php");
        }
        
    } 
?>