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
                    <div class="alert alert-simples">
                        <div class="table-responsive">
                            <table id="prm_formacao_table"
                                   class="table table-sm table-hover table-bordered table-striped dataTable no-footer">
                                <thead>
                                <tr>
                                    <th class="text-center">OM</th>
                                    <th class="text-center">1 - Quantidade de servidores com confirmação de diagnóstico
                                        de
                                        infecção por COVID-19.
                                    </th>
                                    <th class="text-center">2 - Quantidade de servidores responsáveis pelo cuidado de
                                        uma ou
                                        mais pessoas com suspeita ou confirmação de diagnóstico de infecção por
                                        COVID-19.
                                    </th>
                                    <th class="text-center">3 - Quantidade de servidores com 60 (sessenta) anos ou
                                        mais.
                                    </th>
                                    <th class="text-center">4 - Quantidade de servidores imunodeficientes ou com doenças
                                        preexistentes crônicas ou graves.
                                    </th>
                                    <th class="text-center">5 - Quantidade de servidoras gestantes ou lactantes.</th>
                                    <th class="text-center">6 - Quantidade de servidores com filhos em idade escolar ou
                                        inferiror
                                        e que necessitam de assistência.
                                    </th>
                                    <th class="text-center">7 - Quantidade de servidores não presentes por outras
                                        medidas de
                                        proteção para o enfrentamento da emergência de saúde pública decorrente do
                                        coronavírus
                                        (COVID-19).
                                    </th>
                                    <th class="text-center">Total</th>
                                </tr>
                                </thead>
                                <tbody>

                                </tbody>

                            </table>

                        </div>
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
            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            })
            // page is now ready, initialize the calendar...
            $('#calendar').fullCalendar({
                // put your options and callbacks here
                //defaultView: 'agendaWeek',
                lang: 'pt-br',
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
                        @if ($periodo->fim)
                        end: '{{ $periodo->fim }}',
                        @endif
                        id: '{{$periodo->id}}',

                    },
                    @endforeach
                ],
                eventRender: function (event, element, view) {
                    console.log(event.end)
                    var ntoday = new Date().getTime();
                    var eventEnd = moment( event.end ).valueOf();
                    var eventStart = moment( event.start ).valueOf();
                    if (!event.end){
                        if (eventStart < ntoday){
                            console.log('<')
                            element.addClass("past-event");
                            element.children().addClass("past-event");
                        }
                    } else {
                        if (eventEnd < ntoday){
                            console.log('< <<')
                            console.log(event.id)
                            element.addClass("past-event");
                            element.children().addClass("past-event");
                        }
                    }
                },
                eventClick: function (info) {
                    console.log(info.id)
                    console.log(info)
                    $('#ModalLevantamentoEvento').modal('show');
                }
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
