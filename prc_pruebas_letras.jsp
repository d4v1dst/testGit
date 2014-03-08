<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"
    %>
<%
String contenidoTextArea="";
try {
	contenidoTextArea = request.getParameter("receta");
} catch (Exception e) {
	contenidoTextArea = "";
}

out.println(contenidoTextArea);
//Comentario
%>
