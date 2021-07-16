<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false" %>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/diseno3.css">
  <title>Menu</title>
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
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
  <h1>Todos los productos</h1>
  <div id="contenido">
  <div class="content">
    <img src="${pageContext.request.contextPath}/resources/images/muchosProcesadores.jpg" alt="muchosProcesadores">
    <h2 class="TituloProducto">Procesadores</h2>
    <ul class="DescripProduct">
      <li><a href="${pageContext.request.contextPath}/proc/P-i9c123">Procesador Intel Core i7-10510U</a></li>
      <li><a href="${pageContext.request.contextPath}/proc/P-a12gen">7th Gen A12-9800E APU</a></li>
      <li><a href="${pageContext.request.contextPath}/proc/P-amdry9">AMD Ryzen 9 3900X</a></li>
    </ul>
  </div>
  <div class="content">
    <img src="${pageContext.request.contextPath}/resources/images/Tarjetas.jpg" alt="Tarj">
    <h2 class="TituloProducto">Tarjetas graficas</h2>
    <ul class="DescripProduct">
      <li><a href="${pageContext.request.contextPath}/tarjegraf/TG-grtx27s">GEFORCE RTX 2070 SUPER</a></li>
    </ul>
  </div>
  <div class="content">
    <img src="${pageContext.request.contextPath}/resources/images/sshd.jpg" alt="Aire 3">
    <h2 class="TituloProducto">Memorias</h2>
    <ul class="DescripProduct">
    <li><a href="${pageContext.request.contextPath}/memoalm/MA-HXFDR4">HyperX Fury DDR4</a></li>
      <li><a href="${pageContext.request.contextPath}/memoalm/MA-HXPDR">HyperX Predator DDR4</a></li>
      <li><a href="${pageContext.request.contextPath}/memoalm/MA-S970EP">SSD 970 EVO Plus, 250 GB de Samsung</a></li>
    </ul>
  </div>
</div>
</div>
</body>
</html>
