<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateParroquiaTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('parroquia', function(Blueprint $table)
		{
			$table->bigInteger('id', true);
			$table->string('nombre', 100);
			$table->bigInteger('municipio_id');
            // Relation
            $table->foreign('municipio_id')->references('id')->on('municipio');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('parroquia');
	}

}
