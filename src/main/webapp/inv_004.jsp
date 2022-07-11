<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="InvestimentoModel.Investimento"%>
<%@ page import="InvestimentoController.InvController"%>
<%
InvController ic = new InvController();
DecimalFormat df1 = new DecimalFormat("0.00");
DecimalFormat df2 = new DecimalFormat("#,##0.00");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="estilos.css">
</head>
<body>
<div>Simulação de Investimento</div>
<table>
<caption>Lista de Investimentos Cadastrados</caption>
<tr><th>CPF</th><th>Nome</th><th>Valor Investido</th>
<th>Taxa</th><th>Período</th><th>Ocorrência</th>
<th>Valor Calculado</th></tr>
	<%for(Investimento v:ic.listarInvestimentoController())
   	{%>
	<td><%=v.getCpf_c()%></td>
	<td><%=v.getNome_c()%></td>
	<td style="text-align: right;"><%=df2.format(v.getValor_investido_c())%></td>
	<td style="text-align: right;"><%=df1.format(v.getTaxa_c())%></td>
	<td style="text-align: center;"><%=v.getPeriodo_c()%></td>
	<td style="text-align: center;"><%=v.getOcorrencia_c()%></td>
	<td style="text-align: right;"><%=df2.format(v.getValor_calculado_c())%></td>
	</tr>
	<% 	} // fecha for %>
<tr><th colspan=7>
<form action="inv_001.jsp" method="get">
<input type="submit" value="Voltar">
</form>
<br>
<a href="deslogin.jsp">Log out</a>
</th></tr>
</table>
</body>
</html>