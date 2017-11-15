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
            $('#example').dataTable({});

        });
    </script>

</head>

<body>

<g:link action="crearNuevoUsuario" controller="usuarioCrear"><button type="button" id="crearUsuario"
                                                                     class="btn btn-success btn-block">Crear Perfil</button></g:link>
<br>
%{--<button id="button">Row</button>--}%
<table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
    <thead>
    <th>
        ID
    </th>
    <th>
        Username
    </th>
    </thead>
    <tbody>
    <g:each in="${usuarios}" var="usuario">
        <tr>
            <td>${usuario.id}</td>
            <td>${usuario.username}</td>
        </tr>
    </g:each>
    </tbody>
</table>

</body>

</html>