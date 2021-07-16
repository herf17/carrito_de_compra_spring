<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false" %>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/diseno.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/fonts.css">
  <title>Bienvenidos</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
<div id="contenedor">
  <div class="cab">
    <ul>
      <li><a href="${pageContext.request.contextPath}/view">Inicio</a></li>
      <li><a href="${pageContext.request.contextPath}/loader/catalogo">Catalogo</a></li>
      <li><a href="${pageContext.request.contextPath}/loader/admin">Login</a></li>
      <li class="carro"><a href="carritoCompras.html"><i class='fas fa-shopping-cart' style='font-size:40px;color:white'></i></a></li>
    </ul>
  </div>
  <div>
  <div class="main">

    
    <h1>Electrónica Oriente </h1>
    
         <div class="slides">
              <img src="${pageContext.request.contextPath}/resources/images/procesador.jpg" alt="">
              <img src="${pageContext.request.contextPath}/resources/images/ram1.jpg" alt="">
              <img src="${pageContext.request.contextPath}/resources/images/tarjeta.jpg" alt="">
         </div>
    </div>
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slides.js"></script>
    <script>

      $(function(){
      $(".slides").slidesjs({
        play: {
          active: true,
            // [boolean] Generate the play and stop buttons.
            // You cannot use your own buttons. Sorry.
          effect: "slide",
            // [string] Can be either "slide" or "fade".
          interval: 3000,
            // [number] Time spent on each slide in milliseconds.
          auto: true,
            // [boolean] Start playing the slideshow on load.
          swap: true,
            // [boolean] show/hide stop and play buttons
          pauseOnHover: false,
            // [boolean] pause a playing slideshow on hover
          restartDelay: 2500
            // [number] restart delay on inactive slideshow
        }
      });
    });
    </script>
  </div>
  <div class="encabecont">
    <div class="encabecontcu">
      <img src="${pageContext.request.contextPath}/resources/images/Tarjetas.jpg" alt="tarjet">
      <h3>Tarjetas graficas</h3>
      <ul>
        <li>GeForce GTX-RTX</li>
        <li>GeForce TITAN</li>
        <li>NVIDIA Quadro</li>
        <li>NVIDIA Tesla</li>
      </ul>
    </div>
    <div class="encabecontcu">
      <img src="${pageContext.request.contextPath}/resources/images/muchosProcesadores.jpg" alt="proce">
      <h3>Procesadores</h3>
      <ul>
        <li>Celeron</li>
        <li>Pentium</li>
        <li>Core</li>
        <li>Xeon e Itanium</li>
      </ul>
    </div>
    <div class="encabecontcu">
      <img src="${pageContext.request.contextPath}/resources/images/sshd.jpg" alt="memorias">
      <h3>Memorias</h3>
      <ul>
        <li>Ram</li>
        <li>HDD</li>
        <li>SSD</li>
      </ul>
    </div>
    <div class="encabecontcu">
      <img src="${pageContext.request.contextPath}/resources/images/muchasPlacasm.jpg" alt="placasm">
      <h3>Placas madre</h3>
      <ul>
        <li>ATX</li>
        <li>Micro ATX</li>
        <li>ITX</li>
        <li>Entre otros</li>
      </ul>
    </div>
    <div class="encabecontcu">
      <img src="${pageContext.request.contextPath}/resources/images/cajaspc.jpg" alt="box">
      <h3>Cajas PC</h3>
      <ul>
        <li>Mini Torre</li>
        <li>Semitorre</li>
        <li>Súper Torre</li>
      </ul>
    </div>
    <div class="encabecontcu">
      <img src="${pageContext.request.contextPath}/resources/images/ventiladorenfria.jpg" alt="box">
      <h3>Enfriamiento</h3>
      <ul>
        <li>Water Cooling</li>
        <li>Por aire</li>
        <li>Metal liquido</li>
        <li>Termoeléctrica</li>
      </ul>
    </div>
    <div class="encabecontcu">
      <img src="${pageContext.request.contextPath}/resources/images/fuentes-poder-computadoras.jpg" alt="box">
      <h3>Fuentes de alimentacion</h3>
      <ul>
        <li>ATX</li>
        <li>SFX</li>
        <li>Modulares</li>
        <li>Externas</li>
      </ul>
    </div>
  </div>
  <!--<div id="menu">
    <a href="#">Procesadores</a>
    <a href="#">Tarjetas graficas</a>
    <a href="#">Memoria Ram</a>
    <a href="#">Memoria de almacenamiento</a>
  </div>-->
  <div id="conte">
  <div id="contenidoNuevos">
    <h2>Productos Nuevos</h2>
    <div class="cuadritosNuevos">
      <h3><a href="#">intel-core-i9-7900x</a></h3>
      <a href="#"><img src="${pageContext.request.contextPath}/resources/images/procesador-intel-core-i9-7900x.jpeg" alt="procesador1"></a>
      <h4>$980.00</h4>
    </div>
    <div class="cuadritosNuevos">
      <h3>rtx_2080super</h3>
      <a target=_blank href="#"><img src="${pageContext.request.contextPath}/resources/images/rtx_2080super.jpeg" alt="tarjeta1"></a>
      <h4>$525.80</h4>
    </div>
      <div class="cuadritosNuevos">
        <h3><a href="#">HyperX Fury DDR4</a></h3>
        <a target=_blank href="#"><img src="${pageContext.request.contextPath}/resources/images/HyperX Fury DDR4.jpg" alt="memoria ram1"></a>
        <h4>$480.99</h4>
    </div>
    <div class="cuadritosNuevos">
      <h3><a href="#">970 EVO Plus, 250 GB</a></h3>
      <a target=_blank href="#"><img src="${pageContext.request.contextPath}/resources/images/Samsung MZ-V7S250BW.jpg" alt="maemoriassd1"></a>
      <h4>$112.80</h4>
    </div>
    <div class="cuadritosNuevos">
      <h3><a href="#">Ryzen 9 3900X</a></h3>
      <a target=_blank href="#"><img src="${pageContext.request.contextPath}/resources/images/RyzenBox.png" alt="tarjeta2"></a>
      <h4>$725.00</h4>
    </div>
</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="masVendidos">
  <h2>Mas Vendidos</h2>
  <div class="cuadritosNuevos">
    <h3><a href="#">Aerocool Streak</a></h3>
    <a href="#"><img src="${pageContext.request.contextPath}/resources/images/Aerocool Streak.png" alt="caja as"></a>
    <h4>$40.00</h4>
  </div>
  <div class="cuadritosNuevos">
    <h3><a href="#">Corsair H150i Pro</a></h3>
    <a href="#"><img src="${pageContext.request.contextPath}/resources/images/Corsair H150i Pro.jpg" alt="ventila chp"></a>
    <h4>$220.85</h4>
  </div>
    <div class="cuadritosNuevos">
      <h3><a href="#">MSI Z390 MEG Godlike</a></h3>
      <a href="#"><img src="${pageContext.request.contextPath}/resources/images/MSI Z390 MEG Godlike.png" alt="placa m"></a>
      <h4>$709.21</h4>
  </div>
  <div class="cuadritosNuevos">
    <h3><a href="#">Thermaltake Level 20 GT RGB Plus</a></h3>
    <a href="#"><img src="${pageContext.request.contextPath}/resources/images/Thermaltake Level 20 GT RGB Plus.jpg" alt="caja tl20gt"></a>
    <h4>$290.99</h4>
  </div>
  <div class="cuadritosNuevos">
    <h3><a href="#">Intel 660p, 512 GB</a></h3>
    <a href="#"><img src="${pageContext.request.contextPath}/resources/images/Intel 660p, 512 GB.jpg" alt="ssd 1"></a>
    <h4>$99.99</h4>
  </div>
</div>
</div>
<div id="pie">
</div>
</div>
<footer>

   <div class="container-footer-all">

        <div class="container-body">

            <div class="colum1">
                <h1>Mas informacion de esta página web</h1>

                <p>Esta página web se encarga de presentar y vender productos nuevos
                referentes a piezas de PC como los son las tarjetas gráficas,
                la ram y los procesadores</p>

            </div>

            <div class="colum2">

                <h1>Redes Sociales</h1>

                <div class="row">
                    <img src="${pageContext.request.contextPath}/resources/icon/facebook.png">
                    <label>Siguenos en Facebook</label>
                </div>
                <div class="row">
                    <img src="${pageContext.request.contextPath}/resources/icon/twitter.png">
                    <label>Siguenos en Twitter</label>
                </div>
                <div class="row">
                    <img src="${pageContext.request.contextPath}/resources/icon/instagram.png">
                    <label>Siguenos en Instagram</label>
                </div>
                <div class="row">
                    <img src="${pageContext.request.contextPath}/resources/icon/google-plus.png">
                    <label>Siguenos en Google Plus</label>
                </div>
                <div class="row">
                    <img src="${pageContext.request.contextPath}/resources/icon/pinterest.png">
                    <label>Siguenos en Pinteres</label>
                </div>


            </div>

            <div class="colum3">

                <h1>Informacion Contactos</h1>

                <div class="row2">
                    <img src="${pageContext.request.contextPath}/resources/icon/house.png">
                    <label>Valle Dorado ave.Luz,serca
                           de la plaza alfrente de la
                           parada,casa M-20</label>
                </div>

                <div class="row2">
                    <img src="${pageContext.request.contextPath}/resources/icon/smartphone.png">
                    <label>+507-6788-7133</label>
                </div>

                <div class="row2">
                    <img src="${pageContext.request.contextPath}/resources/icon/contact.png">
                     <label>yahirmorales2630@gmail.com</label>
                </div>

            </div>

        </div>

    </div>

    <div class="container-footer">
           <div class="footer">
                <div class="copyright">
                    © 2019 Todos los Derechos Reservados | <a href="">Team Y.H.A.M</a>
                </div>

                <div class="information">
                    <a href="">Informacion Compañia</a> | <a href="">Privacion y Politica</a> | <a href="">Terminos y Condiciones</a>
                </div>
            </div>

        </div>

</footer>
</body>
</html>
