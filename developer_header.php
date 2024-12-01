<head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Baskervville+SC&family=Inter+Tight:ital,wght@0,100..900;1,100..900&display=swap');
        * {
            padding: 0px;
            margin: 0px;
            font-family: "Inter Tight", sans-serif;
        }
        .logo {
            height: 50px;
            width: 50px;
        }
        .comment {
            background-color: #c30c56;
            color: black;
            height: 50px;
            width: 700px;
            border-top-right-radius: 100px;
        }
        .header,.selector {
            background-color: black;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
        }
        .free-games, .paid-games, .upload-button {
            height: 50px;
            width: 50%;
            font-size: 20px;
            background-color: #c30c56;
            border: none;
            border: 6px solid rgb(47, 45, 45);
            cursor: pointer;
            border-radius: 20px;
        }

        input {
            width: 60%;
            height: 70px;
            padding: 20px;
            

            background-color: rgb(65, 64, 64);
            border: none;
            font-size: 30px;
            color: rgb(255, 247, 233);
            padding: 0px 10px;
            border-radius: 10px;
            
            margin: 20px
        }
        .upload-form {
            text-align: center;
        } 

        .instruction {
            background-color: rgb(65, 64, 64);
            color: rgb(255, 247, 233);
            margin: 20px;
            height: 70px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

    </style>
</head>
<body>
    <div class="header">
        <img class = "logo"src = 'styles/logo.png'/>
    </div>
    <form action = "developer_header.php" method = "post" class="selector">
        <button class="free-games" name = "free_games">UPLOAD FREE GAMES</button>
        <button class="paid-games" name = "paid_games">UPLOAD PAID GAMES</button>
        <button class="paid-games" name = "ads">UPLOAD AD</button>
    </form>
</body>

<?php
    if(isset($_POST["free_games"])) {
        header("Location: free_game_up.php");
    }

    if(isset($_POST["paid_games"])) {
        header("Location: paid_games_up.php");
    }

    if(isset($_POST["ads"])) {
        header("Location: create_ad.php");
    }
?>