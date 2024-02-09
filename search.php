<?php
    require_once('db.php');
    $sql = 'SELECT * FROM Animes';
    $result = $db->query($sql, MYSQLI_USE_RESULT);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ՈՐՈՆԵԼ</title>
    <link rel="stylesheet" href="css/search.css">
</head>
<body>
    <?php require('header.php'); ?>
    
    <main>
        <div class="all">
            <div class="search">
                <div id="search-container">
                    <input type="text" id="search-input" placeholder="Որոնել անիմե...">
                </div>
            </div>
            <div id="anime-results">
                <?php
                    while ($row = mysqli_fetch_assoc($result)) {
                        ?>
                        <div class="anime-item">
                            <a href="video.php?Id=<?= $row['Id']?>">
                            <img src="<?=$row['Img'] ?>" alt="<?=$row['Title'] ?>">
                            <div class="layer">
                                <h3>
                                    <?= $row['Title']?>
                                </h3>
                            </div>
                            </a>
                        </div>
                        <?php
                    }
                ?>
            </div>
        </div>
    </main>
       
    <?php require('footer.php'); ?>

    <script src="js/script.js"></script>
    <script src="js/search.js"></script>
   
</body>
</html>