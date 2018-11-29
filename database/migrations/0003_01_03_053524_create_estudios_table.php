<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEstudiosTable extends Migration
{
    public function up()
    {
        Schema::create('estudios', function (Blueprint $table) {
            $table->increments('id')->unique()->unsigned();
            $table->integer('institucion_id')->unsigned()->nullable();
            $table->boolean('status')->default('1');

            $table->date('fec_envio')->nullable();
            $table->date('fec_respuesta')->nullable();
            $table->bigInteger('num_entrega')->nullable();
            $table->bigInteger('num_oficio_siss')->nullable();
            $table->bigInteger('num_exp_supervision')->nullable();

            $table->boolean('cot_tesoro')->default('0');
            $table->boolean('cot_banavih')->default('0');
            $table->boolean('cot_ivss')->default('0');
            $table->decimal('aport_trabajador')->default('0');
            $table->decimal('aport_patron')->default('0');

            $table->integer('fijos_act')->nullable();
            $table->integer('contratados_act')->nullable();
            $table->integer('otros_act')->nullable();
            $table->integer('nomina_adic')->nullable();

            $table->integer('jubiladas')->nullable();
            $table->integer('jubilados')->nullable();
            $table->bigInteger('jubilados_bs_anual')->default('0');

            $table->integer('pensionadas_i')->nullable();
            $table->integer('pensionados_i')->nullable();
            $table->bigInteger('pensionados_i_bs_anual')->default('0');

            $table->integer('pensionadas_s')->nullable();
            $table->integer('pensionados_s')->nullable();
            $table->bigInteger('pensionados_s_bs_anual')->default('0');

//seguimiento
            $table->integer('fec_seguimiento')->nullable();
            $table->boolean('reg_especial')->default('0');
            $table->boolean('dec_1440')->default('0');
            $table->boolean('sin_regimen')->default('0');
            $table->boolean('ley_trabajo')->default('0');
            $table->boolean('con_colectivo')->default('0');
            $table->boolean('tod_beneficio')->default('0');
            $table->string('orig_recursos')->nullable();

            $table->boolean('doc_rif')->default('0');
            $table->boolean('doc_conv_colectiva')->default('0');
            $table->boolean('doc_acta_constitutiva')->default('0');
            $table->boolean('doc_resolucion')->default('0');
            $table->boolean('doc_decreto1440')->default('0');
            $table->string('doc_digital')->nullable();
            $table->string('doc_fisico')->nullable();

            $table->string('observaciones')->nullable();
            
            $table->timestamps();
            // Relation
            $table->foreign('institucion_id')->references('id')->on('instituciones');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('estudios');
    }
}
