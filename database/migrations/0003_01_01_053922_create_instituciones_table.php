<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInstitucionesTable extends Migration
{
    public function up()
    {
        Schema::create('instituciones', function (Blueprint $table) {
            $table->increments('id')->unique()->unsigned();
            $table->Integer ('estado_id')->nullable()->unsigned();
            $table->boolean('status')->default('1');
            $table->string('acronimo',128)->nullable();
            $table->string('name',256)->required();
            $table->string('_rif')->default('G');
            $table->bigInteger('rif')->required()->unique();
            $table->string('naturaleza',128)->nullable();
            $table->string('jerarquia',128)->nullable();//LUGAR QUE OCUPA LA INSTITUCIÓN EN LA ESTRUCTURA DEL PODER PÚBLICO NACIONAL
            $table->string('email',256)->required()->unique();
            // $table->bigInteger('_tlf')->required();
            $table->bigInteger('tlfppal')->required();
            $table->bigInteger('tlfseg')->nullable();
            $table->longText('direccion')->nullable();
            $table->timestamps();

            // relacion
            $table->foreign('estado_id')->references('id')->on('estado');


        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('instituciones');
    }
}
