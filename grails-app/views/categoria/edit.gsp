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

</head>
<body>

<!-- Horizontal Form -->
<div class="box box-info">
    <div class="box-header with-border">
        <h3 class="box-title">Editar Categoria</h3>
    </div><!-- /.box-header -->
<!-- form start -->
    <g:form action="editCategoria">
        <div class="box-body">
            <div style="margin-bottom:5%" class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Nombre Categoria</label>
                <div class="col-sm-10">
                    <input value="${categoria.nombre}" style="border: 1px solid cornflowerblue;" type="text" name="nombreCategoria" class="form-control" id="inputEmail3">
                </div>
            </div>

        </div><!-- /.box-body -->
        <div class="box-footer">
            <button type="submit" class="btn btn-danger">Cancel</button>
            <button type="submit" class="btn btn-info pull-right">Crear</button>
        </div><!-- /.box-footer -->
    </g:form>

</div><!-- /.box -->

</body>
</html>