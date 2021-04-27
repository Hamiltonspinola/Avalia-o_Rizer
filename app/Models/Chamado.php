<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Chamado extends Model
{
    use HasFactory;

    protected $table = 'chamados';
    
    public function vendedor(){
        return $this->hasOne(Vendedor::class);
    }
    
    protected $fillable = ['vendedor_id', 'assunto', 'descricao', 'data_criacao_chamado', 'status'];

}


