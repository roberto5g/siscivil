@extends('admin.layout.master')
@section('content')

    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="text-center">
                <div class="alert alert-simples">
                    <h3><i class="fa fa-users"></i>
                        <span class="audiowide">
                            Levantamento do quantitativo de servidores não presentes fisicamente em local de trabalho diante
                            do enfrentamento da emergência de saúde pública (COVID-19)
                        </span></h3>
                </div>
            </div>

            <div class="formulario">
                <form id="form_cadastrar_levantamento" method="POST">
                    <input type="hidden" id="status" value="{{$status}}">
                    <div class="alert alert-simples">

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="confirmado">1 - Quantidade de servidores com confirmação de diagnóstico
                                        de
                                        infecção por COVID-19.</label>
                                    <input type="text" class="form-control quantidade" id="confirmado"
                                           aria-describedby="confirmadoHelp" name="confirmado"
                                           placeholder="Informe a quantidade" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="responsaveis">2 - Quantidade de servidores responsáveis pelo cuidado de
                                        uma
                                        ou
                                        mais pessoas com suspeita ou confirmação de diagnóstico de infecção por
                                        COVID-19.</label>
                                    <input type="text" class="form-control quantidade" id="responsaveis"
                                           aria-describedby="responsaveisHelp" name="responsaveis"
                                           placeholder="Informe a quantidade" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="idosos">3 - Quantidade de servidores com 60 (sessenta) anos ou
                                        mais.</label>
                                    <input type="text" class="form-control quantidade" id="idosos"
                                           aria-describedby="idososHelp" name="idosos"
                                           placeholder="Informe a quantidade" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="imunodeficiente">4 - Quantidade de servidores imunodeficientes ou com
                                        doenças
                                        preexistentes crônicas ou graves.</label>
                                    <input type="text" class="form-control quantidade" id="imunodeficiente"
                                           aria-describedby="imunodeficienteHelp" name="imunodeficiente"
                                           placeholder="Informe a quantidade" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="gestantes">5 - Quantidade de servidoras gestantes ou lactantes.</label>
                                    <input type="text" class="form-control quantidade" id="gestantes"
                                           aria-describedby="gestantesHelp" name="gestantes"
                                           placeholder="Informe a quantidade" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="idade_escolar">6 - Quantidade de servidores com filhos em idade escolar
                                        ou
                                        inferiror
                                        e que necessitam de assistência.</label>
                                    <input type="text" class="form-control quantidade" id="idade_escolar"
                                           aria-describedby="idade_escolarHelp" name="idade_escolar"
                                           placeholder="Informe a quantidade" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="nao_presentes">7 - Quantidade de servidores não presentes por outras
                                        medidas
                                        de
                                        proteção para o enfrentamento da emergência de saúde pública decorrente do
                                        coronavírus
                                        (COVID-19).</label>
                                    <input type="text" class="form-control quantidade" id="nao_presentes"
                                           aria-describedby="nao_presentesHelp" name="nao_presentes"
                                           placeholder="Informe a quantidade" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <button class="btn btn-block btn-secondary">
                                    Cadastrar
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="espacobaixo10"></div>


            <div class="alert alert-simples">
                <div class="table-responsive">
                    <table id="usuario_table"
                           class="table table-sm table-hover table-bordered table-striped dataTable no-footer">
                        <thead>
                        <tr>
                            <th class="text-center">Nome</th>
                            <th class="text-center">Organização Militar</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Ações</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection


@section('myscript')

    <script>

        if ($('#status').val() == 'false') {
            $('.formulario').addClass('disable');
        } else {
            $('.formulario').removeClass('disable').addClass('enable');
        }

        $('#form_cadastrar_levantamento').validate({
            onkeyup: function (element) {
                $(element).valid();
            },
            errorClass: "error",
            rules: {
                confirmado: {
                    required: true,
                },
                responsaveis: {
                    required: true,
                },
                idosos: {
                    required: true,
                },
                imunodeficiente: {
                    required: true,
                },
                gestantes: {
                    required: true,
                },
                idade_escolar: {
                    required: true,
                },
                nao_presentes: {
                    required: true,
                },


            },
            messages: {
                confirmado: {
                    required: "Informe um valor",
                },
                responsaveis: {
                    required: "Informe um valor",
                },
                idosos: {
                    required: "Informe um valor",
                },
                imunodeficiente: {
                    required: "Informe um valor",
                },
                gestantes: {
                    required: "Informe um valor",
                },
                idade_escolar: {
                    required: "Informe um valor",
                },
                nao_presentes: {
                    required: "Informe um valor",
                },
            },
            submitHandler: function (form) {

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });
                $.ajax({
                    type: 'POST',
                    url: '/usuario/cadastra/levantamento',
                    data: $('#form_cadastrar_levantamento').serialize(),

                    success: function (data) {
                        console.log(data)
                        toastr.success('Levantamento cadastrado com sucesso!', 'Sucesso!', {timeOut: 3000});
                        //$('#formacao_table').DataTable().ajax.reload(null, false); //faz o reaload da view datatable mas mantem a pagina atual
                        $('#form_cadastrar_levantamento')[0].reset();

                    },
                    error: function (data) {
                        toastr.error('Não foi possível cadastrar!', 'Erro!', {timeOut: 3000});
                    }
                });
            }
        });

    </script>

@endsection
