<!DOCTYPE html>
<html lang="en">

@include('layouts.head')

<body id="mainBox" data-spy="scroll" data-target="#main-menu" data-offset="150">

<div class="blog-main">
  <div id="site-head">
      @include('layouts.header')
  </div>

  <div class="main">

    <!-- Content Section Begins -->
    <div id="main-content" class="content-box right-sidebar pad-top-big pr">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
            @yield('content')
          </div>
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <div class="sidebar pad-bottom-small">
            @include('layouts.right_widgets')
          </div>
          </div>
        </div>
      </div>
    </div>
      <!-- Content Section Ends -->

  @include('layouts.footer')

  </div>
</div>



@include('layouts.bottom_scripts')

</body>
</html>