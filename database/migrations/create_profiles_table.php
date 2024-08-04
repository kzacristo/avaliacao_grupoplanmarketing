<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('profiles_licenca', function (Blueprint $table) {
            $table->increments('id')->start_from(1);
            $table->string('name');
            $table->integer('idlicenca');
            $table->timestamps();
        });

        // if(Schema::hasTable('profiles_licenca')){
        //     DB::table('profiles_licenca')->insert(
        //         array(
        //             'name' => 'systemAdmin',
        //             'idlicenca' => 1,                  
        //             'date_created' => date('Y-m-d'),                    
        //             'date_updated'  => date('Y-m-d')
        //         )
        //     );
        // }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('profiles');
    }
};
