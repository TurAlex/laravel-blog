@include('layouts.header')

<div class="container">

  @include('layouts.logo')

  @include('layouts.nav')

  @yield('top_widgets')

</div>

<main role="main" class="container">
  <div class="row">

    <div class="col-md-8 blog-main">
      @yield('content')
    </div>
    <aside class="col-md-4 blog-sidebar">
      @include('layouts.widgets.right')
    </aside><!-- /.blog-sidebar -->

  </div><!-- /.row -->

</main><!-- /.container -->

@include('layouts.footer')


