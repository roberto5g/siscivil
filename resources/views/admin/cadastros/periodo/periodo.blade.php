@extends('admin.layout.master')
@section('content')
    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="text-center">
                <div class="alert alert-simples">
                    <h3><i class="fa fa-clock-o"></i> <span class="audiowide">Gerenciamento de Períodos</span>
                    </h3>
                </div>
            </div>

            {{--formulario--}}
            <div class="row">
                {{-- formulario --}}
                <div class="col-md-4">
                    <form id="form_novo_peiriodo" method="post">
                        <div class="alert alert-simples">

                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="inicio">Data de Início</label>
                                        <input type="date" class="form-control " id="inicio"
                                               aria-describedby="nomeHelp" name="inicio"
                                               placeholder="Insira a data de início" required>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="fim">Data de Fim</label>
                                        <input type="date" class="form-control " id="fim"
                                               aria-describedby="nomeHelp" name="fim"
                                               placeholder="Insira a data de fim" required>
                                        <small class="form-text text-muted"> <i>A data de fim deve ser informada sempre adicionando um dia a mais.
                                            Ex: se o período termina em 29/04/2020 uma quarta-feira você deverá informar a data com um dia a mais 30/04/2020 quinta-feira.
                                            </i></small>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <button type="submit" class="btn btn-block btn-secondary">
                                        Cadastrar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                {{-- tabela --}}
                <div class="col">
                    <div class="alert alert-simples">
                        <div class="table-responsive">
                            <table id="periodo_table" class="table table-sm table-hover table-bordered table-striped dataTable no-footer">
                                <thead>
                                <tr>
                                    <th class="text-center">Data Início</th>
                                    <th class="text-center">Data Fim</th>
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
        </div>
    </div>

    {{--Modal de editar--}}
    <div class="modal fade" id="ModalEdita" role="dialog"
         aria-labelledby="ModalEditaTitle" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalEditaTitle">Edição de Períodos</h5>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                {{--modal body--}}
                <div class="modal-body">


                    <form id="form_edita_periodo" method="post">
                        <div class="alert alert-simples">
                            <input type="hidden" id="periodo_id">
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="inicio_edita">Data de Início</label>
                                        <input type="date" class="form-control " id="inicio_edita"
                                               aria-describedby="inicioHelp" name="inicio"
                                               placeholder="Insira a data de início" required>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="fim_edita">Data de Fim</label>
                                        <input type="date" class="form-control " id="fim_edita"
                                               aria-describedby="nomeHelp" name="fim"
                                               placeholder="Insira a data de fim" required>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <button class="btn btn-outline-secondary btn-block" data-dismiss="modal">
                                        Cancelar
                                    </button>
                                </div>
                                <div class="col">
                                    <button type="submit" class="btn btn-block btn-secondary">
                                        Editar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>



@endsection
@section('myscript')

    <script>

        $(document).ready(function () {
            // necessário para o funcionamento do select
            $('.form_select2').select2({
                theme: 'bootstrap4',
                width: 'style',
            });


            $('.modal').on('hidden.bs.modal', function () {
                $('input').each(function () {
                    $(this).not('[name=_token]').val('');
                    $(this).removeClass('error');
                });
                $('.error').each(function () {
                    $(this).removeClass('error').addClass('disable');
                })

            })

        })

        $('#periodo_table').DataTable({
            "processing": true,
            "serverSide": true,
            "autoWidth": false,
            "ajax": "/admin/gerencia/lista/periodo/getdata",
            'order': [0, 'desc'],
            'columnDefs': [
                {
                    "targets": [0, 1,2], // your case first column
                    "className": "text-center",
                },
                {
                    "width": "45%", "targets": 0
                },
                {
                    "width": "45%", "targets": 1
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
                    "width": "10%", "targets": 2
                },
                {
                    "targets": 2,
                    "orderable": false
                },
            ],
            "columns": [
                {"data": "inicio"},
                {"data": "fim"},
                {"data": "action"},
            ]
        });



        $('#form_novo_peiriodo').validate({
            onkeyup: function (element) {
                $(element).valid();
            },
            errorClass: "error",
            rules: {
                inicio: {
                    required: true,
                },
                fim: {
                    required: true,
                },
            },
            messages: {
                inicio: {
                    required: "Por favor, informe a data de início.",
                },
                fim: {
                    required: "Por favor, informe a data de fim.",
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
                    url: '/admin/gerencia/cadastro/periodo',
                    data: $('#form_novo_peiriodo').serialize(),

                    success: function (data) {

                        console.log(data)
                        toastr.success('Período cadastrado com sucesso!', 'Sucesso!', {timeOut: 3000});
                        $('#periodo_table').DataTable().ajax.reload(null, false); //faz o reaload da view datatable mas mantem a pagina atual

                        $('input').each(function () {
                            $(this).not('[name=_token]').val('');
                            $(this).removeClass('error');
                        });
                        $('.error').each(function () {
                            $(this).removeClass('error').addClass('disable');
                        })

                    },
                    error: function (data) {
                        toastr.error('Não foi possível cadastrar período!', 'Erro!', {timeOut: 3000});
                    }
                });
            }
        });

        // edita organização militar
        function editaPeriodo(id) {
            $('#ModalEdita').modal('show');
            $('#periodo_id').val(id);

            $('#inicio_edita').val($('#edita_'+id).data('inicio'));
            $('#fim_edita').val($('#edita_'+id).data('fim'));
        }

        // form de editar organização militar

        $('#form_edita_periodo').validate({
            onkeyup: function (element) {
                $(element).valid();
            },
            errorClass: "error",
            rules: {
                inicio: {
                    required: true,
                },
                fim: {
                    required: true,
                },
            },
            messages: {
                inicio: {
                    required: "Por favor, informe a data de início.",
                },
                fim: {
                    required: "Por favor, informe a data de fim.",
                },

            },
            submitHandler: function (form) {

                let periodo_id = $('#periodo_id').val();
                $.ajaxSetup({
                    headers: {

                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')

                    }
                });
                $.ajax({
                    type: 'POST',
                    url: '/admin/gerencia/edita/periodo/'+periodo_id,
                    data: $('#form_edita_periodo').serialize(),

                    success: function (data) {

                        toastr.success('Período editado com sucesso!', 'Sucesso!', {timeOut: 3000});
                        $('#periodo_table').DataTable().ajax.reload(null, false); //faz o reaload da view datatable mas mantem a pagina atual
                        $('#form_edita_periodo')[0].reset();

                        $('#inicio_edita-error').removeClass('error').addClass('disable');
                        $('#fim_edita').removeClass('error');

                        $('.modal').modal('hide');
                    },
                    error: function (data) {
                        toastr.error('Não foi possível editar!', 'Erro!', {timeOut: 3000});
                    }
                });
            }
        })


        $(document).on('click', '.remover_om', function () {
            $('.om_nome').text($(this).data('nome'));

            $('#ModalInativaOrganizacaoMilitar').modal('show');
            $('.botao_remove').attr('onClick', 'remover(' + $(this).data('id') + ');');
        });

        function remover(id) {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            $.ajax({
                type: 'post',
                url: '/admin/gerencia/remove/om/' + id,
                success: function (data) {
                    // alert de sucesso
                    toastr.success('Om removida com sucesso!', 'Sucesso!', {timeOut: 3000});
                    $('#om_table').DataTable().ajax.reload(null, false); //faz o reaload da view datatable mas mantem a pagina atual
                    $('.modal').modal('hide');
                },
                error: function (data) {
                    toastr.error('Não foi possível inativar Região Miltiar!', 'Erro!', {timeOut: 3000});
                }
            });
        }

    </script>
@endsection
