<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id')->unique()->unsigned();
            $table->integer('roles_id')->unsigned()->nullable();
            $table->boolean('status')->default('1');
            $table->bigInteger('cedula')->nullable();
            $table->string('name1')->nullable();
            $table->string('name2')->nullable();
            $table->string('lastname1')->nullable();
            $table->string('lastname2')->nullable();
            $table->bigInteger('tlf')->nullable();
            $table->string('email')->nullable();
            $table->string('password')->nullable();

            $table->rememberToken();
            $table->timestamps();


            // Relation 28-11
            $table->foreign('roles_id')->references('id')->on('roles');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
