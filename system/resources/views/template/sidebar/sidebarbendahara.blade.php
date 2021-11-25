@php

function checkrouteactive($route){
  if(Route::current()->uri == $route) return 'active';
}
@endphp
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="{{ url('public/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">SIDAFA</span>
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
            <a href="{{url('admin/dashboard')}}" class="nav-link {{checkrouteactive('admin/dashboard')}}">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Dasbor Santri Baru
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="{{url('admin/dashboardAlumni')}}" class="nav-link {{checkrouteactive('admin/dashboardAlumni')}}">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Dasbor Alumni
              </p>
            </a>
          </li>

          <li class="nav-item has-treeview ">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Data Santri 
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
            @if(request()->user()->level1 == 'putra')
              <li class="nav-item">
                <a href="{{url('admin/santri')}}" class="nav-link {{checkrouteactive('admin/putra')}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Putra</p>
                </a>
              </li>
            @elseif(request()->user()->level1 == 'putri')
              <li class="nav-item">
                <a href="{{url('admin/santri')}}" class="nav-link {{checkrouteactive('admin/putri')}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Putri</p>
                </a>
              </li>
            @endif
            </ul>
          </li>

<!-- spp -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-circle"></i>
              <p>
                SPP
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="{{url('admin/spp/filterPeriode')}}" class="nav-link {{checkrouteactive('admin/spp')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Data Master</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/spp/laporan')}}" class="nav-link {{checkrouteactive('admin/spp/laporan')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Laporan</p>
                    </a>
                  </li>
                  <hr>
                  
                  <li class="nav-item">
                    <a href="{{url('admin')}}/<?php setlocale (LC_TIME, 'id_ID');$date = strftime ('%B',time());$lower = strtolower($date);echo $lower;?>" 
                      class="nav-link {{checkrouteactive('admin')}}/<?php setlocale (LC_TIME, 'id_ID');$date = strftime ('%B',time());$lower = strtolower($date);echo $lower;?>">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>QUICK ACCESS-
                        <?php setlocale (LC_TIME, 'id_ID');$date = strftime ('%B',time());$lower = strtolower($date);echo $lower;?>
                      </p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/januari')}}" class="nav-link {{checkrouteactive('admin/januari')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Januari</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/februari')}}" class="nav-link {{checkrouteactive('admin/februari')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Februari</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/maret')}}" class="nav-link {{checkrouteactive('admin/maret')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Maret</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/april')}}" class="nav-link {{checkrouteactive('admin/april')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>April</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/mei')}}" class="nav-link {{checkrouteactive('admin/mei')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Mei</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/juni')}}" class="nav-link {{checkrouteactive('admin/juni')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Juni</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/juli')}}" class="nav-link {{checkrouteactive('admin/juli')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Juli</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/agustus')}}" class="nav-link {{checkrouteactive('admin/agustus')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Agustus</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/september')}}" class="nav-link {{checkrouteactive('admin/september')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>September</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/oktober')}}" class="nav-link {{checkrouteactive('admin/oktober')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Oktober</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/november')}}" class="nav-link {{checkrouteactive('admin/november')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>November</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/desember')}}" class="nav-link {{checkrouteactive('admin/desember')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Desember</p>
                    </a>
                  </li>
            </ul>
          </li>
<!-- /spp -->

<!-- ASB PONDOK -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link {{checkrouteactive('admin/administrasisantribaru')}} {{checkrouteactive('admin/lemari')}}">
              <i class="nav-icon fas fa-circle"></i>
              <p>
                ASB PONDOK
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="{{url('admin/administrasisantribaru')}}" class="nav-link {{checkrouteactive('admin/administrasisantribaru')}} {{checkrouteactive('admin/ip')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Data Master</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/ip')}}" class="nav-link {{checkrouteactive('admin/ip')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Infaq Pembangunan</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/lemari')}}" class="nav-link {{checkrouteactive('admin/lemari')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Lemari</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{url('admin/404')}}" class="nav-link {{checkrouteactive('admin/404')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Al-Qur'an</p>
                    </a>
                  </li>
            </ul>
          </li>
<!-- /ASB PONDOK -->

<!-- ASB FORMAL -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link {{checkrouteactive('admin/formal')}} {{checkrouteactive('admin/seragam')}}">
              <i class="nav-icon fas fa-circle"></i>
              <p>
                ASB FORMAL
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="{{url('admin/formal')}}" class="nav-link {{checkrouteactive('admin/formal')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Data Master</p>
                    </a>
                  </li>
                  <li class="nav-item has-treeview">
                    <a href="#" class="nav-link {{checkrouteactive('admin/seragam/smp')}}{{checkrouteactive('admin/seragam/sma')}}{{checkrouteactive('admin/seragam/smk')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Seragam
                        <i class="right fas fa-angle-left"></i>
                      </p>
                    </a>
                    <ul class="nav nav-treeview">
                      <li class="nav-item">
                        <a href="{{url('admin/seragam')}}" class="nav-link {{checkrouteactive('admin/seragam')}}">
                          <i class="far fa-circle nav-icon"></i>
                          <p>Seragam</p>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a href="{{url('admin/seragam/smp')}}" class="nav-link {{checkrouteactive('admin/seragam/smp')}}">
                          <i class="far fa-circle nav-icon"></i>
                          <p>Seragam SMP</p>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a href="{{url('admin/seragam/sma')}}" class="nav-link {{checkrouteactive('admin/seragam/sma')}}">
                          <i class="far fa-circle nav-icon"></i>
                          <p>Seragam SMA</p>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a href="{{url('admin/seragam/smk')}}" class="nav-link {{checkrouteactive('admin/seragam/smk')}}">
                          <i class="far fa-circle nav-icon"></i>
                          <p>Seragam SMK</p>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="nav-item has-treeview">
                    <a href="#" class="nav-link {{checkrouteactive('admin/raport/smp')}}{{checkrouteactive('admin/raport/sma')}}{{checkrouteactive('admin/raport/smk')}}">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Raport
                        <i class="right fas fa-angle-left"></i>
                      </p>
                    </a>
                    <ul class="nav nav-treeview">
                      <li class="nav-item">
                        <a href="{{url('admin/raport')}}" class="nav-link {{checkrouteactive('admin/raport')}}">
                          <i class="far fa-circle nav-icon"></i>
                          <p>Raport</p>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a href="{{url('admin/raport/smp')}}" class="nav-link {{checkrouteactive('admin/raport/smp')}}">
                          <i class="far fa-circle nav-icon"></i>
                          <p>Raport SMP</p>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a href="{{url('admin/raport/sma')}}" class="nav-link {{checkrouteactive('admin/raport/sma')}}">
                          <i class="far fa-circle nav-icon"></i>
                          <p>Raport SMA</p>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a href="{{url('admin/raport/smk')}}" class="nav-link {{checkrouteactive('admin/raport/smk')}}">
                          <i class="far fa-circle nav-icon"></i>
                          <p>Raport SMK</p>
                        </a>
                      </li>
                    </ul>
                  </li>
            </ul>
          </li>
<!-- /ASB FORMAL -->

<!-- penerimaan santri -->
<li class="nav-item">
  <a href="{{url('admin/pendaftaran')}}" class="nav-link {{checkrouteactive('admin/pendaftaran')}}">
    <i class="nav-icon fas fa-circle"></i>
    <p>Pendaftaran santri</p>
  </a>
</li>
<!-- /penerimaan santri -->

<!-- alumni -->
<li class="nav-item">
  <a href="{{url('admin/alumni')}}" class="nav-link {{checkrouteactive('admin/alumni')}}">
    <i class="nav-icon fas fa-circle"></i>
    <p>Alumni</p>
  </a>
</li>
<!-- /alumni -->

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>