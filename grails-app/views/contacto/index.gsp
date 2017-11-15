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
        email
    </th>
    <th>
        telefono
    </th>
    <th>
        Puesto de trabajo
    </th>
    <th>
        telefono Movil
    </th>
    <th>
        Acciones
    </th>
    </thead>
    <tbody>
    <g:each in="${contactos}" var="contacto">
        <tr>
            <td>${contacto.id}</td>
            <td>${contacto.nombre}</td>
            <td>${contacto.email}</td>
            <td>${contacto.telefono}</td>
            <td>${contacto.puesto_de_trabajo}</td>
            <td>${contacto.celular}</td>
            <td>
                <g:link action="verContacto" controller="contacto"  params="[id: contacto.id]"><button style="height: 30px;width: 80px" type="button" id="verPerfil" class="btn btn-link">Ver Usuario</button></g:link>
            </td>
        </tr>
    </g:each>
    </tbody>

</table>
<g:link action="create" controller="contacto" ><button type="button" id="crearContacto" class="btn btn-success">Crear Contacto</button></g:link>

</body>


</html>