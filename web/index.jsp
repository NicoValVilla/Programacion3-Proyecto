<%-- 
    Document   : index
    Created on : 12/03/2019, 05:46:27 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>GAMELAB</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="Estilos/css/home.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="shortcut icon" href="Estilos/Imagenes/Logo-2.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">  
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    </head>
    <body>
        <!-- PRELOADER -->
    <div class="preloader" id="preloader">
        <div>
            <div>
                <span class="sword"></span>
                <span class="sword swordtwo"></span>
            </div>
        </div>
        <p class="preloader__text">Cargando...</p>
    </div>
    <!-- HEADER -->
    <header class="header">
        <div class="header__section1">
            <button class="header__section1__button" id="btnmenu"><i class="fas fa-bars"></i></button>
            <div class="header__section1__bg__responsive" id="bgmenu"></div>
            <img src="Estilos/Imagenes/Logo-3.png" class="header__section1__img" alt="logo">
            <ul class="header__section1__list">
                <li>
                <a href="">
                    <li>
                        HELP
                    </li>
                </a>
                </li>
                <li>
                    <a href="">SUPPORT</a>
                </li>
                <li>
                    <a href="">SELL YOUR</a>
                </li>
            </ul>
            <ul class="header__section1__list__responsive" id="menu">
                <a href="">
                    <li>
                        HELP
                    </li>
                </a>
                <a href="">
                    <li>
                        SUPPORT
                    </li>
                </a>
            </ul>
        </div>
        <div class="header__section2">
            <ul class="header__section2__list">
                <li>
                    <a href="login.jsp"><button class="btn btn-danger">Iniciar Sesion</button></a>
                </li>

            </ul>
        </div>
    </header>
    <!-- NAVBAR -->
    <nav class="navbar">
        <ul class="navbar__list">
            <li><a href="index.jsp">PRODUCTOS CARACTERISTICOS</a></li>
        </ul>
        <!-- <ul class="navbar__list__items">
            <li>
                <button class="dropdown-toggle" id="dropdownLanguaje" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">ENG</button>
                <div class="dropdown-menu" aria-labelledby="dropdownLanguaje" style="left: auto;">
                    <a class="dropdown-item" href="#">ENG</a>
                    <a class="dropdown-item" href="#">ESP</a>
                    <a class="dropdown-item" href="#">DEU</a>
                </div>
            </li>
            <li>
                <button class="dropdown-toggle" id="dropdownCurrency" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">USD</button>
                <div class="dropdown-menu" aria-labelledby="dropdownCurrency" style="left: auto;">
                    <a class="dropdown-item" href="#">USD</a>
                    <a class="dropdown-item" href="#">COP</a>
                    <a class="dropdown-item" href="#">MXN</a>
                </div>
            </li>
        </ul> -->
    </nav>
    <!-- FIRST SECTION -->
    <section class="section__carousel">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="Estilos/Imagenes/img1.jpg" alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Left 4 Dead</h3>
                        <p>Juego con bajos requerimientos</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="Estilos/Imagenes/img2.jpg" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Noticias</h3>
                        <p>Muchas noticias sobre nuevos juegos y huevos de pascua!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="Estilos/Imagenes/img3.jpg" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Descubre el mundo</h3>
                        <p>Ven con tus amigos y descubre nuestro mundo de juegos</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Anterior</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Siguiente</span>
            </a>
        </div>
    </section>
    <!-- SEARCH -->
    <div class="search">
        <div class="input-group input__search">
            <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><i class="fas fa-search"></i></span>
            </div>
            <input type="text" class="form-control" placeholder="Buscar Juego" aria-label="Username" aria-describedby="basic-addon1">
        </div>
        <p>Mas populares: <span>Grand Theft Auto IV | Gears of War | God Of War 2 | Path of Exile</span></p>
    </div>
    <!-- ALL GAMES -->
    <section class="games">
        <div class="games__container">
            <div class="gamer__showmore">
                <i class="far fa-plus-square"></i>
                <p>Ultimos juegos</p>
            </div>
            <ul class="games__cards">
                <li>
                    <img src="Estilos/Imagenes/gta.png" alt="">
                    <p class="games__gametitle">Grand Theft Auto V CD KEY</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $102.100</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $53.000</p>
                            <p>Nuevo Precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                    </div>
                </li>
                <li>
                    <img src="Estilos/Imagenes/crysis.png" alt="">
                    <p class="games__gametitle">Crysis Trilogy</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $102.100</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $53.700</p>
                            <p>Nuevo Precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                        <img src="Estilos/Imagenes/origin.png" alt="">
                    </div>
                </li>
                <li>
                    <img src="Estilos/Imagenes/dgb.png" alt="">
                    <p class="games__gametitle">Dragon Ball Xenoverse RUS</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $49.990</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $28.240</p>
                            <p>Nuevo Precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                    </div>
                </li>
                <li>
                    <img src="Estilos/Imagenes/crysis.png" alt="">
                    <p class="games__gametitle">Crysis Trilogy</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $102.100</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $23.700</p>
                            <p>Nuevo Precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                        <img src="Estilos/Imagenes/origin.png" alt="">
                    </div>
                </li>
            </ul>
            <div class="gamer__showmore">
                <i class="far fa-plus-square"></i>
                <p>Mejores Vendidos</p>
            </div>
            <ul class="games__cards">
                <li>
                    <img src="Estilos/Imagenes/fallout.png" alt="">
                    <p class="games__gametitle">Fallout 76</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $100.000</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $90.000</p>
                            <p>Nuevo Precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                    </div>
                </li>
                <li>
                    <img src="Estilos/Imagenes/fifa.png" alt="">
                    <p class="games__gametitle">Fifa 19</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $76.500</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $57.350</p>
                            <p>Nuevo precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                    </div>
                </li>
                <li>
                    <img src="Estilos/Imagenes/crew.png" alt="">
                    <p class="games__gametitle">The Crew 2</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $80.90</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $32.600</p>
                            <p>Nuevo precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/origin.png" alt="">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                    </div>
                </li>
                <li>
                    <img src="Estilos/Imagenes/monsterh.png" alt="">
                    <p class="games__gametitle">Monster Hunter world</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $57.000</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $37.100</p>
                            <p>Nuevo Precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                    </div>
                </li>
            </ul>
            <ul class="games__cards">
                <li>
                    <img src="Estilos/Imagenes/gta.png" alt="">
                    <p class="games__gametitle">Grand Theft Auto V CD KEY</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $102.100</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $42.700</p>
                            <p>Nuevo Precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                    </div>
                </li>
                <li>
                    <img src="Estilos/Imagenes/crysis.png" alt="">
                    <p class="games__gametitle">Crysis Trilogy</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $102.100</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $ 23.700</p>
                            <p>Nuevo Precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                        <img src="Estilos/Imagenes/origin.png" alt="">
                    </div>
                </li>
                <li>
                    <img src="Estilos/Imagenes/dgb.png" alt="">
                    <p class="games__gametitle">Dragon Ball Xenoverse RUS</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $49.999</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $28.200</p>
                            <p>Nuevo Precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                    </div>
                </li>
                <li>
                    <img src="Estilos/Imagenes/crysis.png" alt="">
                    <p class="games__gametitle">Crysis Trilogy</p>
                    <div class="price__container">
                        <div class="prices">
                            <p class="prices__title__reduced">COP $102.100</p>
                            <p>Precio Anterior</p>
                        </div>
                        <div class="prices">
                            <p class="prices__title">COP $23.700</p>
                            <p>Nuevo Precio</p>
                        </div>
                    </div>
                    <div class="platforms">
                        <img src="Estilos/Imagenes/steam.png" alt="">
                        <img src="Estilos/Imagenes/origin.png" alt="">
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <!-- PARTNERS -->
    <section class="partners">
        <img src="Estilos/Imagenes/paypal.png" alt="paypal">
        <img src="Estilos/Imagenes/visa.png" alt="visa">
        <img src="Estilos/Imagenes/ucash.png" alt="ukash">
        <img src="Estilos/Imagenes/webmoney.png" alt="webmoney">
    </section>
    <!-- FOOTER -->
    <footer class="footer">
        <div class="footer__section1">
            <img src="Estilos/Imagenes/Logo-3.png" class="footer__section1__logo" alt="logo">
            <button class="footer__section1__btnsupport">CENTRO DE APOYO</button>
            <p>Copyright &copy; 2018 GameLab</p>
            <p>Todos los derechos reservados</p>
        </div>
        <div class="footer__section2">
            <div class="footer__section2__subsection1">
                <p class="footer__section2__subsection1__title">Obten tu descuento</p>
                <p class="footer__section2__subsection1__content">Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur illo voluptatibus fugiat quam unde quo ullam tenetur eligendi eum voluptas illum magni blanditiis quas iusto, labore repellat autem delectus omnis?</p>
                <a href="" class="footer__section2__subsection1__clickhere">CLICK AQUÍ</a>
            </div>
            <div class="footer__section2__subsection2">
                <p class="footer__section2__subsection2__title">Redes sociales</p>
                <a class="footer__section2__subsection2__network1" href="">
                    <div>
                        <i class="fab fa-facebook-square"></i>
                        <p>Visitanos en Facebook</p>
                    </div>
                </a>
                <a class="footer__section2__subsection2__network2" href="">
                    <div>
                        <i class="fab fa-twitter-square"></i>
                        <p>Siguenos en Twitter</p>
                    </div>
                </a>
                <a class="footer__section2__subsection2__network3" href="">
                    <div>
                        <i class="fab fa-youtube-square"></i>
                        <p>Miranos en YouTube</p>
                    </div>
                </a>
            </div>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="Estilos/js/home.js"></script>
    </body>
</html>
