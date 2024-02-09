<?php
    require_once('db.php');
    $sql = 'SELECT * FROM Animes Where Id = ' . $_GET['Id'];

    $result = $db->query($sql, MYSQLI_USE_RESULT);
    $row = mysqli_fetch_assoc($result);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ԴԻՏԵԼ</title>
    <link rel="stylesheet" href="css/video.css">
</head>
<body>
    <?php require('header.php'); ?>
    <main>
        <div class="imgvideo">
            <div class="imgdesc">
                <div class="img">
                    <img src="<?= $row['Img']?>">
                </div>
                <div class="description">
                    <h2 class="title"><?= ucfirst($row['Title'])?></h2>
                    <button class="fulldecs" onclick="toggleFullDesc()"><p class="desc" id="desc"></p></button>   
                    <div class="info">
                        <p class="per">Ժանրեր:</p>
                        <p class="genres"><?= ucfirst($row['Genres'])?></p>
                    </div>
                    <div class="info">
                        <p class="per">Թողարկման տարի:</p>
                        <p class="reldate"><?= ucfirst($row['ReleaseDate'])?></p>
                    </div>
                    <div class="info">
                        <p class="per">Տեսակը:</p>
                        <p class="type"><?= ucfirst($row['Type'])?></p>
                    </div>
                </div>
            </div>
            <div class="video">
                <video controls preload src="<?=$row['Video']?>"></video>
            </div>

            <div class="mindesc">
                <p class="desc" id="desc"></p>
            </div>
        </div>
    </main>

    <?php require('footer.php'); ?>

    <script src="js/script.js"></script>
    <script src="js/video.js"></script>
    <script>
        addArticleDesc("<?=$row['Id']?>");
    </script>
</body>
</html>