@extends('adminlte::page')

@section('content')
@foreach($chamados as $chamado)

<p>{{ $chamado->assunto }}</p>
<p>{{ $chamado->descricao }}</p>
<p>{{ $chamado->vendedor_id }}</p>
<p>{{ $chamado->status }}</p>
<a href="{{ route('atender.chamado', $chamado->id) }}"><button>Atender Chamado</button></a>
<a href="{{ route('resolver.chamado', $chamado->id) }}"><button>Resolver Chamado</button></a>
<hr>

@endforeach

<a href="{{ route('home.create') }}">Abrir Chamado</a>
@stop




