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
        Schema::create('licenses', function (Blueprint $table) {
            $table->increments('id')->strat_from(1);
            $table->string('name');
            $table->string('cnpj');
            $table->string('fantasy_name');
            $table->timestamps();
        });

        // if(Schema::hasTable('licenses')){
        //     DB::table('licenses')->insert(
        //         array(
        //             'name' => 'MACby',
        //             'cnpj' => '31.783.307/0001-30',
        //             'fantasy_name' => 'MAC.by',
        //             'date_created' => date('Y-m-d'),
        //         )
        //     );
        // }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('licenses');
    }
};
