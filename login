<!DOCT
EMPhtml>
	<htmllang="es">
	<head>
	<script src="js/jquery.emp.js"></script>

	<script src="js/cookies.emp.js"></script>

	<title>EMPRESA</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="shortcuticon" href="assets/images/empres.icos">

	<meta name="theme-color" content="#3c763d;">
	<link rel="stylesheet" href="assets/css/font-awesome.emp.css">

	<link rel="stylesheet" type="text/css" href="assets/css/style.css">

	</head>
	<script language="JavaScript" type="text/JavaScript">
	<!--
	//******************************************** Validación ingreso al Sistema
	functioniniciar_sesion(){
	varrut_usuario= document.getElementById("rut").value;
	varcontrasena = document.getElementById("password").value;
	if ((rut_usuario.indexOf('mgl')>= 0) || (rut_usuario.indexOf('mgl')>= 0) || (rut_usuario.indexOf('ADM')>= 0) || (rut_usuario.indexOf('adm')>= 0)) {
	contrasena = contrasena.replace("'", ""); 
	document.form_login.password.value = contrasena;
	document.form_login.accion.value = 'validaIngreso';
	document.form_login.action = 'controladorVerificadorIngreso.php';
	document.form_login.submit(); 
	}else{
	//************ INICIO AUTENTIFICACION
	varparametros = {
	"rut" : document.getElementById("rut").value,
	"password" : document.getElementById("password").value
	};
	$.ajax({
	data: parametros,
	url: 'http://logo.empresa.cl/api/auth/login',
	type:'post',
	success: function(response){
	console.log(response.success.access_token)
	docCookies.setItem("access_token", response.success.access_token);
	document.form_login.accion.value = 'validaIngreso';
	document.form_login.action = 'controladorVerificadorIngreso.php';
	document.form_login.submit();
	},
	error: function(XMLHttpRequest, textStatus, errorThrown){
	console.log(XMLHttpRequest.responseJSON.errors.rut)
	XMLHttpRequest.responseJSON.errors.rut != undefined?alert(XMLHttpRequest.responseJSON.errors.rut):''
	XMLHttpRequest.responseJSON.errors.password != undefined?alert(XMLHttpRequest.responseJSON.errors.password):''
	//alert(XMLHttpRequest.responseJSON.errors.rut) 
	}
	});
	//************ FIN AUTENTIFICACION
	}
	
	//******************************************** Validacion ingreso al Sistema
	functionvalidaUsuario() {
	varcontrasena = document.form_login.password.value;
	contrasena = contrasena.replace("'", "");
	if (document.form_login.rut.value=='' || document.form_login.password.value==''){
	alert("Debe ingresar Rut y Contraseña correctamente");
	if (document.form_login.rut.value==''){
	document.form_login.rut.focus();
	}else{
	document.form_login.password.focus();
	}
	}else{
	document.form_login.password.value = contrasena;
	document.form_login.accion.value = 'validaIngreso';
	document.form_login.action = 'controladorVerificadorIngreso.php';
	document.form_login.submit();
	}
	}
	//******************************************** desplegar aviso con texto pre seleccionado
	functionmensaje_alert(texto) {
	alert(texto);
	}
	//********************************************
	function mensaje(){
	vartheURL;
	varwinName;
	varfeatures;
	
	theURL ='mensaje.php';
	winName ='mensaje';
	features = 'status=yes, scrollbars=yes, width=585, height=446'; 
	window.open(theURL, winName, features);
	}
	//********************************************
	function mensaje2(){
	vartheURL;
	varwinName;
	varfeatures;
	
	theURL ='mensaje2.html';
	winName ='mensaje';
	features = 'status=yes, scrollbars=yes, width=585, height=430'; 
	window.open(theURL, winName, features);
	}
	-->
	</script>
	
	<bodyclass="bg-login">
	
	<div class="margintop-login">
	
	<div class="constructora">
	<div style="line-height: 32px; width: 70%; float: right; text-align: left;">
	<h1 class="title-name-app">Constructora&Construction</h1>
	<h5 class="subtitle-name-app">CONSTRUCTORA MY CONSTRUCTION</h5>
	</div>
	
	<div style="width: 30%">
	<imgsrc="assets/images/empresa.png" width="70" height="auto">

	</div>
	</div>
	<div style="clear:both"></div>
	<div class="login-page" class="background-black-06">
	<div class="autentificaticion-timbretext-center">
	<a href="http://autentificacion.constructora.cl/assets/documents/seguridad.pdf" target="_blank">
	<img src="http://autentificacionapi.empresa.cl/assets/images/validacion.png" width="280" height="auto" style="padding-top: 6px;">
	</a>
	</div>
	<div class="text-center">
	<a href="#popup"><imgsrc="assets/images/info.png" width="60" height="auto"></a>

	</div>
	<div class="input-size">
	<form id="form_login" name="form_login" >
	<input type="hidden" name="accion">
	<div class="input-groupform-group">
	<input name="rut" id="rut" type="text" class="input-style" size="10" onChange="checkRut(this, 'rut')" required>
	<spanclass="highlight"></span>
	<spanclass="bar"></span>
	<labelclass="label-input"><i class="fa fa-user"></i> RUT (sin puntos ni guión)</label>
	<div class="invalid-feedback">
	<span id="rut_error"></span>
	</div>
	</div>
	<div class="input-groupform-group">
	<input name="password" id="password" type="password" class="input-style" size="20" required>
	<spanclass="highlight"></span>
	<spanclass="bar"></span>
	<labelclass="label-input"><i class="fa fa-lock"></i> Contraseña</label>
	<div class="invalid-feedback">
	<span id="password_error"></span>
	</div>
	</div>
	<input type="hidden" name="website" id="website" value="http://name-system.empresa.cl">
	<div style="float: left;">
	<a href="http://autentificacion.empresa.cl/password/reset" style="width: 50%" >¿Olvidaste tu contraseña?</a>
	</div>
	<div style="float: right;">
	<a href="http://autentificacion.empresa.cl/registro" style="width: 50%">Registrate en base de datos</a>
	</div>
	<div style="clear: both; padding-bottom: 15px;"></div>
	<div class="text-center">
	<input type="button" class="btn-login" name="enviar" value="Iniciar Sesion" id="enviar" onClick="iniciar_sesion();" />
	</div>
	<div class="text-center">
	<p style="margin-bottom: 0px;"><strong>DESCARGUE INFORMACION EMPRESA<a href="./informacion/empresa.pdf">AQUI</a><br></strong></p>
	</div>
	<div class="text-center">
	<p style="margin-bottom: 0px;"><strong>Empresa&MyConstruction</strong></p>
	</div>
	</form>
	</div>
	</div>
