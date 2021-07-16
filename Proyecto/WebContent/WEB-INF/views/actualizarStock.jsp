<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/diseno3.css">
  <title>Menu</title>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script type='text/javascript'>
var este;
function colorChanger(el){
	este = $(el).text();
	$("#idd").text(este);
	$("#cambio").css("visibility","visible");
	console.log(este);
}
function enviar(){
	var e = document.getElementById("Name").value;
	console.log(este);
	location.href = "${pageContext.request.contextPath}/admin/actualizarstock/"+este+"/"+e;
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
<div id="cambio">
<label id="idd" for="Name"></label>
<input type="number" id="Name" name="Name" />
<button onclick="enviar()">Cambiar</button>
</div>
<input type="text" id="search" placeholder="Type to search">
<table id="table">
<tr>
<th>Id producto</th>
<th>Modelo</th>
<th>Stock</th>
</tr>
<c:forEach var="tempstock" items="${stocks}">
<tr>
<td style="cursor:cell;" onclick="colorChanger(this);">${tempstock.id}</td>
<td>${tempstock.modelo}</td>
<td contenteditable="true">${tempstock.stock}</td>
</tr>

</c:forEach>
</table>
<script>var $rows = $('#table tr');
$('#search').keyup(function() {
    var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
    
    $rows.show().filter(function() {
        var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
        return !~text.indexOf(val);
    }).hide();
});</script>
</div>
</body>
</html>