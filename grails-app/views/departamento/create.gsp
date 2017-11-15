<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Bienvenido...</title>

    <link rel="stylesheet " type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    %{--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--}%
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
        <h3 class="box-title">Crear Departamento</h3>
    </div><!-- /.box-header -->
<!-- form start -->
    <g:form action="crearNuevoDepartamento">
        <div class="box-body">

            <div style="margin-top:5%" class="form-group">
                <label class="col-sm-2 control-label">Nombre Departamento</label>
                <div class="col-sm-10">
                    <input style="border: 1px solid cornflowerblue;" type="text" name="nombreDepartamento" class="form-control" id="inputName" placeholder="nombre del departamento">
                </div>
            </div>

        </div><!-- /.box-body -->
        <div class="box-footer">
            %{--<button type="submit" class="btn btn-danger">Cancel</button>--}%
            <button type="submit" class="btn btn-info pull-right">Crear</button>
        </div>
    </g:form>

</div>

</body>
</html>