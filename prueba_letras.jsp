<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type='text/javascript' src='../js/jquery.js'></script>
<script type='text/javascript' src='../js/all.js'></script>
<title>Insert title here</title>
</head>
<style>
textarea { 
    resize: none; 
}
</style>
<body>
<form id="nuevaReceta" name="nuevaReceta" class="basic-form" action="prc_pruebas_letras.jsp" accept-charset="ISO-8859-1" method="post">
<table align="center" style="position:relative;top:50px;">
	<tr>
		<td>
			<select id="simbolos" onchange="formatoTexto('receta','simbolos');" name="simbolos" style="position:relative; top:-60px; text-align:center; width: 155px;">
            	<option value="">Selecciona el simbolo</option>
            	<option value="Ã">Ã</option>
            	<option value="ê">ê</option>
            	<option value="ℓ">ℓ</option>
            </select>
       </td>
       <td>
       		<textarea name="receta" id="receta" cols="50" rows="10" /></textarea>
       </td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="Guardar">
       </td>
	</tr>
</table>

</form>
//Comentario dos
</body>
</html>