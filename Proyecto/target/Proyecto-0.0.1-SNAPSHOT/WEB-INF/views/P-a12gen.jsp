<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/diseno2.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <script type="text/javascript">function delet(param1,param2,param3,param4){
    	var c = document.getElementById("can").value;
    	console.log(c);
    	var este = {
    			"id" : param1,
    			"modelo" : param2,
    			"precio" : param3,
    			"img" : param4,
    			"cantidad" : c
    	}
    	$.ajax({
    		type : "POST",
    	       contentType : "application/json",
    	       url : "${pageContext.request.contextPath}/loadCityByCountry",
    	       data : JSON.stringify(este),
    	       dataType : 'json',
    	       success : function(data) {
            	var resolver = JSON.stringify(data.text);
            	alert(resolver);
            	console.log(resolver);
                },
                error: function (e) {
        	        console.log(e);
        	    },
        	    done : function(e) {
                    console.log("DONE");
                }
        });
    }</script>
</head>
<body>
      <div class="cab">
        <ul>
          <li><a href="${pageContext.request.contextPath}/view">Inicio</a></li>
          <li><a href="${pageContext.request.contextPath}/loader/catalogo">Catalogo</a></li>
          <li><a href="#">News</a></li>
          <li><a href="#">Cotizaciones</a></li>
          <li><a href="#">Sobre Nosotros</a></li>
          <li class="carro"><a href="${pageContext.request.contextPath}/carritoCompras"><i class='fas fa-shopping-cart' style='font-size:40px;color:white'></i></a></li>
        </ul>
      </div>
      <c:set var="proces" value="${procesa}"/>
      <h1>${proces.modelo}</h1>
      <div id="contenido">
          <img src="${pageContext.request.contextPath}${proces.img}" alt="amda12">
          <h2>${proces.precio}</h2>
          <input id="can" type="number" min="1" max="12">
          <button onclick="delet('${proces.idproc}','${proces.modelo}','${proces.precio}','${proces.img}')">Agregar al carrito</button>
          </div>
          <table>
            <caption>Especificaciones</caption>
            <tr>
              <th>N.° de núcleos de CPU</th>
              <td>4</td>

            </tr>
            <tr>
              <th>N.° de núcleos de GPU</th>
              <td>8</td>

            </tr>
            <tr>
              <th>Núcleos de cómputo</th>
              <td>12 (4 CPU + 8 GPU)</td>

            </tr>
            <tr>
              <th>Reloj de aumento máx.</th>
              <td>Hasta 3.8GHz</td>
            </tr>
            <tr>
              <th>Caché L2 total</th>
              <td>2MB</td>
            </tr>
            <tr>
              <th>Desbloqueados</th>
              <td>Sí</td>
             </tr>
            <tr>
              <th>CMOS</th>
              <td>28nm</td>
             </tr>
            <tr>
              <th>Paquete</th>
              <td>AM4</td>
            </tr>
            <tr>
              <th>*Compatible con SO</th>
              <td>Windows 10 edición de 64·bits
                  RHEL x86 edición de 64·bits
                  Ubuntu x86 edición de 64·bits
                  *El soporte del sistema operativo (SO) variará según el fabricante.</td>
             </tr>
             <tr>
              <th>Temp. máx.</th>
              <td>90°C</td>
              </tr>
        </table>
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