<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="InvestimentoController.InvController" %>
<!DOCTYPE html>
<html>
<%

String vnome = request.getParameter("hname"); 
String vcpf = request.getParameter("hcpf");
float vvl = Float.parseFloat(request.getParameter("hvalor"));
float vtx = Float.parseFloat(request.getParameter("htaxa"));
int vperiodo = Integer.parseInt(request.getParameter("hperiodo"));
String vocorrencia = request.getParameter("hocorrencia");
//valor calculado
Double vvc = Double.parseDouble(request.getParameter("hvc"));

InvController ic = new InvController();
String msg = ic.GravarInvestimentoController(vnome, vcpf, vvl, vtx, vperiodo, vocorrencia);

%>
<head>
<meta charset="ISO-8859-1">

<title>Simulação feita</title>
</head>
<body>
	<h1>Simulação de investimento</h1>
		<div><%=msg%></div><br>
	<form action="inv_004.jsp" method="get">
	<button type="submit">Volta</button>
	</form>
</body>
</html>