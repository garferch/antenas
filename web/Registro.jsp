<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">    
    

    <title>Registro de clientes</title>

    <!-- Bootstrao -->
    <link href="bootstrap.css" rel="stylesheet">

     <!-- Diseño propio del formulario -->
    <link href="formulario.css" rel="stylesheet">


  <body>

     <form role="form" class="formulario" action="enviando.php" method="post">
        <h1>Registro de clientes</h1>
        <div class="formulario-cubridor">

        <div class="required-field-block form-group">
            <input type="text" placeholder="Nombre" name="nombre" class="form-control">
            <div class="required-icon"><div class="text">*</div></div>
        </div>
        
        <div class="required-field-block form-group">
            <input type="text" placeholder="Direccion" name="direccion" class="form-control">
            <div class="required-icon">
                <div class="text">*</div>
            </div>
        </div>        

        <input type="text" placeholder="Teléfono" name="telefono" class="form-control form-group">
<!-- Select Basic -->
 <div class="required-field-block form-group">
    <select id="selectbasic" name="Antena" class="form-control">
      <option>Antena</option>
	  <option value="IntersolN">IntersolN</option>
      <option value="IntersolOm">IntersolOm</option>
      <option value="IntersolOmn">IntersolOmn</option>
      <option value="IntersolOe">IntersolOe</option>
		<option value="IntersolW">IntersolW</option>
		
    </select>
  </div>
<div class="required-field-block form-group">
    <select id="selectbasic" name="Antena" class="form-control">
      <option>Paquete</option>
	  <option value="basico">Basico</option>
      <option value="medio">Standard</option>
      <option value="alto">Premium</option>
      
		
    </select>
  </div>
<h1>Router</h1>
	<input type="text" placeholder="Router" name="router" class="form-control form-group">
	<input type="text" placeholder="MAC" name="macrouter" class="form-control form-group">
	<input type="text" placeholder="Usuario" name="usuariorouter" class="form-control form-group">
	<input type="password" placeholder="Contraseña" name="contraseñarouter" class="form-control form-group">
	<input type="text" placeholder="SSID" name="ssid" class="form-control form-group">
	<input type="password" placeholder="WEP" name="wep" class="form-control form-group">
        
<h1>Antena</h1>
	<input type="text" placeholder="Antena" name="antena" class="form-control form-group">
	<input type="text" placeholder="MAC" name="macantena" class="form-control form-group">
	<input type="text" placeholder="Usuario" name="usuariorantena" class="form-control form-group">
	<input type="password" placeholder="Contraseña" name="contraseñaantena" class="form-control form-group">

  
 

 
        <div class="required-field-block form-group">
            <textarea rows="3" class="form-control area-largo" placeholder="Mensaje" name="mensaje"></textarea>
            <div class="required-icon">
                <div class="text">*</div>
            </div>
        </div>
        <button class="btn btn-primary">Enviar</button>
        </div>        
        
    </form>

  </body>

</html>