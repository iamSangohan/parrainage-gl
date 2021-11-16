<?php
    try {
        $bdd = new PDO('mysql:host=localhost;dbname=parrainageDatabase;charset=utf8', 'root', '');
    } catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    $liste = $bdd->query('SELECT * FROM filleul INNER JOIN parrain ON idFilleul = id ORDER BY nomFilleul');

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Parrainage des GL</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/tableau.css" rel="stylesheet" />
</head>

<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand mx-auto" href="#page-top">Parrainage GL 2022</a>
        </div>
    </nav>
    <!-- Masthead-->
    <header class="masthead bg-primary text-white text-center">
        <!-- Resultat du parrainage -->
        <div class="container">
            <h2 class="mx-auto">Resultat du parrainage :</h2>
            <br> <br>
            <table>
                <thead>
                    <tr>
                        <th scope="col">NOMS DES FILLEULS</th>
                        <th scope="col">NOMS DES PARRAINS</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        while ($affichage = $liste->fetch()) {
                    ?>
                            <tr onclick="openModal(<?= $affichage['idFilleul']; ?>)" class="btnPopup">
                                <td><?= $affichage['nomFilleul']; ?></td>
                                <td><?= $affichage['nomParrain']; ?></td>
                                <div id="<?= $affichage['idFilleul']; ?>" class="overlay">
                                    <div id="popup" class="popup">
                                        Numero du parrain : <br> <br> <?= $affichage['numeroParrain']; ?>
                                        <br> <br>
                                        <span onclick="closePopup(<?= $affichage['idFilleul']; ?>)" class="btnClose">&times;</span>
                                    </div>
                                </div>
                            </tr>
                    <?php
                        }
                    ?>
                </tbody>
            </table>
        </div>
    </header>

    <!-- Footer-->
    <footer class="">
        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container">
                <small>
                    <i class="fas fa-code"></i> with ❤ by Sangohan
                </small>
            </div>
        </div>
    </footer>

    <script src="./js/popup.js"></script>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

    <script src="js/extention/choices.js"></script>
    <script>
        var textPresetVal = new Choices('#choices-text-preset-values', {
            removeItemButton: true,
        });
    </script>

</body>

</html>