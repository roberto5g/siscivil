@extends('admin.layout.master')
@section('content')
    <?php ini_set('memory_limit', '2048M'); ?>

    <div class="container-fluid">

        <div id="accordion">
            <div class="card">
                <div class="card-header" id="headingOne">
                    <div class="row">
                        <div class="col">
                        </div>
                        <div class="col-md-10 text-center">
                            <h4>
                                <span class="audiowide">
                                            Levantamento do quantitativo de servidores não presentes - (COVID-19)
                                        </span>
                            </h4>
                        </div>
                        <div class="col">
                            <h5 class="text-right">
                                <a href="#" id="fechar" class="badge badge-success">
                                    Fechar
                                </a>
                                <a href="#" id="abrir" class="badge badge-success disable">
                                    Abrir
                                </a>

                            </h5>
                        </div>
                    </div>
                </div>

                <div class="card-body" id="card_tabela">
                    <div class="row">
                        <div class="col">
                            <div id="calendar"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">

                </div>
            </div>

        </div>

    </div>

    <div class="modal fade" id="ModalLevantamentoEvento" tabindex="-1" role="dialog"
         aria-labelledby="ModalLevantamentoEvantoTitle" aria-hidden="true">
        <div class="modal-dialog modal-xg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLevantamentoEvantoTitle">Levantamento do quantitativo de servidores
                        não presentes em local de trabalho - (COVID - 19)</h5>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                {{--modal body--}}
                <div class="modal-body">
                    <div class="table-responsive">
                        <table id="prm_formacao_table"
                               class="table table-sm table-hover table-bordered table-striped no-footer">
                            <thead>
                            <tr>
                                <th class="text-center alinha" style="width:12%;">OM</th>
                                <th class="text-center alinha" style="width:12%;">1 - Quantidade de servidores com confirmação
                                    de diagnóstico
                                    de
                                    infecção por COVID-19.
                                </th>
                                <th class="text-center alinha" style="width:12%;">2 - Quantidade de servidores responsáveis
                                    pelo cuidado de
                                    uma ou
                                    mais pessoas com suspeita ou confirmação de diagnóstico de infecção por
                                    COVID-19.
                                </th>
                                <th class="text-center alinha" style="width:12%;">3 - Quantidade de servidores com 60 (sessenta)
                                    anos ou
                                    mais.
                                </th>
                                <th class="text-center alinha" style="width:12%;">4 - Quantidade de servidores
                                    imunodeficientes ou com doenças
                                    preexistentes crônicas ou graves.
                                </th>
                                <th class="text-center alinha" style="width:12%;">5 - Quantidade de servidoras gestantes ou
                                    lactantes.
                                </th>
                                <th class="text-center alinha" style="width:12%;">6 - Quantidade de servidores com filhos
                                    em idade escolar ou
                                    inferiror
                                    e que necessitam de assistência.
                                </th>
                                <th class="text-center alinha" style="width:12%;">7 - Quantidade de servidores não
                                    presentes por outras
                                    medidas de
                                    proteção para o enfrentamento da emergência de saúde pública decorrente do
                                    coronavírus
                                    (COVID-19).
                                </th>
                                <th class="text-center table-danger alinha" style="width:12%;"><h5><b>Total</b></h5></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            /*$pergunta = new stdClass();
                            $pergunta->confirmado ='1 - Quantidade de servidores com confirmação de diagnóstico de infecção por COVID-19.';
                            $pergunta->responsaveis = '2 - Quantidade de servidores responsáveis pelo cuidado de uma ou mais pessoas com suspeita ou confirmação de diagnóstico de infecção por COVID-19.';
                            $pergunta->idosos = '3 - Quantidade de servidores com 60 (sessenta) anos ou mais.';
                            $pergunta->imunodeficiente = '4 - Quantidade de servidores imunodeficientes ou com doenças preexistentes crônicas ou graves.';
                            $pergunta->gestantes = '5 - Quantidade de servidoras gestantes ou lactantes.';
                            $pergunta->idade_escolar = '6 - Quantidade de servidores com filhos em idade escolar ou inferiror e que necessitam de assistência.';
                            $pergunta->nao_presentes = '7 - Quantidade de servidores não presentes por outras medidas de proteção para o enfrentamento da emergência de saúde pública decorrente do coronavírus (COVID-19).';*/

                            //$pergunta = json_encode($pergunta);
                            //$perguntas = ['confirmado', 'responsaveis', 'idosos', 'imunodeficiente', 'gestantes', 'idade_escolar', 'nao_presentes'];
                            ?>

                            @for($i = 0; $i < count($oms); $i++)

                                <tr>
                                    <th scope="row" class=" alinha">{{$oms[$i]->sigla}}</th>
                                    <td scope="col" class="text-center tabela_valor alinha" id="confirmado_{{$oms[$i]->id}}"></td>
                                    <td scope="col" class="text-center tabela_valor alinha" id="responsaveis_{{$oms[$i]->id}}"></td>
                                    <td scope="col" class="text-center tabela_valor alinha" id="idosos_{{$oms[$i]->id}}"></td>
                                    <td scope="col" class="text-center tabela_valor alinha" id="imunodeficiente_{{$oms[$i]->id}}"></td>
                                    <td scope="col" class="text-center tabela_valor alinha" id="gestantes_{{$oms[$i]->id}}"></td>
                                    <td scope="col" class="text-center tabela_valor alinha" id="idade_escolar_{{$oms[$i]->id}}"></td>
                                    <td scope="col" class="text-center tabela_valor alinha" id="nao_presentes_{{$oms[$i]->id}}"></td>
                                    <td scope="col" class="text-center tabela_valor alinha table-danger" id="total_{{$oms[$i]->id}}" style="width:5%;"></td>
                                </tr>

                            @endfor
                            </tbody>
                            <tfoot>

                            <tr>
                                <th scope="row" class="table-danger text-center total"><h5><b>TOTAL</b></h5></th>
                                <th class="text-center tabela_valor table-danger alinha" id="confirmado_"></th>
                                <th class="text-center tabela_valor table-danger alinha" id="responsaveis_"></th>
                                <th class="text-center tabela_valor table-danger alinha" id="idosos_"></th>
                                <th class="text-center tabela_valor table-danger alinha" id="imunodeficiente_"></th>
                                <th class="text-center tabela_valor table-danger alinha" id="gestantes_"></th>
                                <th class="text-center tabela_valor table-danger alinha" id="idade_escolar_"></th>
                                <th class="text-center tabela_valor table-danger alinha" id="nao_presentes_"></th>
                                <th class="text-center tabela_valor table-danger alinha" id="total_"></th>

                            </tr>


                            </tfoot>
                        </table>

                    </div>
                    <div class="row">
                        <div class="col">
                            <button class="btn btn-secondary btn-block" data-dismiss="modal">
                                Fechar
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
                    <div class="alert alert-warning">
                        <div class="row">
                            <div class="col">
                                <div class="text-center">
                                    <p><b>Você poderá enviar novamente as informações
                                            de {{date('d/m/Y', strtotime($proximo->inicio))}}
                                            a {{date('d/m/Y',strtotime("-1 day", strtotime($proximo->fim)))}}</b></p>
                                </div>
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
                                    <input type="text" class="form-control quantidade" id="confirmado_detalhes"
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
                                    <input type="text" class="form-control quantidade" id="responsaveis_detalhes"
                                           readonly>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="idosos">3 - Quantidade de servidores com 60 (sessenta) anos ou
                                        mais.</label>
                                    <input type="text" class="form-control quantidade" id="idosos_detalhes" readonly>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="imunodeficiente">4 - Quantidade de servidores imunodeficientes ou com
                                        doenças
                                        preexistentes crônicas ou graves.</label>
                                    <input type="text" class="form-control quantidade" id="imunodeficiente_detalhes" readonly>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">

                                    <label for="gestantes">5 - Quantidade de servidoras gestantes ou lactantes.</label>
                                    <input type="text" class="form-control quantidade" id="gestantes_detalhes" readonly>
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
                                    <input type="text" class="form-control quantidade" id="idade_escolar_detalhes" readonly>
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
                                    <input type="text" class="form-control quantidade" id="nao_presentes_detalhes" readonly>
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
        $(document).ready(function () {
            //tabela_valor
            $('.modal').on('hidden.bs.modal', function () {
                $('.tabela_valor').each(function () {
                    $(this).text('');
                });
            })
            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            })
            // page is now ready, initialize the calendar...
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next,today',
                    center: 'title',
                    right: 'month',
                    allDay:true
                },
                //editable: true,
                eventColor: '#43a047',
                monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
                monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
                dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sabado'],
                dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'],
                events: [
                        @foreach($periodos as $periodo)
                    {
                        title: '{{ $periodo->descricao }}',
                        start: '{{ $periodo->inicio }}',

                        end: '{{ $periodo->fim }}',

                        id: '{{$periodo->id}}',

                    },
                    @endforeach
                ],
                eventRender: function (event, element, view) {
                    var ntoday = new Date().getTime();
                    var eventEnd = moment(event.end).valueOf();
                    var eventStart = moment(event.start).valueOf();
                    if (!event.end) {
                        if (eventStart < ntoday) {
                            element.addClass("past-event");
                            element.children().addClass("past-event");
                        }
                    } else {
                        if (eventEnd <= ntoday) {
                            element.addClass("past-event");
                            element.children().addClass("past-event");
                        }
                    }
                },
                eventClick: function (info) {

                    $.getJSON('/admin/gerencia/lista/periodo/' + info.id, function (data) {
                        //console.log(data)
                        //confirmado
                        for (var i = 0; i < data.length; i++) {
                            var confirmado = 0;
                            var responsaveis = 0;
                            var idosos = 0;
                            var imunodeficiente = 0;
                            var gestantes = 0;
                            var idade_escolar = 0;
                            var nao_presentes = 0;
                            var total = 0;
                            var total_geral = 0;
                            for (var j = 0; j < data[i].levantamentos.length; j++) {
                                total=(data[i].levantamentos[j].confirmado+
                                    data[i].levantamentos[j].responsaveis+
                                    data[i].levantamentos[j].idosos+
                                    data[i].levantamentos[j].imunodeficiente+
                                    data[i].levantamentos[j].gestantes+
                                    data[i].levantamentos[j].idade_escolar+
                                    data[i].levantamentos[j].nao_presentes);


                                confirmado += data[i].levantamentos[j].confirmado;
                                responsaveis += data[i].levantamentos[j].responsaveis;
                                idosos += data[i].levantamentos[j].idosos;
                                imunodeficiente += data[i].levantamentos[j].imunodeficiente;
                                gestantes += data[i].levantamentos[j].gestantes;
                                idade_escolar += data[i].levantamentos[j].idade_escolar;
                                nao_presentes += data[i].levantamentos[j].nao_presentes;

                                $('#confirmado_' + data[i].levantamentos[j].users.om.id).text(data[i].levantamentos[j].confirmado);
                                $('#responsaveis_' + data[i].levantamentos[j].users.om.id).text(data[i].levantamentos[j].responsaveis);
                                $('#idosos_' + data[i].levantamentos[j].users.om.id).text(data[i].levantamentos[j].idosos);
                                $('#imunodeficiente_' + data[i].levantamentos[j].users.om.id).text(data[i].levantamentos[j].imunodeficiente);
                                $('#gestantes_' + data[i].levantamentos[j].users.om.id).text(data[i].levantamentos[j].gestantes);
                                $('#idade_escolar_' + data[i].levantamentos[j].users.om.id).text(data[i].levantamentos[j].idade_escolar);
                                $('#nao_presentes_' + data[i].levantamentos[j].users.om.id).text(data[i].levantamentos[j].nao_presentes);

                                $('#total_'+data[i].levantamentos[j].users.om.id).text(total);
                                total_geral+=total;
                                total = 0;
                            }

                            $('#confirmado_').text(confirmado);
                            $('#responsaveis_').text(responsaveis);
                            $('#idosos_').text(idosos);
                            $('#imunodeficiente_').text(imunodeficiente);
                            $('#gestantes_').text(gestantes);
                            $('#idade_escolar_').text(idade_escolar);
                            $('#nao_presentes_').text(nao_presentes);
                            $('#total_').text(total_geral);
                            confirmado = 0;
                            responsaveis = 0;
                            idosos = 0;
                            imunodeficiente = 0;
                            gestantes = 0;
                            idade_escolar = 0;
                            nao_presentes = 0;
                            total_geral = 0;

                        }

                    });

                    $('#ModalLevantamentoEvento').modal('show');
                },

            });

            $('#fechar').on('click', function (e) {
                e.preventDefault();
                $('#card_tabela').fadeToggle();
                $('#fechar').addClass('disable')
                $('#abrir').removeClass('disable');
            })
            $('#abrir').on('click', function (e) {
                e.preventDefault();
                $('#card_tabela').fadeToggle();
                $('#abrir').addClass('disable');
                $('#fechar').removeClass('disable');
            })
        });

        function detalhes(id) {
            $('#ModalDetalhe').modal('show');
            $('#confirmado_detalhes').val($('#detalhes_' + id).data('confirmado'));
            $('#responsaveis_detalhes').val($('#detalhes_' + id).data('responsaveis'));
            $('#idosos_detalhes').val($('#detalhes_' + id).data('idosos'));
            $('#imunodeficiente_detalhes').val($('#detalhes_' + id).data('imunodeficiente'));
            $('#gestantes_detalhes').val($('#detalhes_' + id).data('gestantes'));
            $('#idade_escolar_detalhes').val($('#detalhes_' + id).data('idade_escolar'));
            $('#nao_presentes_detalhes').val($('#detalhes_' + id).data('nao_presentes'));
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
