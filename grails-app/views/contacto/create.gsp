<!doctype html>
<html>

<head>
    <meta name="layout" content="main" />
    <title>Bienvenido...</title>

    <link rel="stylesheet " type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    %{--
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--}%
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    <script type="text/javascript">
        $(document).ready(function(e) {
            $('.selectpicker').selectpicker();
        });
    </script>
</head>
<body>

<!-- Horizontal Form -->
<div class="box box-info">
    <div class="box-header with-border">
        <h3 class="box-title">Crear Contacto</h3>
    </div>

    <g:form action="crearNuevoContacto">
        <div class="box-body">

            <div style="padding:1%" class="form-group">
                <label style="padding:1%" class="col-sm-2 control-label">Nombre Contacto</label>
                <div style="padding:1%"  class="col-sm-10">
                    <input style="border: 1px solid cornflowerblue;" type="text" name="nombreContacto" class="form-control" id="inputNombre" placeholder="nombre del contacto">
                </div>
            </div>

            <div style="padding:1%" class="form-group">
                <label style="padding:1%" class="col-sm-2 control-label">Apellido Contacto</label>
                <div style="padding:1%" class="col-sm-10">
                    <input style="border: 1px solid cornflowerblue;" type="text" name="apellidoContacto" class="form-control" id="inputApellido" >
                </div>
            </div>

            <div style="padding:1%" class="form-group">
                <label style="padding:1%" class="col-sm-2 control-label">Telefono Contacto</label>
                <div style="padding:1%" class="col-sm-10">
                    <input style="border: 1px solid cornflowerblue;" type="text" name="telefonoContacto" class="form-control" id="inputTelefono" >
                </div>
            </div>

            <div style="padding:1%" class="form-group">
                <label style="padding:1%" class="col-sm-2 control-label">Puesto de Trabajo</label>
                <div style="padding:1%" class="col-sm-10">
                    <input style="border: 1px solid cornflowerblue;" type="text" name="telefonoContacto" class="form-control" id="inputPuesto" >
                </div>
            </div>

            <div style="padding:1%" class="form-group">
                <label style="padding:1%" class="col-sm-2 control-label">Email Contacto</label>
                <div style="padding:1%" class="col-sm-10">
                    <input style="border: 1px solid cornflowerblue;" type="text" name="emailContacto" class="form-control" id="inpuEmail" >
                </div>
            </div>

            <div style="padding:1%" class="form-group">
                <label style="padding:1%" class="col-sm-2 control-label">Celular Contacto</label>
                <div style="padding:1%" class="col-sm-10">
                    <input style="border: 1px solid cornflowerblue;" type="text" name="celularContacto" class="form-control" id="inputCelular" >
                </div>
            </div>

            <div style="padding:1%" class="form-group">
                <label style="padding:1%" class="col-sm-2 control-label">Direccion Contacto</label>
                <div style="padding:1%" class="col-sm-10">
                    <input style="border: 1px solid cornflowerblue;" type="text" name="direccionContacto" class="form-control" id="inputDireccion" >
                </div>
            </div>

            <div style="padding:1%" class="form-group">
                <label style="padding:1%" class="col-sm-2 control-label">Categoria Contacto</label>
                <div style="padding:1%" class="col-sm-10">
                    <select style="background-color: #bbbdff" name="SeleccionarCategoria"  id="SeleccionarCategoria"  class="selectpicker form-control" multiple>
                        <g:each in="${categorias}" var="cat">
                            <option value="${cat.id}">${cat.nombre}</option>

                        </g:each>
                    </select>
                </div>
            </div>

            <div style="padding:1%" class="form-group">
                <label style="padding:1%" class="col-sm-2 control-label">Departamento Contacto</label>
                <div style="padding:1%" class="col-sm-10">
                    <select style="background-color: #bbbdff" name="SeleccionarDepartamento"  id="SeleccionarDepartamento"  class="selectpicker form-control" multiple>
                        <g:each in="${departamentos}" var="dep">
                                <option value="${dep.id}">${dep.nombre}</option>

                        </g:each>
                    </select>
                </div>
            </div>
            <!-- /.box-body -->
            <div style="margin-right:70%" class="form-group">
                %{--
                <button type="submit" class="btn btn-danger">Cancel</button>--}%
            <button type="submit" class="btn btn-info pull-right">Crear Contacto</button>
            </div>
        </div>

    </g:form>

</div>

</body>

</html>