<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
	<head>
		<title>Ejemplo01</title>
		<link rel="stylesheet" type="text/css" href="css/estilos.css"/>
		<script type="text/javascript" src="js/validacion.js"></script>
	</head>
	<body>
		<form id="miformulario" action="InsertarLibro.jsp">
			<fieldset>
				<legend>Formulario alta libro</legend>
				<p><label for="isbn">ISBN:</label><input type="text" name="isbn" id="isbn"/></p>
				<p><label for="titulo">Titulo:</label><input type="text" name= "titulo"/></p>
				<p><label for="categoria">Categoria :</label><input type="text" name="categoria" style="width: 63%;"/></p>
				<p><input type="button" value="Insertar" onclick="validacion();"/></p>
			</fieldset>
		</form>
	</body>
</html>