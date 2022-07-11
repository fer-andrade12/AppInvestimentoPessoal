<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="estilos.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js"></script>
<script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery-maskmoney/3.0.2/jquery.maskMoney.min.js"></script>
<!--Construção de máscaras pelo JQUERY-->
<script type="text/javascript">   
  // 9  Representa caracteres numéricos (números) (0-9)
  // *  Representa caracteres alfanuméricos (letras e números) (A-Z,a-z,0-9)
  $(function() {
  $('.mask-documento').mask('999.999.999-99'); //documento - 11 carateres numéricos
 //$('.mask-real').maskMoney({showSymbol:true,symbol:'R$ ', 
  //decimal:',', thousands:'.', allowZero:true}); // valor monetário
  });
</script>

</head>
<body>
	<a href="deslogin.jsp">Login out</a>
	<br>
	<hr>
	<h1>Simulador de investimento</h1>
	<form action="inv_002.jsp" method="post">
		<label>Nome</label>
		<input type="text" name="nome">
		<br>
		<label>CPF</label>
		<input type="text" name="cpf" size=11 required class="mask-documento">
		<br>
		<label>Valor de investimento</label>
		<input type="text" name="valor" size=8 required class="mask-real">
		<br>
		<label>Taxa</label>
		<input type="text" name="taxa">
		<br>
		<label>Período mínimo de 12 meses</label>
		<input type="text" name="periodo">
		<br>
		<input type="submit" value="Enviar">
	</form>
</body>
</html>