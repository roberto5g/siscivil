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

            <div class="alert alert-success" id="aviso">
                <div class="row">
                    <div class="col">
                        <div class="text-center">
                            <h2><p>Você não possui levantamentos disponíveis para enviar.</p></h2>
                        </div>
                    </div>
                </div>
                @if($proximo)
                    <div class="row">
                        <div class="col">
                            <div class="text-left">
                                <p>Você poderá enviar novamente as informações
                                    de {{date('d/m/Y', strtotime($proximo->inicio))}}
                                    a {{date('d/m/Y',strtotime("-1 day", strtotime($proximo->fim)))}}</p>
                            </div>
                        </div>
                    </div>
                @endif
            </div>

            <div class="formulario">
                <form id="form_cadastrar_levantamento" action="/usuario/cadastra/levantamento" method="POST">
                    {{ csrf_field() }}
                    <input type="hidden" id="status" value="{{$status}}">
                    <input type="hidden" name="periodo" id="periodo" value="{{$periodo_atual}}">
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
                <div class="text-center">
                    <h6><i class="fa fa-book"></i>

                        <span class="audiowide">
                            Levantamentos enviados
                        </span></h6>
                </div>

                <div class="table-responsive">
                    <table id="levamtamento_table"
                           class="table table-sm table-hover table-bordered table-striped dataTable no-footer">
                        <thead>
                        <tr>
                            <th class="text-center">Período Inicial</th>
                            <th class="text-center">Período Final</th>
                            <th class="text-center">Ação</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="ModalDetalhe" tabindex="-1" role="dialog"
         aria-labelledby="ModalDetaleTitle" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalDetalheTitle">Detalhe Levantamento</h5>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                {{--modal body--}}
                <div class="modal-body">
                    <div class="alert alert-simples">

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="confirmado">1 - Quantidade de servidores com confirmação de diagnóstico
                                        de
                                        infecção por COVID-19.</label>
                                    <input type="text" class="form-control quantidade" id="confirmado_"
                                           readonly>
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
                                    <input type="text" class="form-control quantidade" id="responsaveis_"
                                           readonly>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="idosos">3 - Quantidade de servidores com 60 (sessenta) anos ou
                                        mais.</label>
                                    <input type="text" class="form-control quantidade" id="idosos_" readonly>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="imunodeficiente">4 - Quantidade de servidores imunodeficientes ou com
                                        doenças
                                        preexistentes crônicas ou graves.</label>
                                    <input type="text" class="form-control quantidade" id="imunodeficiente_" readonly>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="gestantes">5 - Quantidade de servidoras gestantes ou lactantes.</label>
                                    <input type="text" class="form-control quantidade" id="gestantes_" readonly>
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
                                    <input type="text" class="form-control quantidade" id="idade_escolar_" readonly>
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
                                    <input type="text" class="form-control quantidade" id="nao_presentes_" readonly>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <button class="btn btn-block btn-secondary" data-dismiss="modal">
                                    Fechar
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection


@section('myscript')

    <script>

        function detalhes(id) {
            $('#ModalDetalhe').modal('show');
            $('#confirmado_').val($('#detalhes_' + id).data('confirmado'));
            $('#responsaveis_').val($('#detalhes_' + id).data('responsaveis'));
            $('#idosos_').val($('#detalhes_' + id).data('idosos'));
            $('#imunodeficiente_').val($('#detalhes_' + id).data('imunodeficiente'));
            $('#gestantes_').val($('#detalhes_' + id).data('gestantes'));
            $('#idade_escolar_').val($('#detalhes_' + id).data('idade_escolar'));
            $('#nao_presentes_').val($('#detalhes_' + id).data('nao_presentes'));

        }

        $('#levamtamento_table').DataTable({
            "processing": true,
            "serverSide": true,
            "autoWidth": false,
            "ajax": "/usuario/lista/levantamento",
            'order': [0, 'desc'],
            'columnDefs': [
                {
                    "targets": [0, 1, 2], // your case first column
                    "className": "text-center",
                },
                {
                    "width": "45%", "targets": 0
                },
                {
                    "width": "45%", "targets": 1
                },
                {
                    "width": "10%", "targets": 2
                },
                {
                    "targets": 0, render: function (data) {
                        return moment(data).format('DD/MM/YYYY');
                    }
                },
                {
                    "targets": 1, render: function (data) {
                        return moment(data).format('DD/MM/YYYY');
                    }
                },
                {
                    "targets": [2],
                    "orderable": false
                },
            ],

            "columns": [
                {"data": "periodo.inicio"},
                {"data": "periodo.fim"},
                {"data": "action"},
            ]
        });

        if ($('#status').val() == 'false' || $('#periodo').val() == 0) {
            $('.formulario').addClass('disable');
            $('#aviso').addClass('enable');
        } else {
            $('.formulario').removeClass('disable').addClass('enable');
            $('#aviso').removeClass('enable').addClass('disable');
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
        });

    </script>

@endsection
