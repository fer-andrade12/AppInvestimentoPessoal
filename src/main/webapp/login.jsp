<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="estilo.css" rel="stylesheet">	
	<title>Instimentos.com</title>

</head>

<%

String usuario = request.getParameter("usuario");
String senha = request.getParameter("senha");

if(usuario!=null && senha!=null && !usuario.isEmpty() && !senha.isEmpty()){
	session.setAttribute(usuario, "usuario");
	response.sendRedirect("inv_001.jsp");
}

%>
<body>

	<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <div>Digite nome e senha</div>
    </div>

    <!-- Login Form -->
    <form action="login.jsp" method="post">
      <input type="text" id="login" class="fadeIn second" name="usuario" placeholder="usuario">
      <input type="password" id="password" class="fadeIn third" name="senha" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>

  </div>
</div>
</body>
</html>