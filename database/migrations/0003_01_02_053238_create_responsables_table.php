<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateResponsablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('responsables', function (Blueprint $table) {
            $table->increments('id')->unique()->unsigned();
            $table->integer('institucion_id')->unsigned()->nullable();
            $table->boolean('status')->default('1');
            $table->bigInteger('cedula')->required()->unique();
            $table->string('cargo',128)->nullable();
            $table->string('dpto',128)->nullable();
            $table->string('name1',128)->required();
            $table->string('name2',128)->nullable();
            $table->string('lastname1',128)->required();
            $table->string('lastname2',128)->nullable();
            $table->bigInteger('tlf');
            $table->string('email_r')->unique();;
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
        Schema::dropIfExists('responsables');
    }
}
