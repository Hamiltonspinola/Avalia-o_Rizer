<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVendedorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vendedors', function (Blueprint $table) {
            $table->id();
            $table->string('nome');
            $table->string('email');
            $table->string('telefone');
            $table->enum('status', ['ativo', 'inativo'])->default('ativo');
            $table->integer('qtd_chamados_aberto')->default(0);
            $table->integer('qtd_chamados_andamentos')->default(0);
            $table->integer('qtd_chamdos_resolvidos')->default(0);
            $table->integer('qtd_chamados_atrasados')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vendedors');
    }
}
