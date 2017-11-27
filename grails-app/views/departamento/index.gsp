<!DOCTYPE html>
<meta name="layout" content="main"/>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Bienvenido...</title>
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



    <script type="text/javascript">

        $(document).ready(function () {
            $('#example').dataTable({

            });

        });
    </script>

</head>
<body>

<br>

<table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
    <thead>
    <th>
        ID
    </th>
    <th>
        Nombre
    </th>
    <th>
        Usuarios
    </th>
    </thead>
    <tbody>
    <g:each in="${departamentos}" var="departamento">
        <tr>
            <td>${departamento.id}</td>
            <td>${departamento.nombre}</td>
            <td>
            <div style="padding:1%" class="col-sm-10">
            <select style="background-color: #bbbdff" name="SeleccionarUsuarios"  id="SeleccionarUsuarios"  class="selectpicker form-control" multiple>
            <g:each in="${usuarios}" var="us">
            <option value="${us.id}">${us.nombre}</option>

            </g:each>
            </select>
            </div>
            </div>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>
<g:link action="crearNuevoDepartamento" controller="departamento" ><button type="button" id="crearDepartamento" class="btn btn-success btn-block">Crear Categoria</button></g:link>

</body>


</html>