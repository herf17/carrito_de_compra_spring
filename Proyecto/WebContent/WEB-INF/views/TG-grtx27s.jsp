<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false" %>
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
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <div class="cab">
        <ul>
          <li><a href="${pageContext.request.contextPath}/view">Inicio</a></li>
          <li><a href="${pageContext.request.contextPath}/loader/catalogo">Catalogo</a></li>
          <li><a href="#">Cotizaciones</a></li>
          <li class="carro"><a href="${pageContext.request.contextPath}/carritoCompras"><i class='fas fa-shopping-cart' style='font-size:40px;color:white'></i></a></li>
        </ul>
      </div>
       <c:set var="tar" value="${tarje}"/>
      <h1>${tar.modelo}</h1>
          <img src="${pageContext.request.contextPath}${tar.img}" alt="i">
          <h2>${tar.precio}</h2>
          <input id="can" type="number" min="1" max="12">
          <button onclick="delet('${tar.idtarjet}','${tar.modelo}','${tar.precio}','${tar.img}')">Agregar al carrito</button>
          
          <table>
            <caption>especificaciones</caption>
            <tr>
              <th>Arquitectura de GPU</th>
              <td>Turing</td>

            </tr>
            <tr>
              <th>RTX-OPS</th>
              <td>52T</td>

            </tr>
            <tr>
              <th>Frecuencia acelerada</th>
              <td>1770 MHz</td>

            </tr>
            <tr>
              <th>Memoria de vídeo</th>
              <td>8 GB GDDR6</td>
            </tr>
            <tr>
              <th>Caché L2 total</th>
              <td>14 Gbps</td>


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