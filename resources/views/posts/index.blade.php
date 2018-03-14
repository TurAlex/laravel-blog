@extends('layout')

@section('content')

  @foreach($posts as $post)
    <!-- Blog Post Begins -->
    <article class="outer-blog-box pr pad-bottom-small">
      {{--<div class="blog-img blog-media"><img src="http://placehold.it/1920x1600" alt="images" /></div>--}}
      <div class="blog-captions">
        <h2 class="blog-title "><a href="/public/posts/{{$post->id}}">{{$post->title}}</a></h2>
        <ul class="below-blog-list">
          <li>
            <a href="javascript:void(0)"> <i class="fa fa-user-o" aria-hidden="true"></i>
              Dany Saha </a>
          </li>
          <li>
            <a href="javascript:void(0)"> <i class="fa fa-calendar-o"
                                             aria-hidden="true"></i> {{$post->created_at}} </a>
          </li>
          <li>
            <a href="javascript:void(0)"> <i class="fa fa-comment-o" aria-hidden="true"></i>
              3 Comment </a>
          </li>
          <li>
            <a href="javascript:void(0)"> <i class="fa fa-heart-o" aria-hidden="true"></i>
              Lifestyle </a>
          </li>
        </ul>
        <p>{{$post->intro}}</p>
        <div class="bottom-blog">
          <a href="javascript:void(0)" class="continue-read"> Continue Reading <i
                class="fa fa-angle-right" aria-hidden="true"></i> </a>
          <ul class="social">
            <li>
              <a href="javascript:void(0)"> <i class="fa fa-facebook"></i> </a>
            </li>
            <li>
              <a href="javascript:void(0)"> <i class="fa fa-twitter"></i> </a>
            </li>
            <li>
              <a href="javascript:void(0)"> <i class="fa fa-google-plus"></i> </a>
            </li>
            <li>
              <a href="javascript:void(0)"> <i class="fa fa-linkedin"></i> </a>
            </li>
          </ul>
        </div>
      </div>
    </article>
    <!-- Blog Post Ends -->
  @endforeach

  <!-- Blog Pagination Begins -->
  <div class="blog-pagination pad-bottom-small">
    <nav aria-label="Page navigation">
      <ul class="pagination">
        <li class="page-item"><a class="page-link" href="javascript:void(0)"><i
                class="fa fa-angle-left" aria-hidden="true"></i></a></li>
        <li class="page-item"><a class="page-link" href="javascript:void(0)">1</a></li>
        <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
        <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
        <li class="page-item"><a class="page-link" href="javascript:void(0)">4</a></li>
        <li class="page-item"><a class="page-link" href="javascript:void(0)">5</a></li>
        <li class="page-item"><a class="page-link" href="javascript:void(0)"><i
                class="fa fa-angle-right" aria-hidden="true"></i></a></li>
      </ul>
    </nav>
  </div>
  <!-- Blog Pagination Ends -->
@endsection