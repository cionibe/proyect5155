<?php

use Illuminate\Database\Seeder;

use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

// del modelo user
//    'name1', 'email', 'password','name2','lastname1','lastame2','cedula','tlf','cargo',

        $editor = User::create([
            'name1'     => 'editor',
            'cedula'    => '5757',
            'email'     => 'editor@siss.com',
            'password'  => bcrypt('asqw123')
        ]);

        $editor -> assignRole('gestor');

        $admin = User::create([
            'name1'     => 'root',
            'cedula'    => '131313',
            'email'     => 'root@siss.com',
            'password'  => bcrypt('asqw123')
        ]);

        $admin -> assignRole('root');

        $admin = User::create([
            'name1'     => 'supervisor',
            'cedula'    => '1234567',
            'email'     => 'invitado@siss.com',
            'password'  => bcrypt('1234567')
        ]);

        $admin -> assignRole('supervisor');


    }
}
