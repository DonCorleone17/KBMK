@if ((request()->user()->level1) == 'putra')
	@if ((request()->user()->level2) == 'superadmin')
    	@include('admin.template.sidebar.sidebarsuperadmin')
    @elseif ((request()->user()->level2) == 'bendahara')
    	@include('admin.template.sidebar.sidebarbendahara')
    @elseif ((request()->user()->level2) == 'pengabsen')
    	@include('admin.template.sidebar.sidebarpengabsen')
    @endif
@elseif((request()->user()->level1) == 'putri')
   	@if ((request()->user()->level2) == 'superadmin')
    	@include('admin.template.sidebar.sidebarsuperadmin')
    @elseif ((request()->user()->level2) == 'bendahara')
    	@include('admin.template.sidebar.sidebarbendahara')
    @elseif ((request()->user()->level2) == 'pengabsen')
    	@include('admin.template.sidebar.sidebarpengabsen')
    @endif
@elseif((request()->user()->level1) == 'pengasuh')
    @include('admin.template.sidebar.sidebarpengasuh')
@elseif((request()->user()->level1) == 'formal')
    @if ((request()->user()->level2) == 'smp' || (request()->user()->level2) == 'smk')
        @include('admin.template.sidebar.sidebarformal')
    @endif
@endif