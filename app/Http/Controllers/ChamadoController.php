<?php

namespace App\Http\Controllers;

use App\Models\Chamado;
use App\Models\Vendedor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ChamadoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $chamados = Chamado::get();
        //$vendedor = Vendedor::select('*')->orderBy('qtd_chamados_aberto')->first();
        //$menorVendedor = DB::table('vendedors')->select('id')->orderBy('qtd_chamados_aberto')->first();
        //$teste = count($chamados);
        // $menorVendedor = DB::table('vendedors')->select('*')->orderBy('qtd_chamados_aberto')->get();
        //$post = Vendedor::find(1);
        //dd($menorVendedor->qtd_chamados_aberto);
        return view('auth.home.index', compact('chamados'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('auth.home.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $ticket_foreign = DB::table('vendedors')->select('*')->orderBy('qtd_chamados_aberto')->first();
        $ticket = Chamado::create([
            'assunto'               => $request->assunto,
            'descricao'             => $request->descricao,
            'data_criacao_chamado'  => $request->data_criacao_chamado,
            'status'                => $request->status,
            'vendedor_id'           => $ticket_foreign->id
            ]);
            $ticket_foreign->qtd_chamados_aberto +=1;
        
        return redirect()->route('home');
    }

    public function atenderChamado($id){
        $menorVendedor = DB::table('vendedors')->select('*')->orderBy('qtd_chamados_aberto')->first();
        $chamadoAberto = Chamado::find($id);

        if($chamadoAberto->status == "aberto"){
           $chamadoAberto->status = "andamento";

           $menorVendedor->qtd_chamados_aberto = $menorVendedor->qtd_chamados_aberto -= 1;
           $menorVendedor->qtd_chamados_andamentos = $menorVendedor->qtd_chamados_andamentos += 1;
           $chamadoAberto->update();
        }else{
            return redirect()->back();
        }
        
        return redirect()->route('home');        
    }

    public function resolverChamado($id){

        $menorVendedor = DB::table('vendedors')->select('id')->orderBy('qtd_chamados_andamentos')->first();
        $chamadoAndamento = Chamado::find($id);

        if( $chamadoAndamento->status == "andamento" ){
            $chamadoAndamento->status = "resolvido";

            $menorVendedor->qtd_chamados_andamentos -= 1;
            $menorVendedor->qtd_chamados_resolvidos += 1;
            $chamadoAndamento->update();
        }else{
            return redirect()->back();
        }
        return redirect()->route('home');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $result = Chamado::find($id);
       return view('home.show', compact('result'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
