<?php
session_start();
require "constants.php";
require "functions.php";
//partie haute commune à toutes les pages
require "partie_commune_haute.php";

//creation de la categorie
$bdd = connectBDD( NAMEBDD, ROOT, HOST, MDPBDD );
?>

<div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow">
    <?php
    
    //************AFFICHAGE DES CATEGORIES*********/////////
    $req = $bdd->prepare('SELECT titre,email FROM category', array());
    $req->execute();
    while($ligne = $req->fetch()){
        $t=$ligne['titre'];
        $e=$ligne['email'];
        echo $t."<br>"." auteur: ".$e;
        echo  "<br><hr>";

    }   

    ///***********CREATION DES CATEGORIES**/////
    if (isset( $_POST['submit'] )) 
    {

       
        $titre = $_POST['titre'];
        $email = $_SESSION['email'];


        $requete = $bdd->prepare( 'INSERT INTO category(titre,email) VALUES
    (:titre,:email)' );
        $requete->bindValue( ':titre', $titre, PDO::PARAM_STR );
        $requete->bindValue( ':email', $email, PDO::PARAM_STR );
        $requete->execute();

        echo '<div class=" mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow">
               La categorie '.$titre.' a bien été créée!</div>'; 


    }
    //Formulaire de creation de categories
    if(isset($_SESSION['email'])){
        echo '


    <form class="form-signin" method="post" action="categorie.php">
        <div class="text-center mb-4">
            <br>
            <img src="img/cube.jpg" width="72" height="72">
            <br>
        </div>

        <div class="form-label-group">
            <label for="inputTitre">Créer categorie</label>

            <input type="text" id="inputTitre" class="form-control" placeholder="Titre" name="titre" required autofocus>

        </div>
        <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Créer</button>

    </form>
    <br>
    <a class="btn btn-sm btn-outline-secondary" href="index.php">Retour</a>';
    }
    else
    {
        echo 'Vous devez vous connecter pour créer une catégorie !!
    <form class="form-signin" method="post" action="categorie.php">
        <div class="text-center mb-4">
            <br>
            <img src="img/cube.jpg" width="72" height="72">
            <br>
        </div>

        <div class="form-label-group">
            <label for="inputTitre">Créer categorie</label>

            <input type="text" id="inputTitre" class="form-control" placeholder="Titre" name="titre" required autofocus disabled>

        </div>
        <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit" disabled>Créer</button>

    </form>
    <br>
    <a class="btn btn-sm btn-outline-secondary" href="index.php">Retour</a>';

    }

    ?>

</div>


<?php
//Footer commun à toutes les pages
require "footer.php";

?>
