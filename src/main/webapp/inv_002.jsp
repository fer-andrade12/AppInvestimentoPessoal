<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="InvestimentoModel.Investimento" %>
<%@ page import="InvestimentoController.InvController"%>

<!DOCTYPE html>
<html>

<%


//data e hora do momento
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
Date ocorrencia = new Date();
DecimalFormat df = new DecimalFormat("#,##0.00");

String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
float valorInv = Float.parseFloat(request.getParameter("valor"));
float taxaInv = Float.parseFloat(request.getParameter("taxa"));
int periodoInv = Integer.parseInt(request.getParameter("periodo"));
String ocInv = sdf.format(ocorrencia);

InvController ic = new InvController();
Investimento i = new Investimento();

i.setNome_c(nome);
i.setCpf_c(cpf);
i.setValor_investido_c(valorInv);
i.setTaxa_c(taxaInv);
i.setPeriodo_c(periodoInv);
i.setOcorrencia_c(ocInv);

ic.CalculaInvestimentoController(i);

Double vc = i.getValor_calculado_c(); 

%>
<head>
<meta charset="ISO-8859-1">
<title>Simulação de investimento</title>
</head>
<body>
	<h1>Resultado de simulação</h1>
	<form action="inv_003.jsp" method="post">
		<label>Nome</label>
		<p><%=nome%></p>
		<br>
		<label>CPF</label>
		<p><%=cpf%></p>
		<br>
		<label>Valor de investimento</label>
		<p><%=valorInv%></p>
		<br>
		<label>Taxa</label>
		<p><%=df.format(taxaInv)%></p>
		<br>
		<label>Período mínimo de 12 meses</label>
		<p><%=periodoInv%></p>
		<p>valor Calculado</p>
		<p><%=df.format(vc)%></p>
		<p>Data/Hora</p>
		<p><%=ocInv%></p>
		<br>
		<button type="submit">Gravar</button>
		<input type="hidden" name="hname" value=<%=nome%>>
		<input type="hidden" name="hcpf" value=<%=cpf%>>
		<input type="hidden" name="hvalor" value=<%=valorInv%>>
		<input type="hidden" name="htaxa" value=<%=taxaInv%>>
		<input type="hidden" name="hperiodo" value=<%=periodoInv%>>
		<input type="hidden" name="hvc" value=<%=vc%>>
		<input type="hidden" name="hocorrencia" value=<%=ocInv%>>
	</form>
	<form action="index.jsp" method="get">	
		<button type="submit">Cancelar</button>
	</form>
</body>
</html>