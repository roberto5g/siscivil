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


    </script>

@endsection
