<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="_token" content="{{ csrf_token() }}">
    <meta name="keyword"
          content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,Angular 2,Angular4,Angular 4,jQuery,CSS,HTML,RWD,Dashboard,React,React.js,Vue,Vue.js">
    <link rel="shortcut icon" href="{{ asset('img/tela_inicial/image_eb.png') }}">
    <title>SisCivil 12ªRM</title>

    <!-- Icons -->
    <link href="{{ asset('css/font-awesome.css') }}" rel="stylesheet">
    <link href="{{ asset('css/simple-line-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('css/jquery.loadingModal.css') }}" rel="stylesheet"/>
    <!-- Main styles for this application -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/datatables.css') }}">
    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
    <link rel="stylesheet" href="{{ asset('css/toastr.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/select2.min.css') }}"/>
    <link rel="stylesheet" href="{{ asset('css/select2-bootstrap4.css') }}"/>
    <link rel="stylesheet" href="{{ asset('css/fullcalendar.min.css') }}"/>


</head>

    <body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
    @include('admin.core.navbar')

    <div class="app-body">
    @include('admin.core.sidebar')
    <!-- Main content -->
        <main class="main">

        @include('panel.breadcrumb')
        @yield('content')
        <!-- /.container-fluid -->
        </main>

    </div>

    @include('static.footer')

    @include('admin.core.scripts')
    @yield('myscript')

    </body>
</html>
