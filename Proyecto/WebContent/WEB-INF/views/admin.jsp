<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/diseno3.css">
  <title>Menu</title>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
  <h1>ADMINISTRADOR</h1>
  <div id="contenido">
  <div class="content">
    <h2 class="TituloProducto">Inventario</h2>
    <ul class="DescripProduct">
      <li><a href="#">Agregar producto</a></li>
      <li><a href="#">Editar producto</a></li>
      <li><a href="${pageContext.request.contextPath}/admin/actualizarstock">Actualizar Stock</a></li>
      <li><a href="${pageContext.request.contextPath}/admin/actualizarprecio">Actualizar Precio</a></li>
    </ul>
  </div>
  <div class="content">
    <h2 class="TituloProducto">Compras</h2>
    <ul class="DescripProduct">
      <li><a href="${pageContext.request.contextPath}/admin/vercompras">Ver compras</a></li>
    </ul>
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