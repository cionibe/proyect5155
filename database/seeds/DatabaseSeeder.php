<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		$this->call(InstitucionesSeeder::class);
        $this->call(EstudiosSeeder::class);
        $this->call(RolesAndPermisions::class);
        $this->call(UsersTableSeeder::class);



        // $this->call(ProjectsTableSeeder::class);
        // $this->call(LevelsTableSeeder::class);

    }
}
