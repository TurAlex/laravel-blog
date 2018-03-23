@extends('admin.layout')

@section('content')
  <!-- Title -->
  <div class="row heading-bg">
    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
      <h5 class="txt-dark">Коментарии</h5>
    </div>
    <!-- Breadcrumb -->
    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
      <ol class="breadcrumb">
        <li><a href="#">Dashboard</a></li>
        <li class="active"><span>Коментарии</span></li>
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
            <h6 class="panel-title txt-dark">Листинг коментариев</h6>
          </div>
          <div class="clearfix"></div>
            <a href="{{route('comments.create')}}" class="btn  btn-success btn-sm btn-rounded btn-icon left-icon mt-40 ml-20"><i class="fas fa-plus pr-20"></i> <span>Добавить коментарий</span></a>
        </div>
        <div class="panel-wrapper collapse in">
          <div class="panel-body">
            <div class="table-wrap">
              <div class="table-responsive">
                <table id="datable_1" class="table table-hover display  pb-30" >
                  <thead>
                    <tr>
                      <th style="width: 6%">ID</th>
                      <th style="width: 8%">Post ID</th>
                      <th style="width: 10%">Author ID</th>
                      <th>Текст</th>
                      <th style="width: 15%">Дата</th>
                      <th style="width: 15%">Действие</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>ID</th>
                      <th>Post ID</th>
                      <th>Author ID</th>
                      <th>Текст</th>
                      <th>Дата</th>
                      <th>Действие</th>
                    </tr>
                  </tfoot>
                  <tbody>
                    @foreach($comments as $comment)
                      <tr>
                        <td>{{$comment->id}}</td>
                        <td>{{$comment->post_id}}</td>
                        <td>{{$comment->author_id}}</td>
                        <td>{!! str_limit($comment->content,30)!!}</td>
                        <td>{{$comment->created_at}}</td>
                        <td style="white-space: nowrap">
                          @if($comment->status == 1)
                          <a href="/admin/comments/toggle/{{$comment->id}}" data-toggle="tooltip" data-original-title="Запретить"><button class="btn btn-danger btn-icon-anim btn-square"><i class="fas fa-lock"></i></button></a>

                          @else
                            <a href="/admin/comments/toggle/{{$comment->id}}" data-toggle="tooltip" data-original-title="Разрешить"><button class="btn btn-success btn-icon-anim btn-square"><i class="fas fa-lock-open"></i></button></a>

                          @endif
                          <a href="{{route('comments.edit', $comment->id)}}" data-toggle="tooltip" data-original-title="Изменить"><button class="btn btn-primary btn-icon-anim btn-square"><i class="fas fa-pencil-alt"></i></button></a>
                          {{Form::open(['route' => ['comments.destroy', $comment->id], 'method' => 'delete', 'style' => 'display:inline-block'])}}
                            <button onclick="return confirm('Вы уверены что хотите удалить коментарий?')" type="submit"  data-toggle="tooltip" data-original-title="Удалить" class=" btn btn-warning btn-icon-anim btn-square"><i class="fas fa-trash-alt"></i></button>
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