<?php
    session_start();
    include("developer_header.php");
    include("database.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Free games Upload</title>
    <style>
        body {
            background-color: black;
        }
    </style>
</head>
<body>
    <form  action = "create_ad.php" method = "post" class = 'upload-form'>
        <input type = "text" name = "url" placeholder = "AD Image URL"/>
        <h2 class = 'instruction'>NB: You can only add 1 ad. If you add a new one, the previous ad will be deleted.</h2>
        <button class = "upload-button">UPLOAD</button>
    </form>
</body>
</html>

<?php
    if(!empty($_POST["url"])) {
        $sql = "SELECT * FROM company WHERE username = '{$_SESSION["developer"]}'";
        $result = mysqli_query($conn, $sql);
        $company_id = mysqli_fetch_assoc($result)["company_id"];

        $sql = "DELETE FROM ad WHERE company_id = '{$company_id}'";
        $result = mysqli_query($conn, $sql);
        
        $sql = "INSERT INTO ad 
                (ad_img_url, company_id)
                VALUES
                ('{$_POST["url"]}', '{$company_id}')";
        $result = mysqli_query($conn, $sql);
        echo "<h1 class = 'comment' >Your AD has been uploaded successfully</h1>";
        // echo $_SESSION["developer"];
    } else {
        echo "<h1 class = 'comment' >Fill-up Each Details Please </h1>";
    }
    
?>