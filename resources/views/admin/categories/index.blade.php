@extends('admin.layout')

@section('content')
  <!-- Title -->
  <div class="row heading-bg">
    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
      <h5 class="txt-dark">Категории</h5>
    </div>
    <!-- Breadcrumb -->
    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
      <ol class="breadcrumb">
        <li><a href="index.html">Dashboard</a></li>
        <li><a href="#"><span>speciality pages</span></a></li>
        <li class="active"><span>Категории</span></li>
      </ol>
    </div>
    <!-- /Breadcrumb -->
  </div>
  <!-- /Title -->

  <!-- Row -->
  <div class="row">
    <div class="col-sm-12">
      <div class="panel panel-default card-view">
        <div class="panel-heading">
          <div class="pull-left">
            <h6 class="panel-title txt-dark">Листинг категории</h6>
          </div>
          <div class="clearfix"></div>
            <a href="{{route('categories.create')}}" class="btn  btn-success btn-sm btn-rounded btn-icon left-icon mt-40 ml-20"><i class="fas fa-plus pr-20"></i> <span>Добавить</span></a>
        </div>
        <div class="panel-wrapper collapse in">
          <div class="panel-body">
            <div class="table-wrap">
              <div class="table-responsive">
                <table id="datable_1" class="table table-hover display  pb-30" >
                  <thead>
                    <tr>
                      <th style="width: 6%">ID</th>
                      <th>Названия</th>
                      <th style="width: 20%">Дата создания</th>
                      <th style="width: 10%">Действие</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>ID</th>
                      <th>Названия</th>
                      <th>Дата создания</th>
                      <th>Действие</th>
                    </tr>
                  </tfoot>
                  <tbody>
                    @foreach($categories as $category)
                      <tr>
                        <td>{{$category->id}}</td>
                        <td>{{$category->title}}</td>
                        <td>{{$category->created_at}}</td>

                        <td style="white-space: nowrap">
                          <a href="{{route('categories.edit', $category->id)}}" data-toggle="tooltip" data-original-title="Изменить"><button class="btn btn-primary btn-icon-anim btn-square"><i class="fas fa-pencil-alt"></i></button></a>
                          {{Form::open(['route' => ['categories.destroy', $category->id], 'method' => 'delete', 'style' => 'display:inline-block'])}}
                            <button onclick="return confirm('Вы уверены что хотите удалить категорию?')" type="submit"  data-toggle="tooltip" data-original-title="Удалить" class=" btn btn-info btn-icon-anim btn-square"><i class="fas fa-trash-alt"></i></button>
                          {{Form::close()}}
                        </td>
                      </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /Row -->

@endsection