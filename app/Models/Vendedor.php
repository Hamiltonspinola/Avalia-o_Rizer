<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Vendedor extends Model
{
    use HasFactory;

    protected $table = 'vendedors';    

    public function chamado(){
        return $this->hasMany(Chamado::class);
    }

    protected $fillable = ['nome', 'email', 'telefone', 'status', 'qtd_chamados_abertos', 'qtd_chamados_andamento', 'qtd_chamados_resolvidos', 'qtd_chamados_atrasados'];
}
