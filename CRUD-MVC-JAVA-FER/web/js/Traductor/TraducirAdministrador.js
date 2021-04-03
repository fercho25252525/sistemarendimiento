/* global alertify */
//JQUERY PARA TRADUCIR EL MODULO DEL ADMINISTRADOR A INGLES
$('#traducirAdministradorIngles').click(function () {
    alertify.success('<h5 style="color: #fff;font-size: 1.3em">Translated into english</h5>');
    $('#mensajeModal').html('Do you have any questions, complaints, complaints, or suggestions, write to us ...');
    $('#cerrarModal').html('Close');
    $('#enviarModal').html('Submit');
    $('#cerrarSesionAviso').html('<i class="fas fa-power-off"></i> Logout');
    $('#exampleModalLabel').html('Ready to go?');
    $('#selecionCerrarSesion').html('Select "Logout" below if you are ready to end your current session.');
    $('#CancelarModal').html('Cancel');
    $('#cerrarSesoin').html('Logout');
    $('#crearUsuario').html('Create User');
    $('#crearPerfilJugador').html('Create player profile');
    $('#registrarInventario').html('Register Inventory');
    $('#gestionpqrs').html('Manage PQRS');
    $('#bienbenidos').html('WELCOME TO THE ADMINISTRATOR MODULE');
    $('#bienbenidosQueDesea').html('WELCOME, WHAT DO YOU WANT TO DO?');
    $('#moduloAdministracion').html('Administration Module');
    $('#moduloRendimientoAdm').html('Sports Performance Module');
    
//CREAR USUARIO 
    $('#CrearUsuarioUsuario').html('Create User.');
    $('#agregarNuevoUsuario').html('Add new <i  class="fas fa-plus-circle"></i>');
    $('#generarReporteUser').html('Generate report <i class="fas fa-chart-bar"> ');   
    $('#numeroDocumentoTr').html('Document number');
    $('#tipoDocumentoTr').html('Document type');    
    $('#primerNombreTr').html('First name');
    $('#segundoNombreTr').html('Second name');
    $('#priemrApellidoTr').html('Surname');
    $('#segundoApellidotr').html('Second surname');
    $('#fechaNacimientoTr').html('Birth date');    
    $('#edadTr').html('Age');
    $('#celularTr').html('Mobile');
    $('#Telefonotr').html('Phone');
    $('#correoTr').html('Email');
    $('#direccionTr').html('Direction');
    $('#generoTr').html('Gender');
    $('#rolTr').html('Role');
    $('#fechaRegistroTr').html('Registration date');
    $('#FechaActualizacionTr').html('Date update');
    $('#editarTr').html('Edit');
    $('#eliminarTr').html('Remove');
    $('#registrarUsuarioTr').html('Register User.');
    $('#numeroDocumentoRe').html('Document number');
    $('#tipoDocumentoRe').html('Document type');
    $('#cedulaCiudadania').html('Citizenship card');
    $('#tarjetaIdentidad').html('Identity card');
    $('#tarjetaPasaporte').html('Passport Card');
    $('#registroCivil').html('Civil registration');
    $('#cedulaExtranjera').html('Foreigner ID');    
    $('#primerNombreRe').html('First name');
    $('#segundoNombreRe').html('Second name');
    $('#primerApellidoRe').html('Surname');
    $('#segundoApellidore').html('Second surname');
    $('#fechaNacimientoRe').html('Birth date');    
    $('#edadRe').html('Age');
    $('#celularRe').html('Mobile');
    $('#telefonoRe').html('Phone');
    $('#correoRe').html('Email');
    $('#direccionRe').html('Direction');
    $('#generoRe').html('Gender');
    $('#ContraseñaRe').html('Password');
    $('#rolRe').html('Role');
    $('#AdministradorReA').html('Administrator');
    $('#EntrenadorRea').html('Coach');
    $('#JugadorReA').html('Player');
    $('#fotoRe').html('Photo');
    $('#limpiarRe').html('Clean');
    $('#cancelarRe').html('Cancel');
    $('.AgregarRea').html('Add');    
    $('#modificarUsuarioMo').html('Modify User');
    $('#numeroDocumentoMo').html('Document number');
    $('#tipoDocumentoMo').html('Document type');
    $('#cedulaCiudadaniaMo').html('Citizenship card');
    $('#terjetaIdentidadMo').html('Identity card');
    $('#tarjetaPasaportemo').html('Passport Card');
    $('#RegistroCivilmo').html('Civil registration');
    $('#cedulaExtranjeriaMo').html('Foreigner ID');    
    $('#priumerNombreMo').html('First name');
    $('#segundoNombreMo').html('Second name');
    $('#primerApellidomo').html('Surname');
    $('#segundoApellidoMo').html('Second surname');
    $('#fechaNacimientomo').html('Birth date');    
    $('#edadMo').html('Age');
    $('#celularMo').html('Mobile');
    $('#telefonoMo').html('Phone');
    $('#correoMo').html('Email');
    $('#direccionMo').html('Direction');
    $('#generoMo').html('Gender');
    $('#rolMo').html('Role');
    $('#administradorMo').html('Administrator');
    $('#entrenadorMo').html('Coach');
    $('#jugadorMo').html('Player');
    $('#fechaRegistroMo').html('Registration date');
    $('#fechaActuañlizacionMo').html('Date update');
    $('#cancelarMo').html('Cancel');
    $('.ActualizarMo').html('Update');
    
 //CREAR PERFIL JUGADOR
    $('#crearPerfiljugadorP').html('Create player profile.');
    $('#AgregarNuevoP').html('Add new <i  class="fas fa-plus-circle"></i>');
    $('#generarReporteperfiljuga').html('Generate report <i class="fas fa-chart-bar"> ');
    $('#codigoJugadorP').html('Player Code');
    $('#documentoJugaadorP').html('Player Document');
    $('#categoriap').html('Category');
    $('#alturap').html('Height');
    $('#pesop').html('Weight');    
    $('#numerodorsal').html('Dorsal number');
    $('#piedominantep').html('Dominant foot');
    $('#editarp').html('Edit');
    $('#eliminarp').html('Remove');    
    $('#crearPerfilPRe').html('Create profile.');
    $('#codigoJugadorPRe').html('Player Code');
    $('#documentoJugaadorPRe').html('Player Document');
    $('#categoriaPRe').html('Category');
    $('#infantilRe').html('Childish');
    $('#preinfantilre').html('Pre-childhood');
    $('#juvenilRe').html('Youth');
    $('#alturapRe').html('Height');    
    $('#pesopRe').html('Weight');
    $('#numerodorsalPRe').html('Dorsal number');
    $('#piedominantepRe').html('Dominant foot');
    $('#pieDerechoPRe').html('Right foot');
    $('#pieIzquierdoPRe').html('Left foot');
    $('#limpiarPRE').html('Clean');
    $('#CancelarPREe').html('Cancel');
    $('.agregarPRE').html('Add');    
    $('#ModificaPerfilPMo').html('Edit profile');
    $('#codigoJugadirPMo').html('Player Code');
    $('#documentoJugaadorPMo').html('Player Document');
    $('#categoriaPMo').html('Category');
    $('#infantilPMo').html('Childish');
    $('#preinfantiklPMo').html('Pre-childhood');
    $('#juvenilPMo').html('Youth');
    $('#alturaPMo').html('Height');    
    $('#PesoPMo').html('Weight');
    $('#numeroDosialPMo').html('Dorsal number');
    $('#PieDominantePMo').html('Dominant foot');
    $('#PieDerechoPMo').html('Right foot');
    $('#PireIzquierdoPMo').html('Left foot');
    $('#CancelarPMO').html('Cancel');
    $('.actualizarPMO').html('Update');
    
//INVENTARIO
    $('#registrarInventarioii').html('Register inventory.');
    $('#agregarNuevoII').html('Add new <i  class="fas fa-plus-circle"></i>');
    $('#nombreII').html('Name');
    $('#cantidadimpleII').html('Implement Amount');
    $('#cantidadDisponibleII').html('Quantity Available');
    $('#garantiaIi').html('Warranty');
    $('#estadoII').html('State');
    $('#fechaEntradaII').html('Entry date');
    $('#fechaActualizacionii').html('Date update');
    $('#editar').html('Edit');
    $('#eliminar').html('Remove');
    $('#registrarinventarioIIRe').html('Register Inventory.');
    $('#nombreImpleementoIIRe').html('Implement Name');
    $('#cantidadImpelmetoIIRe').html('Implement Amount');
    $('#cantidaddiponbleIIRe').html('Quantity Available');
    $('#garamtiaIIRe').html('Warranty');
    $('#estadoIIRe').html('State');
    $('#limipiarIIRe').html('Clean');
    $('#cancelarIIRe').html('Cancel');
    $('.agregarIIEE').html('Add');
    $('#modificarinventarioIIMo').html('Modify Inventory..');
    $('#idInventarioIIMo').html('Id inventory');
    $('#nombreImplementoIImo').html('Implement Name');
    $('#cantidadimpelementoIIMo').html('Implement Amount');
    $('#cantidadDisponibleIIMo').html('Quantity Available');
    $('#garantiaIIMo').html('Warranty');
    $('#estadoIIMo').html('State');
    $('#fechaEntradaIIMo').html('Entry date');
    $('#fechaActualizacionIImo').html('Date update');
    $('#cancelarIIMo').html('Cancel');
    $('.actualizarIIMO').html('Update');
    
//GESTIONAR PQRS
    $('#gestionarPqrs').html('Manage PQRS.');
    $('#nombresPQ').html('Name');
    $('#apellidosPq').html('Surname');
    $('#correoPq').html('Email');
    $('#telefonoPq').html('Phone');
    $('#MensajePq').html('Message');
    $('#ResponerPq').html('Reply');
    $('#eliminarPq').html('Remove');
    $('#mensajePQRSt').html('Message');
    $('#cerraPQRss').html('Close');
    $('#acpPq').html('Accept');
    $('#respuestasPQ').html('PQRS Answer ...');
    $('#cerrarPQRs').html('Close');
    $('#enviarPq').html('Submit');
    $('.enviarPq').html('Submit');
    $('#registrarPQRSSSSS').html('Reply PQRS...');
});


//JQUERY PARA TRADUCIR A ESPAÑOL EL MODULO DEL ADMINISTRADOR
$('#traducirAdministradorEspañol').click(function () {
    alertify.success('<h5 style="color: #fff;font-size: 1.5em;width: 500px">Traducido a español</h5>');
    $('#mensajeModal').html('Tienes alguna pregunta, queja, reclamo, o sugerencia, escríbenos...');
    $('#cerrarModal').html('Cerrar');
    $('#enviarModal').html('Enviar');
    $('#cerrarSesionAviso').html('<i class="fas fa-power-off"></i> Cerrar sesión');
    $('#exampleModalLabel').html('¿Listo para salir?');
    $('#selecionCerrarSesion').html('SSeleccione "Cerrar sesión" a continuación si está listo para finalizar su sesión actual. ');
    $('#CancelarModal').html('Cancelar');
    $('#cerrarSesoin').html('Cerrar sesión');
    $('#crearUsuario').html('Crear usuario');
    $('#crearPerfilJugador').html('Crear perfil jugador');
    $('#registrarInventario').html('Registrar inventario');
    $('#gestionpqrs').html('Gestionar PQRS');
    $('#bienbenidos').html('BIENVENIDO AL MODULO DEL ADMINISTRADOR ');
    $('#bienbenidosQueDesea').html('BIENVENIDO ¿QUE DESEA HACER?');
    $('#moduloAdministracion').html('Módulo Administración');
    $('#moduloRendimientoAdm').html('Módulo Rendimiento deportivo');
    
//CREAR USUARIO 
    $('#CrearUsuarioUsuario').html('Crear usuario.');
    $('#agregarNuevoUsuario').html('Agregar nuevo <i  class="fas fa-plus-circle"></i>');
    $('#generarReporteUser').html('Generar reporte <i class="fas fa-chart-bar"> ');
    $('#numeroDocumentoTr').html('Numero documento');
    $('#tipoDocumentoTr').html('Tipo documento');    
    $('#primerNombreTr').html('Primer nombre');
    $('#segundoNombreTr').html('Segundo nombre');
    $('#priemrApellidoTr').html('Primer apellido');
    $('#segundoApellidotr').html('Segundo apellido');
    $('#fechaNacimientoTr').html('Fecha nacimiento');    
    $('#edadTr').html('Edad');
    $('#celularTr').html('Celular');
    $('#Telefonotr').html('Teléfono');
    $('#correoTr').html('Correo');
    $('#direccionTr').html('Dirección');
    $('#generoTr').html('Genero');
    $('#rolTr').html('Rol');
    $('#fechaRegistroTr').html('Fecha registro');
    $('#FechaActualizacionTr').html('Fecha actualización');
    $('#editarTr').html('Editar');
    $('#eliminarTr').html('Eliminar');
    $('#registrarUsuarioTr').html('Registrar usuario. ');
    $('#numeroDocumentoRe').html('Numero documento');
    $('#tipoDocumentoRe').html('Tipo documento');
    $('#cedulaCiudadania').html('Cédula de ciudadanía');
    $('#tarjetaIdentidad').html('Tarjeta de Identidad');
    $('#tarjetaPasaporte').html('Tarjeta Pasaporte');
    $('#registroCivil').html('Registro Civil');
    $('#cedulaExtranjera').html('Cédula de extranjería');    
    $('#primerNombreRe').html('Primer nombre');
    $('#segundoNombreRe').html('Primer apellido');
    $('#primerApellidoRe').html('Segundo apellido');
    $('#segundoApellidore').html('Second surname');
    $('#fechaNacimientoRe').html('Fecha nacimiento');    
    $('#edadRe').html('Edad');
    $('#celularRe').html('Celular');
    $('#telefonoRe').html('Teléfono');
    $('#correoRe').html('Correo');
    $('#direccionRe').html('Dirección ');
    $('#generoRe').html('Genero');
    $('#ContraseñaRe').html('Contraseña');
    $('#rolRe').html('Rol');
    $('#AdministradorReA').html('Administrador');
    $('#EntrenadorRea').html('Entrenador');
    $('#JugadorReA').html('Jugador');
    $('#fotoRe').html('Foto');
    $('#limpiarRe').html('Limpiar');
    $('#cancelarRe').html('Cancelar');
    $('.AgregarRea').html('Agregar');    
    $('#modificarUsuarioMo').html('Modificar usuario. ');
    $('#numeroDocumentoMo').html('Numero documento');
    $('#tipoDocumentoMo').html('Tipo documento');
    $('#cedulaCiudadaniaMo').html('Cédula de ciudadanía');
    $('#terjetaIdentidadMo').html('Tarjeta de Identidad');
    $('#tarjetaPasaportemo').html('Tarjeta Pasaporte');
    $('#RegistroCivilmo').html('Registro Civil');
    $('#cedulaExtranjeriaMo').html('Cédula de extranjería');    
    $('#priumerNombreMo').html('Primer nombre');
    $('#segundoNombreMo').html('Segundo nombre');
    $('#primerApellidomo').html('Primer apellido');
    $('#segundoApellidoMo').html('Segundo apellido');
    $('#fechaNacimientomo').html('Fecha nacimiento');    
    $('#edadMo').html('Edad');
    $('#celularMo').html('Celular');
    $('#telefonoMo').html('Teléfono');
    $('#correoMo').html('Correo');
    $('#direccionMo').html('Dirección');
    $('#generoMo').html('Genero');
    $('#rolMo').html('Rol');
    $('#administradorMo').html('Administrador');
    $('#entrenadorMo').html('Entrenador');
    $('#jugadorMo').html('Jugador');
    $('#fechaRegistroMo').html('Fecha registro');
    $('#fechaActuañlizacionMo').html('Fecha actualización');
    $('#cancelarMo').html('Cancelar');
    $('.ActualizarMo').html('Actualizar');
    
//CREAR PERFIL JUGADOR
    $('#crearPerfiljugadorP').html('Crear perfil de jugador.');
    $('#AgregarNuevoP').html('Agregar nuevo <i  class="fas fa-plus-circle"></i>');
    $('#generarReporteperfiljuga').html('Generar reporte <i class="fas fa-chart-bar"> ');
    $('#codigoJugadorP').html('Código Jugador');
    $('#documentoJugaadorP').html('Documento jugador');
    $('#categoriap').html('Categoría');
    $('#alturap').html('Altura');
    $('#pesop').html('Peso');    
    $('#numerodorsal').html('Numero dorsal');
    $('#piedominantep').html('Pie dominante');
    $('#editarp').html('Editar');
    $('#eliminarp').html('Eliminar');    
    $('#crearPerfilPRe').html('Crear perfil.');
    $('#codigoJugadorPRe').html('Código Jugador ');
    $('#documentoJugaadorPRe').html('Documento jugador');
    $('#categoriaPRe').html('Categoría');
    $('#infantilRe').html('Infantil');
    $('#preinfantilre').html('Preinfantil');
    $('#juvenilRe').html('Juvenil');
    $('#alturapRe').html('Altura');    
    $('#pesopRe').html('Peso');
    $('#numerodorsalPRe').html('Numero dorsal');
    $('#piedominantepRe').html('Pie dominante');
    $('#pieDerechoPRe').html('Pie Derecho');
    $('#pieIzquierdoPRe').html('Pie Izquierdo');
    $('#limpiarPRE').html('Limpiar');
    $('#CancelarPREe').html('Cancelar');
    $('.agregarPRE').html('Agregar');    
    $('#ModificaPerfilPMo').html('Modifica perfil.');
    $('#codigoJugadirPMo').html('Código Jugador ');
    $('#documentoJugaadorPMo').html('Documento jugador');
    $('#categoriaPMo').html('Categoría');
    $('#infantilPMo').html('Infantil');
    $('#preinfantiklPMo').html('Preinfantil');
    $('#juvenilPMo').html('Juvenil');
    $('#alturaPMo').html('Altura');    
    $('#PesoPMo').html('Peso');
    $('#numeroDosialPMo').html('Numero dorsal');
    $('#PieDominantePMo').html('Pie dominante');
    $('#PieDerechoPMo').html('Pie Derecho');
    $('#PireIzquierdoPMo').html('Pie Izquierdo');
    $('#CancelarPMO').html('Cancelar');
    $('.actualizarPMO').html('Actualizar');
    
//INVENTARIO
    $('#registrarInventarioii').html('Registrar inventario.');
    $('#agregarNuevoII').html('Agregar nuevo <i  class="fas fa-plus-circle"></i>');
    $('#nombreII').html('Nombre');
    $('#cantidadimpleII').html('Cantidad implemento');
    $('#cantidadDisponibleII').html('Cantidad disponible');
    $('#garantiaIi').html('Garantia');
    $('#estadoII').html('Estado');
    $('#fechaEntradaII').html('Fecha Entrada');
    $('#fechaActualizacionii').html('Fecha actualización');
    $('#editar').html('Editar');
    $('#eliminar').html('Eliminar');
    $('#registrarinventarioIIRe').html('Registrar Inventario. ');
    $('#nombreImpleementoIIRe').html('Nombre Implemento ');
    $('#cantidadImpelmetoIIRe').html('Cantidad implemento');
    $('#cantidaddiponbleIIRe').html('Cantidad disponible');
    $('#garamtiaIIRe').html('Garantía');
    $('#estadoIIRe').html('Estado');
    $('#limipiarIIRe').html('Limpiar');
    $('#cancelarIIRe').html('Cancelar');
    $('.agregarIIEE').html('Agregar');
    $('#modificarinventarioIIMo').html('Modificar Inventario. ');
    $('#idInventarioIIMo').html('Id inventario ');
    $('#nombreImplementoIImo').html('Nombre implemento');
    $('#cantidadimpelementoIIMo').html('Cantidad implemento');
    $('#cantidadDisponibleIIMo').html('Cantidad disponible');
    $('#garantiaIIMo').html('Garantía');
    $('#estadoIIMo').html('Estado');
    $('#fechaEntradaIIMo').html('Fecha entrada ');
    $('#fechaActualizacionIImo').html('Fecha actualización ');
    $('#cancelarIIMo').html('Cancelar');
    $('.actualizarIIMO').html('Actualizar');
    
//GESTIONAR PQRS
    $('#gestionarPqrs').html('Gestionar PQRS.');
    $('#nombresPQ').html('Nombre');
    $('#apellidosPq').html('Apellido');
    $('#correoPq').html('Correo');
    $('#telefonoPq').html('teléfono');
    $('#MensajePq').html('Mensaje');
    $('#ResponerPq').html('Responder');
    $('#eliminarPq').html('Eliminar');
    $('#mensajePQRSt').html('Mensaje...');
    $('#cerraPQRss').html('Cerrar');
    $('#acpPq').html('Aceptar');
    $('#respuestasPQ').html('Respuesta PQRS...');
    $('#cerrarPQRs').html('Cerrar');
    $('#enviarPq').html('Enviar');
    $('.enviarPq').html('Enviar');
    $('#registrarPQRSSSSS').html('Respuesta PQRS...');
});