<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false" %>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/disenocarrito.css">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <title>Bienvenidos</title>
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <script type="text/javascript">function cambioCan(a){
      var cc = document.getElementsByClassName("example");
      for(var i = 0;i<cc.length;i++){
    	  if(cc[i].value != 0){
    		  var c = cc[i].value;
    	  }
      }
      var este = {
  			"id" : a,
  			"modelo" : "",
  			"precio" : "",
  			"img" : "",
  			"cantidad" : c
  	}
  	$.ajax({
  		type : "POST",
  	       contentType : "application/json",
  	       url : "${pageContext.request.contextPath}/cambio",
  	       data : JSON.stringify(este),
  	       dataType : 'json',
  	       success : function(data) {
          	var resolver = JSON.stringify(data.text);
          	alert(resolver);
          	console.log(resolver);
          	location.href = "${pageContext.request.contextPath}/carritoCompras";
              },
              error: function (e) {
      	        console.log(e);
      	    },
      	    done : function(e) {
                  console.log("DONE");
              }
      });
      console.log(c);
      console.log(a);
      console.log("funciono");
}
</script>
  
  <script>function subtota(a,b){
	  subtotal.push((a*b))
  }</script>
  <script type="text/javascript">function compra(){
	  $.ajax({
  		type : "POST",
  	       url : "${pageContext.request.contextPath}/compracarrito",
  	       success : function(data) {
          	//var resolver = JSON.stringify(data);
          	alert("Compra exitosa");
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
  }
  </script>
</head>
<body>
<div id="contenedor">
  <div class="cab">
    <ul>
      <li><a href="${pageContext.request.contextPath}/view">Inicio</a></li>
      <li><a href="${pageContext.request.contextPath}/loader/catalogo">Catalogo</a></li>
      <li><a href="${pageContext.request.contextPath}/loader/admin">Login</a></li>
      <li class="carro"><a href="${pageContext.request.contextPath}/carritoCompras"><i class='fas fa-shopping-cart' style='font-size:40px;color:white'></i></a></li>
    </ul>
  </div>
  <div class="encabecont">
    <div class="encabecontproduc">
    <script>var subtotal = [];</script>
    <c:forEach var="tempCC" items="${carrito}">
      <div class="encabecontcu">
        <img src="${pageContext.request.contextPath}${tempCC.img}" alt="tarjet">
        <a href="${pageContext.request.contextPath}/delete/${tempCC.id}"><img src="${pageContext.request.contextPath}/resources/icon/delete.png"></a>
        <h3>${tempCC.modelo}</h3>
        <ul>
          <li>${tempCC.precio}</li>
          <li>${tempCC.cantidad}</li>
          <li><select class="example" onchange="cambioCan('${tempCC.id}')">
          <option value="0">${tempCC.cantidad}</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
          <option value="13">13</option>
          <option value="14">14</option>
          <option value="15">15</option>
          <option value="16">16</option>
          <option value="17">17</option>
          <option value="18">18</option>
          <option value="19">19</option>
          <option value="20">20</option>
          <option value="21">21</option>
          <option value="22">22</option>
          <option value="23">23</option>
          <option value="24">24</option>
          <option value="25">25</option>
          <option value="26">26</option>
          <option value="27">27</option>
          <option value="28">28</option>
          <option value="29">29</option>
          <option value="30">30</option>
          <option value="31">31</option>
          <option value="32">32</option>
          <option value="33">33</option>
          <option value="34">34</option>
          <option value="35">35</option>
          <option value="36">36</option>
        </select></li>
        </ul>
      </div>
      <script>subtota(${tempCC.precio},${tempCC.cantidad})</script>
      </c:forEach>
      
  </div>
  <div id="subtotal">Subtotal:
  <p id="subt"></p>
  <button onclick="compra()">Checkout</button>
  <script>
      var h=0;
      for(var i = 0;i<subtotal.length;i++){
    	  h +=subtotal[i];
    	  console.log(subtotal[i]);
      }
      console.log(h);
      document.getElementById("subt").innerHTML = h;
  </script>
  </div>
</div>
<div id="pie">
<h5><a href="#">Informacion</a></h5>
<h5><a href="#">Contactenos</a></h5>
<h5><a href="#">Derechos reservados</a></h5>
<h5><a href="#">Politicas</a></h5>
</div>
</div>
</body>
</html>
