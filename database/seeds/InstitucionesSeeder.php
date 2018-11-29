<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class InstitucionesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        DB::table('instituciones')->insert([
            'acronimo'=>'AMCEM',
            'name'=>'ALCALDÍA DEL MUNICIPIO CARIPE ESTADO MONAGAS',
            '_rif'=>'G',
            'rif'=>'200067667',
            'naturaleza'=>'politica',
            'jerarquia'=>'municipal',
            'email'=>'alcaldia1@alcaldia1.com',
            'tlfppal'=>'02925451638',
            'tlfseg'=>'04166853121',
            'direccion'=>'AV. ENRIQUE CATTUMER. EDIFICIO ALCALDÍA. MUNICIPIO CARIPE. EDO. MONAGAS',
        ]);
    	DB::table('instituciones')->insert([
            'acronimo'=>'ABMJTMEG',        
            'name'=>'ALCALDÍA BOLIVARIANA DEL MUNICIPIO JOSÉ TADEO MONAGAS ESTADO GUÁRICO',
            '_rif'=>'G',
            'rif'=>'99999999',
            'naturaleza'=>'politica',
            'jerarquia'=>'municipal',
            'email'=>'alcaldia2@alcaldia2.com',
            'tlfppal'=>'02381111111',
            'tlfseg'=>'0246000000',
            'direccion'=>'CALLE JULIÁN MELLADO CON CALLE JOSÉ MARTÍ, EDIF. JUNTA MUNICIPAL ALTAGRACIA DE ORITUCO',
        ]);
    	DB::table('instituciones')->insert([
            'acronimo'=>'CMMSET',
            'name'=>'CONCEJO MUNICIPAL MUNICIPIO SUCRE. ESTADO TÁCHIRA',
            '_rif'=>'G',
            'rif'=>'200090391',
            'naturaleza'=>'politica',
            'jerarquia'=>'municipal',
            'email'=>'alcaldia3@alcaldia3.com',
            'tlfppal'=>'04247289721',
            'tlfseg'=>'02772139094',
            'direccion'=>'CAPITAL QUENIQUEA. CALLE 2 CON CARRERA 2 Y 3. ALCALDÍA DE SUCRE, PISO 1',
         ]);	

    }
}
