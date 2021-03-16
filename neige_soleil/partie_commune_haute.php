<!doctype html>
<html lang="en">

<head>


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

    </style>
    <!-- Custom styles for this template -->
    <link href="main.css" rel="stylesheet">
</head>

<body style="background-color: #DCDCDC">

    <nav class="site-header sticky-top py-1">
        <div class="container d-flex flex-column  align-items-center flex-md-row justify-content-between bg-primary">
            <a class="py-2 d-none d-md-inline-block" href="index.php"><img src="img/ng.jpg" alt="" width=190px height=50px /></a>
            <a class="py-2 d-none d-md-inline-block" href="index.php">Accueil</a>
            <a class="py-2 d-none d-md-inline-block" href="creation_annonce.php">Créer annonce</a>
            <a class="py-2 d-none d-md-inline-block" href="reservation.php">Réserver</a>
            <?php 
                //Afficher deconnexion si l'utilisateur est deja connecté sinon afficher se connecter
                if (isset($_SESSION['firstName']) AND isset($_SESSION['lastName']))

                {
                    echo " <a class=\"py-2 d-none d-md-inline-block\" href=\"profil.php\">Profil</a>";
                    echo "<a class=\"py-2 d-none d-md-inline-block\" href=deconnexion.php>Deconnexion</a>";
                     
                }else
                {
                    echo "<a class=\"py-2 d-none d-md-inline-block\" href=connexion.php>Se connecter</a>";
                    echo "<a class=\"py-2 d-none d-md-inline-block\" href=inscription.php>S'inscrire</a>";
                               

                }
                ?>
            <h6>
                <?php //AFFICHAGE DU NOM ET PRENOM DE L'UTILISATEUR
            if (isset($_SESSION['firstName']) AND isset($_SESSION['lastName']))
                
                echo 
                '<div >
                    <a class="py-2 d-none d-md-inline-block" href=profil.php>'.$_SESSION['lastName'].' '.$_SESSION['firstName'].'</a>
                </div>';
                
            ?>
            </h6>


        </div>
    </nav>
