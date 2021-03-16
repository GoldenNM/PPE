<?php
session_start();

//partie haute commune à toutes les pages
require "partie_commune_haute.php";

//*AFFICHAGE DES IDENTIFIANTS DE L'UTILISATEUR S'IL est DEJA CONNECTE

?>


<head>
    <link href="main.css" rel="stylesheet">
</head>

<header>
    <center>
        <div class="slide1" id="carousel"></div>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/11981551-1526573769.32.jpg" class="d-block" width="70%">
                </div>
                <div class="carousel-item">
                    <img src="img/chalet-des-fermes-chalet-cheminee-cosy-megeve-owe3frn.JPG" class="d-block" width="85%">
                </div>
                <div class="carousel-item">
                    <img src="img/11715eb7-54a7-4597-82d8-221a3455f8ac_maison-campagne.jpg" class="d-block" width="65%">
                </div>
                <div class="carousel-item">
                    <img src="img/Maison-de-campagne-%C3%A0-moins-de-100km.jpeg" class="d-block" width="80%">
                </div>
                <div class="carousel-item">
                    <img src="img/dc108de2f13c09c58996a786f856ada4.jpg" class="d-block" width="80%">
                </div>
                <div class="carousel-item">
                    <img src="img/660.jpg" class="d-block" width="80%">
                </div>
                <div class="carousel-item">
                    <img src="img/5e3839c5eccc22a20f42cd3a-1580748549-800x500.jpg" class="d-block" width="71%">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Précédent</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Suivant</span>
            </a>
        </div>
    </center>
    <script>
        var slides = document.querySelectorAll('#slides .slide');
        var currentSlide = 0;
        var slideInterval = setInterval(nextSlide, 200);

        function nextSlide() {
            slides[currentSlide].className = 'slide';
            currentSlide = (currentSlide + 1) % slides.length;
            slides[currentSlide].className = 'slide showing';
        }
        //#sourceURL=pen.js

    </script>
</header>

<body>
    <hr align=center size=8 width="60%" color="black">
    <div class="container">
        <img src="img/n.png" class="img-fluid">
    </div>
    <center>
        <div class="card mb-3 align-content-center flex-wrap" style="max-width: 1200px;">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="img/864_00-2020-03-04-0141.jpg" class="card-img" alt="">
                </div>
                <div class="col-md-8 row align-items-center">
                    <div class="card-body">
                        <p class="card-text">
                            Neige et soleil est une entreprise de location dédié aux vacances et au repos. Nous vous proposont une large gamme de logement partout en France. En collaboration avec les particuliers mettant à votre disposition leur propriété.</p>
                    </div>
                </div>
            </div>
        </div>
        <br><br>
        <h1>Choisissez Neige et soleil pour des vacances hors du temps</h1>
        <hr align=center size=8 width="60%" color="black">
        <br><br>
        <div class="card-deck " style="max-width: 1600px;">
            <div class="card">
                <img src="img/221_00-2020-11-27-0250.jpg" class="card-img-top" alt="...">
                <div class="card-body row align-items-center">
                    <p class="card-text ">Quel que soit la saison, la durée, la période, nous proposons toute l'année nos offres en accord avec les propriétaires. Parmis nos offres, vous pouvez trouver vos vacances de sports d'hiver idéales durant ou hors les périodes de vacances scolaires.</p>
                </div>
            </div>
            <div class="card">
                <img src="img/entrepreneur-famille.jpg" class="card-img-top" alt="...">
                <div class="card-body row align-items-center">
                    <p class="card-text">Seul ou en famille, nous vous proposons des séjours inoubliable hors de votre quotidien. Votre repos est notre mission. Vous pourrez ainsi, chisir le logement de votre séjour en fonction du nombre de chambre à un prix tout à fait abordables négociés par nos soins avec les propriétaires. Nos logements sont tout équipés (internet, cuisine, télévision, salle de bains et bien plus encore ...)</p>
                </div>
            </div>
            <div class="card">
                <img src="img/unnamed.jpg" class="card-img-top" alt="...">
                <div class="card-body row align-items-center">
                    <p class="card-text">Avez-vous un maison, chalet, un appartement à louer ? Si c'est le cas vous pouvez directement le faire sur notre site en postant une anonce, notre service de location sera la pour négocier avec vous le prix à établir. Il vous sera possible de vous rétracter à tout moment. Pourquoi choisir notre groupe ? Notre objectif n'est pas de faire de l'argents mais de vous en faire économiser. En effet sur la totalité du prix d'une location, 90% revient directement aux propriétaires de cette dernières. Alors n'hésitez plus et réservez.</p>
                </div>
            </div>
        </div>
    </center>
</body>





<?php //Footer commun à toutes les pages 
require "footer.php";  ?>
