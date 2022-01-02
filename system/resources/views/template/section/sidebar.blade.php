@php

function checkrouteactive($route){
  if(Route::current()->uri == $route) return 'active';
}
@endphp
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar elevation-4" style="background:#ab8854; color: #ffffff">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="{{ url('public/dist/img/logo-kbmk1.png')}}" alt="Logo KBMK" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">KBMK | Admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ url('public/dist/img/avatar5.png')}}"class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="{{url('admin/beranda')}}" class="d-block">
            @if(Auth::check())
              {{request()->user()->username}}
            @else
              Silahkan Login
            @endif
          </a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->

          <li class="nav-item">
            <a href="{{url('admin')}}" class="nav-link {{checkrouteactive('admin')}}">
              <i class="nav-icon fas fa-home"></i>
              <p style="color: white; font-weight: bold;">
                Beranda
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="{{url('admin/kata')}}" class="nav-link {{checkrouteactive('admin/kata')}}">
              <i class="nav-icon fas fa-home"></i>
              <p style="color: white; font-weight: bold;">
                Data Kata
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{url('admin/idiom')}}" class="nav-link {{checkrouteactive('admin/idiom')}}">
              <i class="nav-icon fas fa-home"></i>
              <p style="color: white; font-weight: bold;">
                Data Idiom
              </p>
            </a>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>